<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  
  function openTab(text, url) {

		if ($("#tabs").tabs('exists', text)) {
			$("#tabs").tabs('select', text);
		} else {
			var content = "<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="
					+ url + "></iframe>";
			$("#tabs").tabs('add', {
				title : text,
				closable : true,
				content : content
			});
		}
	}
  $(function(){
	/* 	var treeDate = [ {
			text : "部门管理",
			attributes : {
				url : "classinfo.jsp"
			}
		}, {
			text : "人员管理",
			attributes : {
				url : "classinfo.jsp"}
			},{
			text : "管理员管理",
			attributes : {
				url : "classinfo.jsp"}
			},{
				text : "日志员管理",
				attributes : {
					url : "classinfo.jsp"}
			
		} ];
		$("#tree").tree({
			data : treeDate,
			onClick : function(node) {

				openTab(node.text, node.attributes.url);
			}
		});

		var treeDate1 = [ {
			text : "3",
			attributes : {
				url : "classinfo.jsp"
			}
		}, {
			text : "4",
			attributes : {
				url : "stuinfo.jsp"
			}
		} ];
		$("#tree1").tree({
			data : treeDate1,
			onClick : function(node) {

				openTab(node.text, node.attributes.url);
			}
		});
		var treeDate2 = [ {
			text : "5",
			attributes : {
				url : "classinfo.jsp"
			}
		}, {
			text : "6",
			attributes : {
				url : "stuinfo.jsp"
			}
		} ];
		
		$("#tree2").tree({
			data : treeDate2,
			onClick : function(node) {

				openTab(node.text, node.attributes.url);
			}
		});
		var treeDate3 = [ {
			text : "用户管理",
			attributes : {
				url : "classinfo.jsp"
			}
		}, {
			text : "每周菜谱管理",
			attributes : {
				url : "stuinfo.jsp"
			}
		} ,{
			text : "点餐管理",
			attributes : {
				url : "show.jsp"
			}
		}];
		$("#tree3").tree({
			data : treeDate3,
			onClick : function(node) {

				openTab(node.text, node.attributes.url);
			}
		});
		var treeDate4 = [ {
			text : "7",
			attributes : {
				url : "classinfo.jsp"
			}
		}, {
			text : "8",
			attributes : {
				url : "stuinfo.jsp"
			}
		} ];
		
		$("#tree4").tree({
			data : treeDate4,
			onClick : function(node) {
				openTab(node.text, node.attributes.url);
			}
		});
 */
		

		
	  
	  
	  
	 $("#hiddenLogin").dialog({
		 //tatile:'登录',
		 
		 // modal:true,
		 closable:false,
	 }) 
	    
	  
	  $("#login_submit").click(function(){
		  $('#login_form').form('submit', {    
			    url:'user/login',    
			    onSubmit: function(){    
			        // do some check    
			        // return false to prevent submit;    
			    },    
			    success:function(data){    
			       if(data=="1"){
			    	  alert("成功") 
			  //  document.getElementById('hiddenLogin').style.display='none';
			    	  $('#hiddenLogin').window('close');  // close a window 
			    	  
			       }else{
			    	  $.messager.alert("系统信息","用戶名或密碼錯誤");
			       }   
			    }    
			});  
		  
	  })
	  
	  $(".a1").click(function () {
		$(".index").hide();
		$(".jgyh").show();
	})
	 
  })
  
  function load() {
		$("#hiddenLogin").window("open");
		
	}
  
   
  
  </script>
  
  <style type="text/css">
  a{
	  text-decoration:none
  }
  
  </style>
  
  
  </head>
  
 
  
  <body onload="load()">
  
  
	<div id="hiddenLogin" class="easyui-window" title="登录" data-options="modal:true" style="width:500px;height:250px;padding:10px;">
    <form  method="post" id="login_form">
    
       <table id="login_from" width="340px" align="center">
   
	   
	       <tr style="width: 340p">
	      <td colspan="2" style="text-align: center; font-weight: bold;">至尊点餐系统</td>
	      </tr>
	   
	     <tr style="height:40px">
	      <td >登录名</td>
	      
	    			<td><input class="easyui-textbox" type="text" name="username" data-options="required:true"></input></td>
	     </tr>
	     <tr style="height:40px">
	      <td>密码</td>
	      <td><input class="easyui-textbox" type="password" name="password" data-options="required:true"> </td>
	     </tr>
	    <tr>
	      <td colspan="2" align="center"> 
	       <a id="login_submit"    class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登录</a>  
	       <a href="register.jsp">没有账号?去注册</a>
	       </td>
	       
	     </tr>
    </table>
    
    </form>
	</div>
    <%-- <p style="text-align: center; font-weight: bold red; font-size:6 ; padding:0px 100px;">欢迎${user.loginName}登陆</p> --%>
	<div class="easyui-layout" style="width:1650px;height:750px;">
		<div data-options="region:'north'" style="height:70px;background-color: #E9F1FF ">
		<p style="text-align: center; font-weight: bold red; font-size:20 ; padding:0px;">长信宝点餐系统</p>
		</div>
		
		
		 <div data-options="region:'west',split:true" title="管理" style="width:150px;">
		 
		   <div class="easyui-accordion" style="width:100%;">
		   <div title="系统管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascripe:vaid(0)" onclick="openTab('部门管理','yonghu.jsp')">部门管理</a></br>
			<a href="javascripe:vaid(0)" onclick="openTab('人员管理','user/list')">人员管理</a></br>
			<a href="javascripe:vaid(0)" onclick="openTab('管理员管理','renyuan.jsp')">管理员管理</a></br>
			<a href="javascripe:vaid(0)" onclick="openTab('日志管理','renyuan.jsp')">日志管理</a></br>
			</div>
			</div>
		
		<div class="easyui-accordion" style="width:100%;">
		   <div title="菜谱管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0)" onclick="openTab('每周菜谱管理','moaweek/list')">每周菜谱管理</a></br>
			<a href="javascript:void(0)" onclick="openTab('每周菜谱添加','sysDiac/selAll')">每周菜谱添加</a></br>
			<a href="javascript:void(0)" onclick="openTab('点餐管理列表','orderCook/selAll')">点餐管理列表</a></br>
			<a href="javascript:void(0)" onclick="openTab('点餐设置添加','diancanshezhiadd.jsp')">点餐设置添加</a></br>
		</div>
		
		
		
		</div>
		
		<div class="easyui-accordion" style="width:100%;">
		   <div title="投票管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0)" onclick="openTab('每周投票管理','yonghu.jsp')">每周投票管理</a></br>
			<a href="javascript:void(0)" onclick="openTab('调查投票管理','yonghu.jsp')">调查投票管理</a></br>
			
		</div>
		</div>
		
		<div class="easyui-accordion" style="width:100%;">
		   <div title="用户反馈管理" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
			<a href="javascript:void(0)" onclick="openTab('用户反馈','yonghu.jsp')">用户反馈</a></br>
			
		</div>
		</div>
								
		</div>
					
		<div data-options="region:'center',title:'center'" style="width: 1000px" >
			<div class="easyui-tabs" id="tabs" fit="true">
			
			</div>
	</div>
  </body>
</html>
