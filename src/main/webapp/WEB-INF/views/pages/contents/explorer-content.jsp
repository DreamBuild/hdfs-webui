<%@ page language="java" pageEncoding="UTF-8"%>

<body ng-controller="MainCtrl">
	<div class="container">
		<div class="row" style="margin-top:20px;margin-bottom:20px">
			<div class="input-group">
				<input type="text" ng-model="query" class="form-control"
				placeholder="输入路径">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">
						<span class="glyphicon glyphicon-search"></span>&nbsp;
					</button>
				</span> 
			</div>
		</div>
		<div class="row">
			<ol class="breadcrumb" style="background-color: black;">
				<li ng-repeat="path in paths"><a href="{{path.full}}"
					style="color:white">{{path.name}}</a></li>
			</ol>
		</div>
		<div class="row">
			<table class="table">
				<thead>
					<th>文件名</th>
					<th>大小</th>
				</thead>
				<tbody>
					<tr ng-repeat="file in files | filter:query">
						<td>
							<span ng-show="file.isFolder == false" class="glyphicon glyphicon-file"></span>
							<span ng-show="file.isFolder" class="glyphicon glyphicon-folder-close"></span>
							<a href="{{file.address}}"> {{file.name}}</a>
						</td>
						<td>{{file.size}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</body>