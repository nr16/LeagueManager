'use strict';


var app = angular.module('HSVApp');
app.factory('SettingsService', function () {

    var service = {
        teamId: 3,
        backend: 'backend/data.php/',
        tablePrefix: 'lm_',
        backPrefix: 'backend/data.php/lm_',
        masterKey: 'MasterCtrl',
        GetMasterScope: function ($scope) {
            var work = $scope;
            while (work != null && work.$mykey != service.masterKey) {
                work = work.$parent;
            }

            return work;
        },
        GetFunctionUrl(fName) {
            return "backend/" + fName + ".php";
        }
    };

    return service;
});