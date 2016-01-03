'use strict';

var app = angular.module('HSVApp', ['ngRoute', 'ngSanitize', 'ngCkeditor']);

var hsv_team_id = 3;
var backend = 'backend.php/';
var tablePrefix = 'lm_';
var backPrefix = backend + tablePrefix;

app.config(function($routeProvider) {
    $routeProvider
      .when('/', { templateUrl: 'views/Start.html' })
      .when('/History', { templateUrl: 'views/History.html' })
      .when('/Articles', { templateUrl: 'views/Articles.html' })
      .when('/edit_article/:articleId', { templateUrl: 'edit_article.html', controller: 'ArticleEditCtrl' })
      .when('/Player', { templateUrl: 'views/Player.html' })
      .when('/PlayerDetails/:playerId', { templateUrl: 'views/PlayerDetails.html', controller: 'PlayerDetailsCtrl' })
      .when('/Matches', { templateUrl: 'views/Matches.html' })
      .when('/MatchDetails/:matchId', { templateUrl: 'views/MatchDetails.html', controller: 'MatchDetailsCtrl' })
      .when('/Impressum', { templateUrl: 'views/Impressum.html' })
      .otherwise({ redirectTo: '/'});
  });
  
app.filter("imageName", [function() {
    return function (playerObj) {
        if (playerObj == null)
            return "undefined";

        return (playerObj.firstname + "_" + playerObj.lastname).replace(" ", "_");
    }
}]);


app.controller('MatchesCtrl', function ($scope, $http) {
    $http.get(backPrefix + 'matches?satisfy=any&filter[]=team1_id,eq,' + hsv_team_id + '&filter[]=team2_id,eq,' + hsv_team_id)
        
        .then(function (matchResp) {
            $scope.matches = php_crud_api_transform(matchResp.data)[tablePrefix + "matches"];
            $scope.predicate = 'date';
            $scope.reverse = true;
            $scope.order = function (predicate) {
                $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
                $scope.predicate = predicate;
        }
    });
});

app.controller('MatchDetailsCtrl', ['$scope', '$routeParams', '$http', function ($scope, $routeParams, $http) {
    $http.get(backPrefix + 'matches?filter=id,eq,' + $routeParams.matchId).then(function (matchResp) {
        $scope.m = php_crud_api_transform(matchResp.data)[tablePrefix + 'matches'][0];
    });
}]);

app.controller('PlayerCtrl', function($scope, $http) {
    $http.get(backPrefix + 'player?filter=id_team,eq,' + hsv_team_id).then(function (spielerResponse) {
        $scope.spieler = php_crud_api_transform(spielerResponse.data)[tablePrefix + "player"];
        $scope.predicate = 'count_goals';
        $scope.reverse = true;
        $scope.order = function(predicate) {
            $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
            $scope.predicate = predicate;
        }
    });
});

app.controller('PlayerDetailsCtrl', ['$scope', '$routeParams', '$http', function ($scope, $routeParams, $http) {
    $http.get(backPrefix + 'player/' + $routeParams.playerId).then(function(playerResp) {
        $scope.player = playerResp.data;
    });
}]);

app.controller('ArticlesCtrl', function ($scope, $http) {
    var tableName = 'article';
    $http.get(backPrefix + tableName).then(function (spielerResponse) {
        $scope.articles = php_crud_api_transform(spielerResponse.data)[tablePrefix + tableName];
    });
});
  
app.controller('ArticleEditCtrl', ['$scope', '$routeParams', function($scope, $routeParams) {
  $scope.$on("ckeditor.ready", function( event ) {
                $scope.isReady = true;
            });
  $scope.editorContent = '<p>Hello</p>\n' + $routeParams.articleId;
  
  //$scope.save = function() {
  //    $http.post('/examples/test.php', {
  //        content: $scope.test
  //    }).success(function() {
  //        alert('Saved');
  //    });
  //}
  
  $scope.save = function() {
      console.info($scope.editorContent, 'save');
  }
}]);
