<%@ page language="java" pageEncoding="UTF-8"%>

<body ng-controller="MainCtrl">
	<div class="container">
		<div class="row">
			<input type="text" ng-model="query" class="form-control">
		</div>
		
		<div class="row">
			<table class="table">
				<thead>
					<th>文件名</th>
					<th>大小</th>
				</thead>
				<tbody>
					<tr ng-repeat="file in files | filter:query">
						<td><a href="{{file.address}}">{{file.name}}</a></td>
						<td>{{file.size}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>