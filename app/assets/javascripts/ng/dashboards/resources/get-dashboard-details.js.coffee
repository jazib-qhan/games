angular.module('empower.factories').factory 'GetDashboardDetails',(railsResourceFactory, $http)->
  GetDashboardDetails = railsResourceFactory({
    url: '/admin/check_in_details/{{id}}.json?time_zone={{time_zone}}',
    name: 'get_check_in_details'
  })

  GetDashboardDetails
