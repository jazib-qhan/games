angular.module('gmaps.controllers').controller 'DashboardCtrl', ($scope, $window, GetDashboardDataZoned)->


  $scope.init = (id, last_timezone)->
    console.log("Dashboard")

  $window.onload = ->
    GetDashboardDataZoned.get().then (r)->
      console.log(r)


