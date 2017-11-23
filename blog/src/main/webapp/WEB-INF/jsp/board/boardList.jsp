<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
${board }
<div class="row">
	<div class="col-lg-6">
	    <div class="ibox float-e-margins">
	        <div class="ibox-title">
	            <h5>Hover Table  </h5>
	        </div>
	        <div class="ibox-content">
	
	            <table class="table table-hover">
	                <thead>
	                <tr>
	                    <th>#</th>
	                    <th>Data</th>
	                    <th>User</th>
	                    <th>Value</th>
	                </tr>
	                </thead>
	                <tbody>
	                <tr>
	                    <td>1</td>
	                    <td><span class="pie">0.52,1.041</span></td>
	                    <td>Samantha</td>
	                    <td class="text-navy"> <i class="fa fa-level-up"></i> 40% </td>
	                </tr>
	                <tr>
	                    <td>2</td>
	                    <td><span class="pie">226,134</span></td>
	                    <td>Jacob</td>
	                    <td class="text-warning"> <i class="fa fa-level-down"></i> -20% </td>
	                </tr>
	                <tr>
	                    <td>3</td>
	                    <td><span class="pie">0.52/1.561</span></td>
	                    <td>Damien</td>
	                    <td class="text-navy"> <i class="fa fa-level-up"></i> 26% </td>
	                </tr>
	                </tbody>
	            </table>
	        </div>
	    </div>
	</div>
</div>


<script>
	$(document).ready(function() {
		
	});
</script>
