<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- FooTable -->
<script
	src="${pageContext.request.contextPath}/js/plugins/footable/footable.all.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="${pageContext.request.contextPath}/js/inspinia.js"></script>
<script
	src="${pageContext.request.contextPath}/js/plugins/pace/pace.min.js"></script>

<script
	src="${pageContext.request.contextPath}/js/plugins/dataTables/datatables.min.js"></script>

<div class="wrapper wrapper-content animated fadeInRight">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>
						<span id="pageTitle"></span>
					</h5>
				</div>
				<div class="ibox-content">
					<table
						class="table table-striped table-bordered table-hover dataTables-example">
						<thead>
							<tr>
								<th style="text-align: center; width: 10%;">순번</th>
								<th style="text-align: center; width: 40%;">제목</th>
								<th style="text-align: center; width: 10%;">조회수</th>
								<th style="text-align: center; width: 10%;">좋아요</th>
								<th style="text-align: center; width: 10%;">작성자</th>
								<th style="text-align: center; width: 20%;">작성일</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${board }" var="item">
								<tr>
									<td style="text-align: center;">${item.NO }</td>
									<td style="text-align: left;"><a href="#"
										onClick="onBoardClick('${item.BIG_MENU_CD }', '${item.MID_MENU_CD }', '${item.NO }')"> ${item.TITLE } </a></td>
									<td style="text-align: center;">${item.READ_CNT}</td>
									<td style="text-align: center;">${item.LIKE_CNT}</td>
									<td style="text-align: center;">${item.REG_USER }</td>
									<td style="text-align: center;">${item.REG_DATE}</td>
								</tr>
							</c:forEach>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6">
									<ul class="pagination pull-right"></ul>
								</td>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
	$(document).ready(function() {
		$('.dataTables-example').DataTable({
			pageLength : 20,
			responsive : true,
			dom : '<"html5buttons"B>lTfgitp',
			buttons : [
			]

		});
	});
	
	function onTitleClick(big, mid, no){
		
	}
</script>