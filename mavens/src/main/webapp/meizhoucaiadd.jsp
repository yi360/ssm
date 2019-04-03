<%-- <%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	
    <link rel="stylesheet" type="text/css" href="/easyui/jquery-easyui-1.5.1/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="/easyui/jquery-easyui-1.5.1/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="/easyui/jquery-easyui-1.5.1/demo.css">
	<script type="text/javascript" src="/easyui/jquery-easyui-1.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="/easyui/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
	-->
<jsp:include page="/easyui/easyui.jsp"></jsp:include>


</head>
<script type="text/javascript">
	$(function(){
		
		$("#baocun").click(function(){
			$('#ff').form('submit',{
				url:'moacook/addcai',
				success:function(date){
					if(date=="1"){
						$.messaager.alert("系统信息","添加成功");
					}else{
						$.messaager.alert("系统信息","添加失败");
					}
					
				}
			})
			
		})
		
		function getWeek(dateString){
		    var date;
		    if(isNull(dateString)){
		        date = new Date();
		    }else{
		        var dateArray = dateString.split("-");
		        date = new Date(dateArray[0], parseInt(dateArray[1] - 1), dateArray[2]);
		    }
		    var weeks = new Array("日", "一", "二", "三", "四", "五", "六");
		    return "星期" + weeks[date.getDay()];
		   // return "星期" + "日一二三四五六".charAt(date.getDay());
		};
		function getDay(value,num) {
             if (value == "") {
                 return;
             } else {
                 var day = new Date(value).getDay(),
                     text = "";
                 switch (day) {
                     case 0:
                         text = "星期日";
                         break;
                     case 1:
                         text = "星期一";
                         break;
                     case 2:
                         text = "星期二";
                         break;
                     case 3:
                         text = "星期三";
                         break;
                     case 4:
                         text = "星期四";
                         break;
                     case 5:
                         text = "星期五";
                         break;
                     case 6:
                         text = "星期六";
                         break;
                       
                 }
                 switch (num) {
                 case 0:
                     $(".week0").val(text);
                     break;
                 case 1:
                     $(".week1").val(text);
                     break;
                 case 2:
                     $(".week2").val(text);
                     break;
                 case 3:
                     $(".week3").val(text);
                     break;
                 case 4:
                     $(".week4").val(text);
                     break;
                 case 5:
                     $(".week5").val(text);
                     break;
                 case 6:
                     $(".week6").val(text);
                	break;
         	}
                
             }
         }
		function dayadd(value,num){
			var dateTime=new Date(value);
			dateTime=dateTime.setDate(dateTime.getDate()+num);
			return timeStamp2String(dateTime);
		}
		function timeStamp2String(time){
		    var datetime = new Date();
		    datetime.setTime(time);
		    var year = datetime.getFullYear();
		    var month = datetime.getMonth() + 1 < 10 ? "0" + (datetime.getMonth() + 1) : datetime.getMonth() + 1;
		    var date = datetime.getDate() < 10 ? "0" + datetime.getDate() : datetime.getDate();
		    var hour = datetime.getHours()< 10 ? "0" + datetime.getHours() : datetime.getHours();
		    var minute = datetime.getMinutes()< 10 ? "0" + datetime.getMinutes() : datetime.getMinutes();
		    var second = datetime.getSeconds()< 10 ? "0" + datetime.getSeconds() : datetime.getSeconds();
		    return year + "-" + month + "-" + date;
		}
		$(".textbox").hover(function(){
			var datestar1= $("#_easyui_textbox_input1").val();
			var datestar2= dayadd(datestar1,1);
			$("#_easyui_textbox_input2").val(datestar2);
			var datestar3= dayadd(datestar2,1);
			$("#_easyui_textbox_input3").val(datestar3);
			var datestar4= dayadd(datestar3,1);
			$("#_easyui_textbox_input4").val(datestar4);
			var datestar5= dayadd(datestar4,1);
			$("#_easyui_textbox_input5").val(datestar5);
			getDay(datestar1,1);
			getDay(datestar2,2);
			getDay(datestar3,3);
			getDay(datestar4,4);
			getDay(datestar5,5);
		});
		
	})
