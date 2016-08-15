app = angular.module('gmaps.controllers').controller 'HomeCtrl', ($scope, $window)->


  $scope.init = (id, last_timezone)->
    console.log("Home")


app.filter 'isEmpty', [ ->
  (object) ->
    angular.equals {}, object
 ]

app.filter 'isNull', [ ->
  (object) ->
    angular.equals null, object
 ]
