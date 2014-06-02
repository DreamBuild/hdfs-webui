var app = angular.module('app',[]);
app.controller('MainCtrl',mainCtrl);

function mainCtrl($scope)
{
	$scope.paths = [{name:"root",full:"/"},{name:"home",full:"/home"}];
	$scope.files = [{address:"#",name:"1",size:10,isFolder:true},{address:"#",name:"2",size:10,isFolder:true},{address:"#",name:"3",size:10,isFolder:false}];
}