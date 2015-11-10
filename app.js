'use strict';

var app = angular.module('HSVApp', ['ngRoute', 'ngSanitize']);

app.config(function($routeProvider) {
    $routeProvider
      .when('/', { templateUrl: 'start.html' })
      .when('/about', { template: 'Über uns ...' })
      .otherwise({ redirectTo: '/'});
  });
  
app.controller('ArticlesCtrl', function($scope, $http) {
    $http.get('articles.json').then(function(articlesResponse) {
      $scope.articles = articlesResponse.data;
    });
	});
  