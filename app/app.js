'use strict';

var app = angular.module('LeagueManager', ['ngRoute', 'ngSanitize', 'ngCkeditor']);

app.run(function (UserService) {
});

app.config(function ($routeProvider) {
	$routeProvider
      .when('/', { templateUrl: 'app/components/Start/Start.html' })
      .when('/History', { templateUrl: 'app/components/HSV/History.html' })
      .when('/Articles', { templateUrl: 'app/components/Article/Articles.html' })
      .when('/EditArticle/:articleId', { templateUrl: 'app/components/Article/EditArticle.html', controller: 'EditArticleCtrl' })
      .when('/DeleteArticle/:articleId', { template: 'Beitrag wird gel&ouml;scht...', controller: 'DeleteArticleCtrl' })
      .when('/Player/RankSaison', { templateUrl: 'app/components/Player/RankSaison.html' })
	  .when('/Player/RankHistory', { templateUrl: 'app/components/Player/RankHistory.html' })
      .when('/Player/Details/:playerId', { templateUrl: 'app/components/Player/Details.html', controller: 'PlayerDetailsCtrl' })
      .when('/Matches', { templateUrl: 'app/components/Match/Matches.html' })
      .when('/MatchDetails/:matchId', { templateUrl: 'app/components/Match/MatchDetails.html', controller: 'MatchDetailsCtrl' })
      .when('/Impressum', { templateUrl: 'app/components/HSV/Impressum.html' })
      .when('/Login', { templateUrl: 'app/components/Auth/Login.html', controller: 'LoginCtrl' })
      .when('/Logout', { templateUrl: 'app/components/Auth/Logout.html', controller: 'LogoutCtrl' })
      .otherwise({ redirectTo: '/' });
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

