'use strict';

var app = angular.module('HSVApp', ['ngRoute', 'ngSanitize', 'ngCkeditor']);

app.config(function($routeProvider) {
    $routeProvider
      .when('/', { templateUrl: 'start.html' })
      .when('/edit_article/:articleId', { templateUrl: 'edit_article.html', controller: 'ArticleEditCtrl' })
      .when('/Spieler', { templateUrl: 'Spieler.html' })
      .when('/SpielerDetails/:spielerId', { templateUrl: 'SpielerDetails.html', controller: 'SpielerDetailsCtrl' })
      .when('/about', { template: 'Über uns ...' })
      .otherwise({ redirectTo: '/'});
  });
  
app.controller('ArticlesCtrl', function($scope, $http) {
    $http.get('articles.json').then(function(articlesResponse) {
      $scope.articles = articlesResponse.data;
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


app.controller('SpielerCtrl', function($scope, $http) {
    $http.get('api.php/jos_fussball_spieler').then(function(spielerResponse) {
      $scope.spieler = php_crud_api_transform(spielerResponse.data)["jos_fussball_spieler"];
      $scope.predicate = 'anzahlTore';
      $scope.reverse = true;
      $scope.order = function(predicate) {
        $scope.reverse = ($scope.predicate === predicate) ? !$scope.reverse : false;
        $scope.predicate = predicate;
      }
    });
	});
  
app.controller('SpielerDetailsCtrl', ['$scope', '$routeParams', '$http', function($scope, $routeParams, $http) {
    $http.get('api.php/jos_fussball_spieler,jos_fussball_spieler_details?filter=id,eq,' + $routeParams.spielerId).then(function(spielerResponse) {
      $scope.spieler = php_crud_api_transform(spielerResponse.data)["jos_fussball_spieler"][0];
      $scope.spieler.details = $scope.spieler.jos_fussball_spieler_details[0];
    });
	}]);
  
 app.filter("imageName", [function() {
   return function(spielerName) {
     return spielerName.replace(" ", "_");
   }
 }]);