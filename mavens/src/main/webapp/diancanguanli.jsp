<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'diancanguanli.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <jsp:include page="/easyui/easyui.jsp"></jsp:include> 
  <script type="text/javascript">
$(function(){
	  $("#chaxun").click(function(){
		  $('#seldate').form('submit', {    
			    url:'orderCook/seldatedish',    
			    onSubmit: function(){    
			        // do some check    
			        // return false to prevent submit;    
			    },    
			    success:function(data){    
			       if(data!=""){
			    	  alert("查询成功") 
			  //  document.getElementById('hiddenLogin').style.display='none';
			    	// $('#div1').window('close');  // close a window 
			    	 $('#div1').hide();
			    	 $('#div2').show();
			    	 
			    	 var mws=eval("("+data+")"); 
			    	 
			       }else{
			    	  $.messager.alert("系统信息","没有此记录");
			       }   
			    }    
			});  
		  
	  })
	  
	 // $('#div2').hide();
	  
	 
}) 

 
</script>
  </head>
  
  <body>
    
			<div class="index" style="width:1300px;height:100px;">
			<form id="seldate" action="orderCook/seldatedish" method="post">
				   日期: <input class="easyui-datebox" name="cdate" style="width:80px">
				 <input id="ss" class="easyui-searchbox" prompt="菜名" name="dish" ></input> 
				 <input type="submit" value="查找"> 
				<!--  <a id="chaxun"  class="easyui-linkbutton" data-options="iconCls:'icon-ok'">查询</a> --> 
			</form>
		 <div id="div1">
		  <table class="easyui-datagrid" height="500px
							data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr width="1300px">
								<th data-options="field:'itemid'" width="180px">日期</th>
								<th data-options="field:'productid'" width="180">星期</th>
								<th data-options="field:'listprice'," width="180">菜名</th>
								<th data-options="field:'unitcost'," width="180">上限</th>
								<th data-options="field:'attr1'" width="180">点餐数</th>
								<th data-options="field:'status',align:'center'" width="200">操作</th>
							</tr>
							                                                                                                             
						</thead>
						
						<c:forEach items="${list}" var="moaorder">
						<%-- <thead>
							<tr width="1300px">
								<th data-options="field:'itemid'" width="180px">${moaweek.wnumber }</th>
								<th data-options="field:'productid'" width="180">${moaweek.wnumber }</th>
								<th data-options="field:'listprice'," width="180">${moaweek.wnumber }</th>
								<th data-options="field:'unitcost'," width="180">${moaweek.wnumber }</th>
								<th data-options="field:'attr1'" width="180">${moaweek.wnumber }</th>
								<th data-options="field:'status',align:'center'" width="200"></th>
							</tr>
							                                                                                                             
						</thead> --%>
						
						<tr>
							<td><fmt:formatDate value="${moaorder.cdate }" pattern='yyyy-MM-dd'/> </td>
							<td>${moaorder.cweek }</td>
							<td>${moaorder.dish }</td>
							<td>${moaorder.maxcount }</td>
							<td>${moaorder.nowcount }</td>
							<td><a href="orderCook/delete?id=${moaorder.id }">删除</a></td>
							<td></td>
						</tr>
						
						
						</c:forEach>
						
			</table>
			
		 
		 </div>
			
	<%-- 	<div id="div2">
		  <table class="easyui-datagrid" height="500px
							data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr width="1300px">
								<th data-options="field:'itemid'" width="180px">日期</th>
								<th data-options="field:'productid'" width="180">星期</th>
								<th data-options="field:'listprice'," width="180">菜名</th>
								<th data-options="field:'unitcost'," width="180">上限</th>
								<th data-options="field:'attr1'" width="180">点餐数</th>
								<th data-options="field:'status',align:'center'" width="200">操作</th>
							</tr>
							                                                                                                             
						</thead>
						
						<c:forEach items="${list}" var="moaorder">
						
						
						<tr>
							<td><fmt:formatDate value="${moaorder.cdate }" pattern='yyyy-MM-dd'/> </td>
							<td>${moaorder.cweek }</td>
							<td>${moaorder.dish }</td>
							<td>${moaorder.maxcount }</td>
							<td>${moaorder.nowcount }</td>
							<td><a href="orderCook/delete?id=${moaorder.id }">删除</a></td>
							<td></td>
						</tr>
						
						
						</c:forEach>
						
			</table>
			
		 
		 </div> --%>
			
			
	        </div> 	
  </body>
</html>
