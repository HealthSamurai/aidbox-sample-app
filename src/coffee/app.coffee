require('../../bower_components/angular/angular.js')
require('../../bower_components/angular-route/angular-route.js')
require('../../bower_components/angular-sanitize/angular-sanitize.js')
require('../../bower_components/angular-animate/angular-animate.js')
require('../../bower_components/angular-cookies/angular-cookies.js')
require('../../bower_components/fhir/ngFhir.js')

require('file?name=index.html!../index.html')
require('../less/app.less')

app = require('./module')

app.run ($rootScope, $window, $location, $http)->
  $rootScope.user = {}

window.app = app
