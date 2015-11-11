'use strict';

var app = angular.module('HSVApp', ['ngRoute', 'ngSanitize', 'ngCkeditor']);

app.config(function($routeProvider) {
    $routeProvider
      .when('/', { templateUrl: 'start.html' })
      .when('/edit_article/:articleId', { templateUrl: 'edit_article.html', controller: 'ArticleEditCtrl' })
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