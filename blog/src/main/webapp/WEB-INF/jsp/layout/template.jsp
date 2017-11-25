<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>INSPINIA | Dashboard</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">

<!-- 각종 스크립트 및 CSS -->

    <!-- Mainly scripts -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="${pageContext.request.contextPath}/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${pageContext.request.contextPath}/js/inspinia.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="${pageContext.request.contextPath}/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="${pageContext.request.contextPath}/js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="${pageContext.request.contextPath}/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="${pageContext.request.contextPath}/js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <script src="${pageContext.request.contextPath}/js/plugins/chartJs/Chart.min.js"></script>

    <!-- Toastr -->
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>

    <!-- FooTable -->
    <link href="${pageContext.request.contextPath}/css/plugins/footable/footable.core.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    
<script type="text/javascript">
	$(document).ready(function() {

// 		$.ajax({
// 			   url: "${pageContext.request.contextPath}" + "/common/getMenuInfo.do",
// 			   type : "POST",
// 			   success: function(result) {
// 				   console.log("success json : ", result);
// 				   var bigMenuList = result.bigMenuList;
// 				   var midMenuList = result.midMenuList;
				   
// 				   var str = "";
// 				   for(var i = 0; i < bigMenuList.length; i++){
// 					   str += "<li><a href=''><i class='fa fa-th-large'></i>";
// 					   str += "<span class='nav-label'>" + bigMenuList[i].NM + "</span>";
// 					   str += "<span class='fa arrow'></span></a><ul class='nav nav-second-level'>";
// 					   for(var j = 0; j < midMenuList.length; j++){
// 						   if(bigMenuList[i].STR == midMenuList[j].BIG_MENU_CD){
// 						       str += "<li><a href='index.html'>" + midMenuList[j].MID_MENU_NM + "</a></li>";
							   
// 						   }
// 					   }
// 		               str += "</ul></li>";
// 				   }
// 	               console.log("str : ", str);
// 				   $("#side-menu").append(str);
// 			   },
// 			   error: function(error) {
// 			      console.log(error);
// 			   }
// 			});
	});
</script>
</head>
<body>
    <div id="wrapper">
		<tiles:insertAttribute name="nav" />
		
        <div id="page-wrapper" class="gray-bg dashbard-1">
			<tiles:insertAttribute name="header" />
			<div id="body_div">
				<tiles:insertAttribute name="body" />
			</div>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	
</body>
</html>
