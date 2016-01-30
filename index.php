<?php

if (false)
{
  $dest['title'] = 'Holthausener Sportverein';
  $dest['team'] = 3;
  $dest['sites'] = array('History' => "Geschichte");
} 
else
{
  $dest['team'] = null;
  $dest['title'] = 'Hobbyliga Kreis Borken';
}
?>

<html ng-app="LeagueManager">
<head>
	<meta charset="utf8" />
	<title><?php echo $dest['title'] ?></title>
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="ng-ckeditor.css">
	<link rel="stylesheet" href="app.css">
</head>
<body>
	<div ng-controller="MasterCtrl">
		<div class="container">
			<h1 id="SiteTitle" class="well"><?php echo $dest['title'] ?></h1>
		</div>
		<div class="container">
			<div class="pull-right">
				<a href="#/Login" ng-cloak ng-show="currentUser == null">Login</a>
				<p ng-cloak ng-show="currentUser != null">{{currentUser.firstname}} {{currentUser.lastname}}</p>
				<a ng-cloak href="#/Logout" ng-show="currentUser != null">Logout</a>
			</div>

			<div class="well">
				<a href="#/">Start</a>
        <?php
        if (isset($dest['sites'])) {
          foreach ($dest['sites'] as $key => $value) {
            echo "| <a href=\"#/$key\">$value</a>";
          }
        }
        ?>
				| <a href="#/Matches">Spiele</a>
				| <a href="#/Player">Spieler</a>
				| <a href="#/Impressum">Impressum</a>
				| Saison
                <select ng-model="selectedSaisonId">
					<option ng-repeat="s in saisons" selected="{{s.isDefault}}" value="{{s.id}}">{{s.name}}</option>
				</select>

			</div>

			<div ng-view></div>

		</div>

	</div>
	<script src="php_crud_api_transform.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular-route.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular-sanitize.js"></script>
	<script src="ckeditor/ckeditor.js"></script>
	<script src="ng-ckeditor.min.js"></script>

	<script src="app.js"></script>
	<script src="filters.js"></script>
	<script src="services/UserService.js"></script>
	<script src="services/SettingsService.js"></script>
</body>
</html>
