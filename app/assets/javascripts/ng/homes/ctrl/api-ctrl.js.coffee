angular.module('gmaps.controllers').controller 'ApiCtrl', ($scope, $window)->

  $scope.init = () ->
    console.log("ApiCtrl")
    $scope.showApis = {challenge_apis: true, check_in_apis: true, check_ins_apis: true, contacts_apis: true, patient_activities_apis: true, patient_challenge_apis: true, questions_apis: true, quotes_apis: true, resource_details_apis: true, resources_apis: true, sessions_apis: true, stats_apis: true}

    $scope.redraw_footable()

  $scope.redraw_footable = () ->
    #fix the footable render error
    setTimeout (->
      $('.table').trigger 'footable_redraw'
      return
    ), 10

    $scope.api_type = () ->
      if $scope.apiSelect.length > 0
        $scope.showApis = {challenge_apis: false, check_in_apis: false, check_ins_apis: false, contacts_apis: false, patient_activities_apis: false, patient_challenge_apis: false, questions_apis: false, quotes_apis: false, resource_details_apis: false, resources_apis: false, sessions_apis: false, stats_apis: false}
        $scope.showApis[$scope.apiSelect] = true
      else
        $scope.showApis = {challenge_apis: true, check_in_apis: true, check_ins_apis: true, contacts_apis: true, patient_activities_apis: true, patient_challenge_apis: true, questions_apis: true, quotes_apis: true, resource_details_apis: true, resources_apis: true, sessions_apis: true, stats_apis: true}

    $scope.isVisible = (api) ->
      $scope.showApis[api] == true ? true : false
