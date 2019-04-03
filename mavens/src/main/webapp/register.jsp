<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
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
	  $("#register_submit").click(function(){
		  $('#ff').form('submit', {    
			    url:'user/register',    
			    onSubmit: function(){    
			    	 if($(":text:eq(0)").val()==""){
			        	   $.messager.alert("系统信息","用户名不能为空");
			        	   return false;
			           }else if($(":password:eq(0)").val()==""){
			        	   $.messager.alert("系统信息","密码不能为空");
			        	   return false;
			           }   
			    },    
			    success:function(data){    
			       if(data=="1"){
			    	  alert("注册成功");
			  //  document.getElementById('hiddenLogin').style.display='none';
			    	 // $('#hiddenLogin').window('close');  // close a window 
			    	 location.href="index.jsp"
			    	  
			       }else{
			    	  $.messager.alert("系统信息","用户名已存在");
			       }   
			    }    
			});  
		  
	  })
  }) 
	// submit the form    
	/* $('#ff').submit();  */
	function clearForm(){
		$('#ff').form('clear');
	}
	
  </script>

</head>
<body  id="win" style="background-color:#E9F1FF ">
${error}
  <div style="margin: 100px auto; width: 500px"">
  <div class="easyui-panel" title="用户注册" style="width:400px">
		<div id="win" style="padding:10px 60px 20px 60px">
		<a href="index.jsp">去登陆</a>
 <form id="ff" action="user/register" method="post">
	<table cellpadding="5">
	    		<tr>
	    			<td>姓名:</td>
	    			<td><input  type="text" name="loginName" placeholder="请输入用户名(1-8位英文)" onkeyup="this.value=this.value.replace(/[^a-zA-Z]/g,'')" maxlength="8"/></td>
	    		</tr>
	    		<tr>
	    		 <td> 密碼：</td>
	    		 <td><input type="password" name="password" placeholder="请输入密码(6-18位数字)" onkeyup="value=value.replace(/[^0-9/.]/ig,'')" data-options="required:true" maxlength="18" ></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>邮箱:</td>
	    			<td><input class="easyui-textbox" type="email" name="email" validType="email" required ="true"   ></td>
	    		</tr>
	
	           <tr>
	    			<td>座机:</td>
	    			<td><input class="easyui-textbox"  type="text" name="phone" data-options="required:true"></td>
	    		</tr>
	    		<tr>
	    			<td>手机号:</td>
	    			<td><input type="text"  name="mobile" data-options="required:true" placeholder="清输手机号" onkeyup="value=value.replace(/[^0-9/.]/ig,'')" maxlength="11"></td>
	    			<!-- <input class="easyui-validatebox textbox" data-options="required:true"> -->
	    		</tr>
	    		
	    		<tr>
	    			<td>所属公司:</td>
	    			<td>
	    				<input type="text"  placeholder="请输入公司ID"  maxlength="3"  onkeyup="value=value.replace(/[^0-9/.]/ig,'')"  name="officeId" data-options="required:true">
                     
	    			</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>所属部门:</td>
	    			<td>
	    				<input type="text"  placeholder="请输入部门ID" onkeyup="value=value.replace(/[^0-9/.]/ig,'')" maxlength="3"   name="officeId" data-options="required:true">
                     
	    			</td>
	    		</tr>
	    		
          <tr>
	        <!--  <td align="center"> <input type="submit" value="註冊"> </td> -->
	       <td style="text-align: center;"><a id="register_submit"  class="easyui-linkbutton" data-options="iconCls:'icon-ok'">注册</a> </td>
	        <td><a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清除</a> </td>
	       
	     </tr>
  </table>
  </form>
        </div>
	    </div>
  </div>
  
  
</body>
</html>