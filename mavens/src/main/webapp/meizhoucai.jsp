<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'meizhoucai.jsp' starting page</title>
    
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
			    url:'moaweek/selDate',    
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
	  
	  $('#div2').hide();
	  
	 
}) 

 /* $('#div2').combobox({
		  url:'moaweek/selDate',
		  valueField:'id',
		  textField:'text'
	  }); */
</script>
  </head>
  
  <body>
     <div id="div1">
				<div title="点餐列表" style="padding:10px">
				${yes}
				<form id="seldate"  action="moaweek/selDate" method="post">
				            周数：  <input type="text" name="wnumber"></input> 
				
					  日期:<input class="easyui-datebox" style="width:80px" name="begindate"/>
					    <input  type="submit" value="查询"/>  
					   <!-- <a id="chaxun"  class="easyui-linkbutton" data-options="iconCls:'icon-ok'">查询</a> -->  
				</form>
				</div>
				
				
			<div class="index" style="width:1300px;height:500px;">
			<table id="table" class="easyui-datagrid" height="500px
							data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr width="1300px">
								<th data-options="field:'itemid'" width="200px">周数</th>
								<th data-options="field:'productid'" width="200">开始星期</th>
								<th data-options="field:'listprice'," width="200">结束日期</th>
								<th data-options="field:'unitcost'," width="200">发布日期</th>
								
								<th data-options="field:'status',align:'center'" width="100">操作</th>
							</tr>
							                                                                                                             
						</thead>
						
						<c:forEach items="${list}" var="moaweek">
						<tr>
						<td>${moaweek.wnumber}</td>
						<td><fmt:formatDate value='${moaweek.begindate}' pattern='yyyy-MM-dd'/> </td>
						<td><fmt:formatDate value='${moaweek.enddate }' pattern='yyyy-MM-dd'/></td>
						<td><fmt:formatDate value='${moaweek.begindate}' pattern='yyyy-MM-dd'/></td>
						<td><a href="moaweek/delete?id=${moaweek.id }">删除</a> </td>
						</tr>
						
						</c:forEach>
						
			</table>
			
			
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel">
		<div class="easyui-pagination" data-options="total:114"></div>
	</div>
	        </div> 				
				
			</div>	
			
			
			  <%--   <div id="div2">
				<div title="点餐列表" style="padding:10px">
				
				</div>
				
				
			<div class="index" style="width:1300px;height:500px;">
			<table id="table" class="easyui-datagrid" height="500px
							data-options="url:'datagrid_data1.json',method:'get',singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr width="1300px">
								<th data-options="field:'itemid'" width="200px">周数</th>
								<th data-options="field:'productid'" width="200">开始星期</th>
								<th data-options="field:'listprice'," width="200">结束日期</th>
								<th data-options="field:'unitcost'," width="200">发布日期</th>
								
								<th data-options="field:'status',align:'center'" width="100" colspan="2">操作</th>
							</tr>
							                                                                                                             
						</thead>
						
						
						
						<td>${moaweek.wnumber}</td>
						<td><fmt:formatDate value='${moaweek.begindate}' pattern='yyyy-MM-dd'/></td>
						<td><fmt:formatDate value='${moaweek.enddate }' pattern='yyyy-MM-dd'/></td>
						<td><fmt:formatDate value='${moaweek.createdate}' pattern='yyyy-MM-dd'/></td>
						<td><a href="#">删除</a> </td>
						
						</tr>
						
						
					
			</table>
			
			
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel">
		<div class="easyui-pagination" data-options="total:114"></div>
	</div>
	        </div> 				
				
			</div>	 --%>
			
  </body>
</html>
