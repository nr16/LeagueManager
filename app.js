'use strict';

angular.module('HSVApp', ['ngRoute'])
  .config(function($routeProvider) {
    $routeProvider
      .when('/', { templateUrl: 'start.html' })
      .when('/about', { template: 'Über uns ...' })
      .otherwise({ redirectTo: '/'});
  })
	.controller('ArticlesCtrl', function($scope, $sce) {
		$scope.articles = [
			{id: 1, title: "HSV ist Meister 2015", content: $sce.trustAsHtml("<p>blub <b><a href=\"http://www.google.de\">google</b></p>")},
			{id: 2, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 3, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 4, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 5, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 6, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 6, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 6, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")},
      {id: 7, title: "Letzes Spiel verschoben", content: $sce.trustAsHtml("<p>blub <b>bla</b></p>")}
		]
	});