</script>
<body>
	<div class="easyui-panel" style="width:800px;border:0">
		<div style="padding:10px 60px 20px 60px;border:0">
			<form id="ff" method="post" >
				<table cellpadding="5">
					<tr>
						<td><input class="easyui-datebox" name="cdate"></input> <input type="text" class="week1" name="cweek"/></td>
						<td>早餐:<br />
						<br/>午餐:
						</td>
						<td><input type="text" name="breakfast"/><br />
						<br />
						<input type="text" name="lunch"/></td>
					</tr>
					<tr>
						<td><input class="easyui-datebox" name="cdate"></input> <input type="text"  class="week2" name="cweek"/></td>
						<td>早餐:<br/>
						<br />午餐:
						</td>
						<td><input type="text" name="breakfast"/><br/>
						<br />
						<input type="text" name="lunch"/></td>
					</tr>
					<tr>
						<td><input class="easyui-datebox" name="cdate"></input> <input type="text"  class="week3" name="cweek"/></td>
						<td>早餐:<br/>
						<br />午餐:
						</td>
						<td><input type="text" name="breakfast"/><br />
						<br />
						<input type="text" name="lunch"/></td>
					</tr>
					<tr>
						<td><input class="easyui-datebox  name="cdate""></input> <input type="text"  class="week4" name="cweek"/></td>
						<td>早餐:<br />
						<br />午餐:
						</td>
						<td><input type="text" name="breakfast"/><br />
						<br />
						<input type="text" name="lunch"/></td>
					</tr>
					<tr>
						<td><input class="easyui-datebox" name="cdate"></input> <input type="text"  class="week5" name="cweek"/></td>
						<td>早餐:<br />
						<br />午餐:
						</td>
						<td><input type="text"  name="breakfast"/><br/>
						<br />
						<input type="text" name="lunch"/></td>
					</tr>
					<tr>
						<td colspan="3" style="text-align: center;"><br/><br/><a id="baocun" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">保存</a><span style="margin: 0 60px"></span>
						<input type="button" value="返回"/></td>
					</tr>
				</table>
			</form>
			<div style="text-align:center;padding:5px">
</body>
</html>
</script>
 --%>


<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'createcaipu.jsp' starting page</title>
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
<script type="text/javascript">
	$(function() {

		$("#baocun").click(function() {
			$('#ff').form('submit', {
				url : 'moacook/addcai',
				success : function(date) {
					if (date == "1") {
						$.messaager.alert("系统信息", "添加成功");
					} else {
						$.messaager.alert("系统信息", "添加失败");
					}

				}
			})

		})

		function getWeek(dateString) {
			var date;
			if (isNull(dateString)) {
				date = new Date();
			} else {
				var dateArray = dateString.split("-");
				date = new Date(dateArray[0], parseInt(dateArray[1] - 1),
						dateArray[2]);
			}
			var weeks = new Array("日", "一", "二", "三", "四", "五", "六");
			return "星期" + weeks[date.getDay()];
			// return "星期" + "日一二三四五六".charAt(date.getDay());
		}
		;
		function getDay(value, num) {
			if (value == "") {
				return;
			} else {
				var day = new Date(value).getDay(), text = "";
				switch (day) {
				case 0:
					text = "星期日";
					break;
				case 1:
					text = "星期一";
					break;
				case 2:
					text = "星期二";
					break;
				case 3:
					text = "星期三";
					break;
				case 4:
					text = "星期四";
					break;
				case 5:
					text = "星期五";
					break;
				case 6:
					text = "星期六";
					break;

				}
				switch (num) {
				case 0:
					$(".week0").val(text);
					break;
				case 1:
					$(".week1").val(text);
					break;
				case 2:
					$(".week2").val(text);
					break;
				case 3:
					$(".week3").val(text);
					break;
				case 4:
					$(".week4").val(text);
					break;
				case 5:
					$(".week5").val(text);
					break;
				case 6:
					$(".week6").val(text);
					break;
				}

			}
		}
		function dayadd(value, num) {
			var dateTime = new Date(value);
			dateTime = dateTime.setDate(dateTime.getDate() + num);
			return timeStamp2String(dateTime);
		}
		function timeStamp2String(time) {
			var datetime = new Date();
			datetime.setTime(time);
			var year = datetime.getFullYear();
			var month = datetime.getMonth() + 1 < 10 ? "0"
					+ (datetime.getMonth() + 1) : datetime.getMonth() + 1;
			var date = datetime.getDate() < 10 ? "0" + datetime.getDate()
					: datetime.getDate();
			var hour = datetime.getHours() < 10 ? "0" + datetime.getHours()
					: datetime.getHours();
			var minute = datetime.getMinutes() < 10 ? "0"
					+ datetime.getMinutes() : datetime.getMinutes();
			var second = datetime.getSeconds() < 10 ? "0"
					+ datetime.getSeconds() : datetime.getSeconds();
			return year + "-" + month + "-" + date;
		}
		$(".textbox").hover(function() {
			var datestar1 = $("#_easyui_textbox_input1").val();
			var datestar2 = dayadd(datestar1, 1);
			$("#_easyui_textbox_input2").val(datestar2);
			var datestar3 = dayadd(datestar2, 1);
			$("#_easyui_textbox_input3").val(datestar3);
			var datestar4 = dayadd(datestar3, 1);
			$("#_easyui_textbox_input4").val(datestar4);
			var datestar5 = dayadd(datestar4, 1);
			$("#_easyui_textbox_input5").val(datestar5);
			getDay(datestar1, 1);
			getDay(datestar2, 2);
			getDay(datestar3, 3);
			getDay(datestar4, 4);
			getDay(datestar5, 5);
		});

	})
