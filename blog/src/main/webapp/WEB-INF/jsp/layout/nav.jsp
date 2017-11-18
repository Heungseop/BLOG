<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<script>
$(document).ready(function(){

	$.ajax({
		   url: "${pageContext.request.contextPath}" + "/common/getMenuInfo.do",
		   type : "POST",
		   success: function(result) {
			   console.log("success json : ", result);
			   var bigMenuList = result.bigMenuList;
			   var midMenuList = result.midMenuList;
// 			   $("#side-menu").append();
		   },
		   error: function(error) {
		      console.log(error);
		   }
		});
	
});

</script>
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
                   					<c:if test="${bigItem.STR == midItem.BIG_MENU_CD }" >
		                            	<li><a href="index.html">${midItem.MID_MENU_NM }</a></li>
                   					</c:if>
                    			</c:forEach>
	                        </ul>
	                    </li>
                    </c:forEach>
                    
                </ul>

            </div>
        </nav>