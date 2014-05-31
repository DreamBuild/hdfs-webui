var app = angular.module('app',[]);
app.controller('MainCtrl',mainCtrl);

function mainCtrl($scope)
{
	$scope.files = [{address:"#",name:"1",size:10},{address:"#",name:"2",size:10},{address:"#",name:"3",size:10}];
}