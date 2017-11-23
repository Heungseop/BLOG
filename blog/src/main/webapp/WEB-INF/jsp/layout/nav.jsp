<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> 
                        	<span>
                            	<img alt="image" class="img-circle" src="img/profile_small.jpg" />
                            </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
	                            <span class="clear">
	                            	<span class="block m-t-xs">
	                            		<strong class="font-bold">David Williams </strong>
	                            	</span>
	                            	<span class="text-muted text-xs block">Art Director <b class="caret"></b></span> 
	                            </span> 
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="/blog/common/profile.do">Profile</a></li>
                                <li><a href="<c:url value='/common/contacts.do'/>">Contacts</a></li>
                                <li><a href="/common/mailbox.do">Mailbox</a></li>
                                <li class="divider"></li>
                                <li><a href="/common/login.do">Logout</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                    <c:forEach items="${bigMenuList }" var="bigItem">
	                    <li>
	                        <a href="index.html">
	                        	<i class="fa fa-th-large"></i> 
	                        	<span class="nav-label">${bigItem["NM"] }</span> 
	                        	<span class="fa arrow"></span>
	                       	</a>
	                        <ul class="nav nav-second-level">
                   				<c:forEach items="${midMenuList }" var="midItem">
                   					<c:if test="${bigItem.CD == midItem.BIG_MENU_CD }" >
		                            	<li><a href="#" onclick="menuClick('${midItem.BIG_MENU_CD }', ${midItem.MID_MENU_CD })">${midItem.MID_MENU_NM }</a></li>
                   					</c:if>
                    			</c:forEach>
	                        </ul>
	                    </li>
                    </c:forEach>
                    
                </ul>

            </div>
        </nav>
<script>

function menuClick(big_menu_cd, mid_menu_cd){

		$.ajax({
			   url: "${pageContext.request.contextPath}" + "/empty/board/boardList.do",
			   type : "POST",
			   data : { big_menu_cd : big_menu_cd
				   	  , mid_menu_cd : mid_menu_cd
				   	  },
			   success: function(result) {
				   console.log("success result : ", result);
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
				   $("#body_div").empty();
				   $("#body_div").append(result);
			   },
			   error: function(error) {
			      console.log(error);
			   }
			});
	
}
</script>