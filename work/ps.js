
var app = angular.module('myApp', []);
app.controller('personCtrl', function($scope) {
    $scope.firstName = "viji";
    $scope.lastName = "vaishali";
    $scope.fullName = function() {
        return $scope.firstName + " " + $scope.lastName;
    };
});


