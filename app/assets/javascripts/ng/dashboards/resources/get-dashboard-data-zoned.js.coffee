angular.module('gmaps.factories').factory 'GetDashboardDataZoned',(railsResourceFactory, $http)->
  GetDashboardDataZoned = railsResourceFactory({
    url: '/home.json',
    name: 'get_home'
  })

  GetDashboardDataZoned
