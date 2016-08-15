angular.module('gmaps.controllers').controller 'DashboardCtrl', ($scope, $window, GetDashboardDataZoned)->


  $scope.init = (id, last_timezone)->
    console.log("Dashboard")

  $window.onload = ->
    zone = document.getElementById("any-user-zone").textContent;
    params = {time_zone: zone}
    GetDashboardDataZoned.get(params).then (r)->
      document.getElementById("wait-load-patient").style.display = 'none';
      document.getElementById("dashboard-d").style.display = 'table-row-group';
      $scope.showLoader = false
      $scope.patients = r.patients
      console.log(r)


