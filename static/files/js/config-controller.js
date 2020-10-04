/* globals app,window */

app.controller("ConfigController", function($scope, $rootScope, storage, api) {
  $rootScope.config = $scope;
  $scope.edit = false;
  $scope.configOrderdKey = [
    "AutoStart",
    "EnableSeeding",
    "EnableUpload",
    "IncomingPort",
    "ObfsPreferred",
    "ObfsRequirePreferred",
    "DisableTrackers",
    "DisableIPv6",
    "SeedRatio",
    "UploadRate",
    "DownloadRate",
    "DownloadDirectory",
    "WatchDirectory",
    "TrackerListURL",
    "AlwaysAddTrackers",
    "RssURL"
  ];

  $scope.toggle = function(b) {
    $scope.edit = b === undefined ? !$scope.edit : b;
  };
  $scope.submitConfig = function() {
    $rootScope.info = null;
    $rootScope.err = null;
    var data = JSON.stringify($rootScope.state.Config);
    api.configure(data).success(function(data, status, headers, config){
      $scope.edit = false;
      $rootScope.info = `${data}: Config Saved`;
    });
  };
});
