angular.module('empower.factories').factory 'GetDashboardDataZoned',(railsResourceFactory, $http)->
  GetDashboardDataZoned = railsResourceFactory({
    url: '/home/index_localized?time_zone={{time_zone}}',
    name: 'set_timezone'
  })

  GetDashboardDataZoned
