'use strict';

var app = angular.module('HSVApp', ['ngRoute', 'ngSanitize', 'ngCkeditor']);

app.run(function (UserService) {
});

app.config(function ($routeProvider) {
	$routeProvider
      .when('/', { templateUrl: 'views/Start.html' })
      .when('/History', { templateUrl: 'views/History.html' })
      .when('/Articles', { templateUrl: 'views/Articles.html' })
      .when('/EditArticle/:articleId', { templateUrl: 'views/EditArticle.html', controller: 'EditArticleCtrl' })
      .when('/Player', { templateUrl: 'views/Player.html' })
      .when('/PlayerDetails/:playerId', { templateUrl: 'views/PlayerDetails.html', controller: 'PlayerDetailsCtrl' })
      .when('/Matches', { templateUrl: 'views/Matches.html' })
      .when('/MatchDetails/:matchId', { templateUrl: 'views/MatchDetails.html', controller: 'MatchDetailsCtrl' })
      .when('/Impressum', { templateUrl: 'views/Impressum.html' })
      .when('/Login', { templateUrl: 'views/Login.html', controller: 'LoginCtrl' })
      .when('/Logout', { templateUrl: 'views/Logout.html', controller: 'LogoutCtrl' })
      .otherwise({ redirectTo: '/' });
});

app.filter("imageName", [function () {
	return function (playerObj) {
		if (playerObj == null)
			return "undefined";

		return (playerObj.firstname + "_" + playerObj.lastname).replace(" ", "_");
	}
}]);

app.controller('LogoutCtrl', function ($scope, $http, UserService) {
	UserService.logout();
});

app.controller('LoginCtrl', function ($scope, $location, $http, UserService) {
	$scope.login = function () {
		UserService.login($scope.vm.username, $scope.vm.password).then(function (resp) {
			$scope.message = resp.message;
			if (resp.result) {
				$location.path('/');
			}
		});

		return true;
	};
});

app.controller('MasterCtrl', function ($scope, $http, SettingsService) {
	$scope.$mykey = SettingsService.masterKey;
	$scope.saisons = null;
	$scope.selectedSaisonId = null;

	$http.get(SettingsService.backPrefix + 'saison')
        .then(function (matchResp) {
        	$scope.saisons = php_crud_api_transform(matchResp.data)[SettingsService.tablePrefix + "saison"];
        	for (var i = 0; i < $scope.saisons.length; i++) {
        		if ($scope.saisons[i].isDefault)
        			$scope.selectedSaisonId = $scope.saisons[i].id;
        	}

        });
});

app.controller('RankTableCtrl', function ($scope, $http, SettingsService) {

	var masterScope = SettingsService.GetMasterScope($scope);
	var loadTable = function () {
		$http.get(SettingsService.backPrefix + 'play_table?filter=id_saison,eq,' + masterScope.selectedSaisonId)

        .then(function (matchResp) {
        	$scope.place = php_crud_api_transform(matchResp.data)[SettingsService.tablePrefix + "play_table"];

        	for (var i = 0; i < $scope.place.length; i++) {
        		var m = $scope.place[i];

        		m.defeat = m.match_count - m.wins - m.stand_off;
        		m.points = m.wins * 3 + m.stand_off;
        		m.goal_diff = m.shoot - m.got;
        	}

        	$scope.place.sort(function (a, b) {
        		return b.points - a.points;
        	});

        	for (var i = 0; i < $scope.place.length; i++) {
        		var m = $scope.place[i];
        		m.rank = i + 1;
        	}

        	$scope.predicate = 'rank';
        	$scope.reverse = false;
        	$scope.order = function (predicate) {
        		$scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
        		$scope.predicate = predicate;
        	}
        });
	};
	masterScope.$watch('selectedSaisonId', loadTable);

	if (masterScope.selectedSaison != null) {
		loadTable();
	}
});


app.controller('MatchesCtrl', function ($scope, $http, SettingsService) {
	$http.get(SettingsService.backPrefix + 'matches?satisfy=any&filter[]=team1_id,eq,' + SettingsService.teamId + '&filter[]=team2_id,eq,' + SettingsService.teamId)

        .then(function (matchResp) {
        	$scope.matches = php_crud_api_transform(matchResp.data)[SettingsService.tablePrefix + "matches"];
        	$scope.predicate = 'date';
        	$scope.reverse = true;
        	$scope.order = function (predicate) {
        		$scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
        		$scope.predicate = predicate;
        	}
        });
});

app.controller('MatchDetailsCtrl', function ($scope, $routeParams, $http, SettingsService) {
	$http.get(SettingsService.backPrefix + 'matches?filter=id,eq,' + $routeParams.matchId).then(function (matchResp) {
		$scope.m = php_crud_api_transform(matchResp.data)[SettingsService.tablePrefix + 'matches'][0];
	});
});

app.controller('PlayerCtrl', function ($scope, $http, SettingsService) {
	$http.get(SettingsService.backPrefix + 'player?filter=id_team,eq,' + SettingsService.teamId).then(function (spielerResponse) {
		$scope.spieler = php_crud_api_transform(spielerResponse.data)[SettingsService.tablePrefix + "player"];
		$scope.predicate = 'count_goals';
		$scope.reverse = true;
		$scope.order = function (predicate) {
			$scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
			$scope.predicate = predicate;
		}
	});
});

app.controller('PlayerDetailsCtrl', function ($scope, $routeParams, $http, SettingsService) {
	$http.get(SettingsService.backPrefix + 'player/' + $routeParams.playerId).then(function (playerResp) {
		$scope.player = playerResp.data;
	});
});

app.controller('ArticlesCtrl', function ($scope, $http, SettingsService) {
	var tableName = 'article';
	$http.get(SettingsService.backPrefix + tableName).then(function (spielerResponse) {
		$scope.articles = php_crud_api_transform(spielerResponse.data)[SettingsService.tablePrefix + tableName];
	});
});

app.controller('EditArticleCtrl', function ($scope, $location, $routeParams, $http, SettingsService) {
	$scope.$on("ckeditor.ready", function (event) {
		$scope.isReady = true;
	});

	var url = SettingsService.backPrefix + 'article/' + $routeParams.articleId;

	$http.get(url).then(function (resp) {
		$scope.article = resp.data;
		$scope.title = resp.data.title;
		$scope.editorContent = resp.data.content;
	});

	$scope.save = function () {
		//$scope.article.title = $scope.title;
		if ($scope.frm.editor.$dirty) {
			$scope.article.content = $scope.editorContent;
		}

		return $http.put(url, $scope.article).then(function success(response) {

		}, function failed(response) {
			$scope.error = response.statusText + ": " + response.data;
		});
	}

	$scope.saveAndClose = function () {
		$scope.save().then(function () {
			$location.path('/');
		})
	}
});
