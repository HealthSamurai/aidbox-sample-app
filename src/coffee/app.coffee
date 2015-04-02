require('../../bower_components/angular/angular.js')
require('../../bower_components/angular-route/angular-route.js')
require('../../bower_components/angular-sanitize/angular-sanitize.js')
require('../../bower_components/angular-animate/angular-animate.js')
require('../../bower_components/angular-cookies/angular-cookies.js')
require('../../bower_components/fhir/ngFhir.js')

require('file?name=index.html!../index.html')
require('file?name=fhir.json!../../fhir.json')

require('../less/app.less')

app = require('./module')

app.run ($rootScope, $window, $location, $http)->
  baseUrl = "#{window.location.protocol}//#{window.location.host}/#{}"
  appUrl = "#{window.location.href}"
  $http.get(baseUrl + '/current-user').
    success((data)->
      if data == 'null'
        $window.location.href = baseUrl+'/signin?backurl=' + appUrl
      else
        $rootScope.currentUser = data.login
    ).error ->
      $rootScope.currentUser = 'Vasya'

window.app = app
