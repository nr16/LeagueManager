﻿<?php
require_once('backend/Config.inc.php');

$dest['table_prefix'] = $_ENV['table_prefix'];

if (false)
{
  $dest['title'] = 'Holthausener Sportverein';
  $dest['team_id'] = 3;
  $dest['sites'] = array('History' => "Geschichte");
} 
else
{
  $dest['title'] = 'Hobbyliga Kreis Borken';
}
?>

<html ng-app="LeagueManager">
<head>
	<meta charset="utf8" />
	<title><?php echo $dest['title'] ?></title>
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/libs/ng-ckeditor.css">
	<link rel="stylesheet" href="assets/css/app.css">
</head>
<body>
	<div>
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
                | <a href="#/Player/RankSaison">Torjäger</a>
				| <a href="#/Player/RankHistory">Ewige Liste</a>
				| <a href="#/Impressum">Impressum</a>
				| Saison
                <select ng-model="selectedSaisonId" ng-options="s.id as s.name for s in saisons">
				</select>

			</div>

			<div ng-view></div>

		</div>

	</div>
	<script src="assets/libs/php_crud_api_transform.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular-route.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.0/angular-sanitize.js"></script>
	<!-- <script src="assets/libs/ckeditor/ckeditor.js"></script> -->
	<script src="//cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
	<script src="assets/libs/ng-ckeditor.min.js"></script>

	<script src="app/app.js"></script>
	<script src="app/filters.js"></script>

    <!-- services -->
	<script src="app/services/UserService.js"></script>
	<script src="app/services/DataService.js"></script>
  
    <!-- components -->
    <script src="app/components/Article/ArticleController.js"></script>
    <script src="app/components/Auth/AuthController.js"></script>
    <script src="app/components/Match/MatchController.js"></script>
    <script src="app/components/Player/PlayerController.js"></script>
    <script src="app/components/Team/TeamController.js"></script>

  <script>
var app = angular.module('LeagueManager');
app.factory('SettingsService', function () {
    var tableP = '<?php echo $dest['table_prefix'] ?>';
  
    var service = {
	    teamId: <?php echo isset($dest['team_id']) ? $dest['team_id'] : 'null' ?>,
	    backend: 'backend/data.php/',
	    tablePrefix: tableP,
	    backPrefix: 'backend/data.php/' + tableP,
	    GetFunctionUrl(fName) {
		    return "backend/" + fName + ".php";
	    }
    };

    return service;
});
</script>

</body>
</html>
