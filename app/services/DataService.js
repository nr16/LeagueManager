'use strict';

var app = angular.module('LeagueManager');
app.factory('DataService', function ($q, $http, $rootScope, SettingsService) {
	var teams = null;
	var playersMap = null;
	var playersArr = null;

	var service = {
		getTeams: function() {
			if (teams == null) {
				var url = SettingsService.backPrefix + 'team';
				return $http.get(url).then(function (spielerResponse) {
					var teamsRaw = php_crud_api_transform(spielerResponse.data)[SettingsService.tablePrefix + "team"];
					teams = {};
					for (var i = 0; i < teamsRaw.length; i++)
					{
						teams[teamsRaw[i].id] = teamsRaw[i];
					}
					return teams;
				});
			}

			var directP = $q.defer();
			setTimeout(function () { directP.resolve(teams); }, 0);
			return directP;
		},
		getPlayer: function() {
			if (playersMap == null) {
				var url = SettingsService.backPrefix + 'player';
				if (SettingsService.teamId != null)
					url += '?filter=id_team,eq,' + SettingsService.teamId;

				var playerPromise = $http.get(url).then(function (spielerResponse) {
					return php_crud_api_transform(spielerResponse.data)[SettingsService.tablePrefix + "player"];
				});
				var teamPromise = service.getTeams();
				return $q.all([playerPromise, teamPromise]).then(function (results) {
					playersArr = results[0];
					playersMap = {};
					for (var i = 0; i < playersArr.length; i++) {
						var curPla = playersArr[i];
						curPla.team = teams[curPla.id_team];
						playersMap[curPla.id] = curPla;
					}
					return playersArr;
				});
			}

			var directP = $q.defer();
			setTimeout(function () { directP.resolve(players); }, 0);
			return directP;
		}
	};

	return service;
});