</script>
<body>
	<div style=width:100%;height:100%;">
		<div style="margin-left:440px;">

			${yes}
			<form action="moacook/addcai" id="ff" method="post">
				<table title="添加菜谱">
					<tr>
						<td><input class="easyui-datebox" style="width:90%"
							name="cdate" editable="fasle"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week1" type="text"
							value="周一" style="width:40px;height:25px;" name="cweek" /></td>
						<td>早餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="breakfast">
								<c:forEach items="${list}" var="user" varStatus="breakfast">
									<option>${user.label}</option>
								</c:forEach>

						</select></td>
						<td>午餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="lunch">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>

						</select></td>
					</tr>

					<tr>
						<td><input class="easyui-datebox" style="width:90%"
							name="cdate1" editable="fasle"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week2" type="text"
							value="周二" style="width:40px;height:25px" name="cweek1" />
						</td>
						<td>早餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="breakfast1">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option value="${user.label}">${user.label}</option>

								</c:forEach>
								<td>午餐</td>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="lunch1">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option value="${user.label}">${user.label}</option>

								</c:forEach>

						</select></td>
					</tr>

					<tr>
						<td><input class="easyui-datebox" style="width:90%"
							name="cdate2" editable="fasle"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week3" type="text"
							value="周三" style="width:40px;height:25px" name="cweek2" />
						</td>
						<td>早餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="breakfast2">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>
								<td>午餐</td>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="lunch2">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>

						</select></td>
					</tr>
					<tr>

						<td><input class="easyui-datebox" style="width:90%"
							name="cdate3" editable="fasle"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week4" type="text"
							value="周四" style="width:40px;height:25px" name="cweek3" />
						</td>
						<td>早餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="breakfast3">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>
								<td>午餐</td>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="lunch3">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>

						</select></td>
					</tr>
					<tr>
						<td><input class="easyui-datebox" style="width:99.5%"
							name="cdate4" editable="fasle"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week5" type="text"
							value="周五" style="width:40px;height:25px" name="cweek4" />
						</td>
						<td>早餐</td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="breakfast4">
								<c:forEach items="${list}" var="user" varStatus="vs">
									<option>${user.label}</option>

								</c:forEach>
								<td>午餐</td>
						</select></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp; <select name="lunch4">
								<c:forEach items="${list}" var="user">
									<option>${user.label}</option>

								</c:forEach>

						</select></td>
					</tr>
				</table>
				<input type="submit" class="easyui-linkbutton" value="保存"
					style="width:45px;height:40px ;margin-left:160px;" />
				<!--  <a id="baocun" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">保存 -->
				<a href="moaweek/list" class="easyui-linkbutton"
					style="width:60px;height:40px ; margin:50px">返回列表 </a>
			</form>
		</div>
	</div>
</body>
</html>
