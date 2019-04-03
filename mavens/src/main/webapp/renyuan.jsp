<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'yonghu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <jsp:include page="/easyui/easyui.jsp"></jsp:include> 
 
 
 
  </head>
  
  <body>
    
		
			 
    <%-- <table border="1px">
      <tr>
      	 <td>编号</td>
         <td>用户名</td>
         
         <td colspan="2">操作</td>
      </tr>
     
      <c:forEach items="${list}" var="user">
      
      <tr>
         <td>${user.id }</td>
         <td>${user.loginName }</td>
         
        <td><a href="user/delete?id=${user.id }">删除</a></td>
        <td><a href="user/preupdate?id=${user.id }">修改</a></td>
      </tr>
    
      </c:forEach>
      
    
    </table> --%>
			
	
	<div style="margin:20px 0;"></div>
	
	<table id="dg" title="人員管理" style="width:1000px;height:450px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:10">
		<thead>
			<tr>
				<th field="inv" width="80" align="center">ID</th>
				<th field="name" width="120" align="center">姓名</th>
				<th field="name" width="150" align="center">座机</th>
				<th field="amount" width="150" align="center">手机号</th>
				<th field="price" width="150" align="center">归属公司</th>
				<th field="price" width="150" align="center">所属部门</th>
				<th field="price" width="150" align="center">操作</th>
			</tr>
		</thead>
		
		  <c:forEach items="${list}" var="user">
		   <thead>
		  <tr>
		        <th field="inv" width="80">${user.id }</th>
				<th field="name" width="100">${user.loginName }</th>
				<th field="name" width="80">${user.phone }</th>
				<th field="amount" width="80" align="right">${user.mobile }</th>
				<th field="price" width="80" align="right">${user.companyId }</th>
				<th field="price" width="80" align="right">${user.officeId }</th>
				<th field="price" width="80" align="center"><a href="user/delete?id=${user.id }">刪除</a></th>
				
		 </tr>
		 </thead> 
		
		</c:forEach>
		
		
	</table>
	<script>
		
		
		function pagerFilter(data){
			if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
				data = {
					total: data.length,
					rows: data
				}
			}
			var dg = $(this);
			var opts = dg.datagrid('options');
			var pager = dg.datagrid('getPager');
			pager.pagination({
				onSelectPage:function(pageNum, pageSize){
					opts.pageNumber = pageNum;
					opts.pageSize = pageSize;
					pager.pagination('refresh',{
						pageNumber:pageNum,
						pageSize:pageSize
					});
					dg.datagrid('loadData',data);
				}
			});
			if (!data.originalRows){
				data.originalRows = (data.rows);
			}
			var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
			var end = start + parseInt(opts.pageSize);
			data.rows = (data.originalRows.slice(start, end));
			return data;
		}
		
		$(function(){
			$('#dg').datagrid({loadFilter:pagerFilter}).datagrid('loadData', getData());
		});
	</script>
    
    
  </body>
</html>
