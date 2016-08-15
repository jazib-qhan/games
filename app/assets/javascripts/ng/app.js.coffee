angular.module("gmaps.controllers", [])
angular.module("gmaps.services", ['ngCookies'])
angular.module("gmaps.factories", ['rails'])
angular.module("gmaps.providers", [])
angular.module("gmaps.widgets", [])
angular.module("gmaps.directives", [])
angular.module("gmaps.interceptors", [])
angular.module("gmaps.filters", [])

app = angular.module("gmaps",[
                                    "ui.bootstrap",
                                    "ui.bootstrap.modal",
                                    "ui.bootstrap.pagination",
                                    "ui.bootstrap.popover",
                                    'ui.bootstrap.tpls',
                                    'ng-sortable',
                                    'ui.footable',
                                    "gmaps.controllers",
                                    "gmaps.services",
                                    "gmaps.widgets",
                                    'gmaps.factories',
                                    'ngAnimate',
                                    'gmaps.directives',
                                    'templates',
                                    'angularUtils.directives.dirPagination',
                                    'angularMoment'])


app.config ($httpProvider, railsSerializerProvider, RailsResourceProvider) ->
  RailsResourceProvider.underscoreParams(true)
  railsSerializerProvider.underscore(angular.identity).camelize(angular.identity)

  token = $('meta[name=csrf-token]').attr('content')
  $httpProvider.defaults.headers.delete ||= {}
  $httpProvider.defaults.headers.post['X-CSRF-Token'] = token
  $httpProvider.defaults.headers.put['X-CSRF-Token'] = token
  $httpProvider.defaults.headers.delete['X-CSRF-Token'] = token





