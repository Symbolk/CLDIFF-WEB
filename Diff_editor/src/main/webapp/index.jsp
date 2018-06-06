<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>editor</title>
<link type="text/css" rel="styleSheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<!-- <link type="text/css" rel="styleSheet" href="bootstrap-3.3.7-dist/css/bootstrap.css" /> -->
<link type="text/css" rel="styleSheet" href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
<!-- <link type="text/css" rel="styleSheet" href="style/base.css" />
 --><link type="text/css" rel="styleSheet" href="style/editor.css" />
<link type="text/css" rel="styleSheet" href="style/color.css" />
	<link type="text/css" rel="styleSheet" href="style/addition.css" />
	<link type="text/css" rel="styleSheet" href="http://bigcode.fudan.edu.cn/css/nav.css" />
</head>
<body>

	<div id="navigation">

	</div>
    <!-- <span class="label label-primary" style="position:absolute;top:0;left:10px;font-size:18px">RQ</span>
    <span class="label label-primary" style="position:absolute;top:0;left:160px;font-size:18px">commit id</span>
    <span class="label label-primary" style="position:absolute;top:0;left:670px;font-size:18px">file name</span>
    <div id ="RQList"class="list-group" style="position:absolute;left:10px;display:inline;width:70px;height:240px;top:30px;overflow:auto">	
    	<button id ="RQ3" type="button" class="list-group-item">
			RQ3</button>
		<button id ="RQ4" type="button" class="list-group-item" onclick="getCommitByRQ(this)">
			RQ4</button>
    </div>
	<div id ="commitList"class="list-group" style="position:absolute;left:160px;display:inline;width:450px;height:200px;top:30px;overflow:auto">		
	</div>
	<div style="position:absolute;left:670px;display:inline;width:800px;height:200px;top:30px;overflow:auto">
		<div id ="fileList" class="list-group" style="width:800px;">
		</div>
	</div> -->
 	<form class="form-inline" style="margin-top:80px;position: absolute; left: 50px; width: 1400px;top: 30px;">
 		<div class="form-group">
			<div class="input-group-btn" >
			<input type="text" class="form-control" id="commitUrl"  name="commit_url" placeholder="Commit Url" style="width: 600px;top: 30px;">
				<%--<input id="commitUrl" type="text" style="width: 1000px;top: 30px;" class="form-control" name="commit_url">--%>
				<button id="searchButton" class="btn btn-info" type="button" onclick = "getFileByCommitUrl()">Analyze</button>
			</div>
		</div>
		<%--<button type="button" class="btn btn-primary" onclick = "getFileByCommitUrl()">Analyze</button>--%>



	</form>
	<%--<button id="searchButton2" class="btn btn-info" type="button">Search</button>--%>
	
	<!-- <div style="position:absolute;left:144px;display:inline;width:1000px;height:130px;top:70px;"> -->
		<!-- <div id ="fileList" class="list-group" style="width:1000px;">
		
		</div> -->
		<ul id ="fileList" class="dropdown-menu" aria-labelledby="dropdownMenu3" style="position:absolute;left:50px;width:1000px;max-height:120px;top:144px;width:1000px;overflow:auto">
			<!-- <li class="dropdown-header">Dropdown header</li>
			<li><a href="#">Action</a></li>
			<li><a href="#">Another action</a></li>
			<li><a href="#">Something else here</a></li>
			<li class="dropdown-header">Dropdown header</li>
			<li><a href="#">Separated link</a></li> -->
		</ul>
		
	<!-- </div> -->

		<div class="panel panel-default"
		<%--style="margin-top:80px;position: absolute; left: 1550px; display: inline; width: 250px; height: 200px; top: 30px;">--%>
		style="margin-top:80px;position: absolute; left: 1550px; display: inline; width: 250px; height: 200px; top: 30px;display: none;" id="info_panel">
		<div class="panel-heading">
			<h3 class="panel-title">Legend</h3>
		</div>
		<div class="panel-body">	
		
			<ul style="position:absolute;top:60px;left: 0;">
				<li style="height:25px;">
					<div style="position: absolute; top: 1px; left: 40px; display: inline; background-color: rgba(0, 205, 0, 0.2); width: 45px; height: 18px;"></div>
					<span style="position: absolute; left: 100px;">Insert</span>
				</li>
				<li style="height:25px;">
					<div style="position: absolute; top: 26px; left: 40px; display: inline; background-color: rgba(255, 0, 0, 0.2); width: 45px; height: 18px;"></div>
					<span style="position: absolute; left: 100px;" >Delete</span>
				</li>
				<li style="height:25px;">
					<div style="position: absolute; top: 51px; left: 40px; display: inline; background-color: rgba(0, 100, 255, 0.2); width: 45px; height: 18px;"></div>
					<span style="position: absolute; left: 100px;">Change</span>
				</li>
				<li style="height:25px;">
					<div style="position: absolute; top:76px; left: 40px; display: inline; background-color: rgba(255, 140, 0, 0.2); width: 45px; height: 18px;"></div>
					<span style="position: absolute; left: 100px;">Move</span>
				</li>
			</ul>
		</div>
	</div>

	<div class="editor-frame" style="margin-top: 280px;">
		<div id="diff-editor" >
			<div
				class="monaco-diff-editor monaco-editor-background side-by-side vs"
				style="position: relative; height: 100%;">	
				<canvas id="myCanvas3" width="400" height="300"
						style="position: absolute; will-change: transform; top: 0px; left: 1486px;"></canvas>		
				<!--original-->
				<div class="editor original" data-keybinding-context="2"
					data-mode-id="javascript"
					style="position: absolute; height: 100%; width: 243px; left: 0px;">
					<div class="monaco-editor original-in-monaco-diff-editor vs"
						data-uri="inmemory://model/2" style="width: 743px; height: 4000px;overflow:hidden">										
						</div>
				</div>
				<!--modified-->
				<div class="editor modified" data-keybinding-context="3"
					data-mode-id="javascript"
					style="position: absolute; height: 100%; width: 173px; left: 743px;">
					<div class="monaco-editor modified-in-monaco-diff-editor vs"
						data-uri="inmemory://model/3" style="width: 743px; height: 4000px;overflow:hidden">																									
					</div>
				</div>
				<div class="bubbleZone" data-keybinding-context="3"
					data-mode-id="javascript"
					style="position: absolute; height: 100%; width: 410px; left: 1486px;">
				</div>			
		</div>
	</div>
	</div>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="js/file.js"></script>
	<script type="text/javascript" src="js/webpage.js"></script>
	<script type="text/javascript" src="js/bubble.js"></script>
	<script type="text/javascript" src="js/link.js"></script>
	<script type="text/javascript" src="js/color.js"></script>	
	<script type="text/javascript" src="js/editor.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://bigcode.fudan.edu.cn/js/nav.js"></script>
</body>
</html>