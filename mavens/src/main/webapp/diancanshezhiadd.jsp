<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
	window.onload = function() {

	};
	$(function() {
		
		var date=new Date();
		if(date.getHours()==22){
			if(date.getMinutes()>30){
				$("#div1").hide();
				 $.messager.alert("系统信息","打烊了！欢迎下次光临！");
			}
		}else if(date.getHours()>22){
			$("#div1").hide();
			 $.messager.alert("系统信息","打烊了！欢迎下次光临！");
		}
		
		
				function getWeek(dateString) {
					var date;
					if (isNull(dateString)) {
						date = new Date();
					} else {
						var dateArray = dateString.split("-");
						date = new Date(dateArray[0],
								parseInt(dateArray[1] - 1), dateArray[2]);
					}
					var weeks = new Array("日", "一", "二", "三", "四", "五", "六");
					return "周" + weeks[date.getDay()];
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
							text = "周日";
							break;
						case 1:
							text = "周一";
							break;
						case 2:
							text = "周二";
							break;
						case 3:
							text = "周三";
							break;
						case 4:
							text = "周四";
							break;
						case 5:
							text = "周五";
							break;
						case 6:
							text = "周六";
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
							+ (datetime.getMonth() + 1)
							: datetime.getMonth() + 1;
					var date = datetime.getDate() < 10 ? "0"
							+ datetime.getDate() : datetime.getDate();
					var hour = datetime.getHours() < 10 ? "0"
							+ datetime.getHours() : datetime.getHours();
					var minute = datetime.getMinutes() < 10 ? "0"
							+ datetime.getMinutes() : datetime.getMinutes();
					var second = datetime.getSeconds() < 10 ? "0"
							+ datetime.getSeconds() : datetime.getSeconds();
					return year + "-" + month + "-" + date;
				}
				$(".textbox").hover(function() {
					var datestar1 = $("#_easyui_textbox_input4").val();
					var datestar2 = dayadd(datestar1, 1);
					/* $("#_easyui_textbox_input2").val(datestar2);
					var datestar3= dayadd(datestar2,1);
					$("#_easyui_textbox_input3").val(datestar3);
					var datestar4= dayadd(datestar3,1);
					$("#_easyui_textbox_input4").val(datestar4);
					var datestar5= dayadd(datestar4,1);
					$("#_easyui_textbox_input5").val(datestar5); */
					getDay(datestar1, 1);
					getDay(datestar2, 2);
					getDay(datestar3, 3);
					getDay(datestar4, 4);
					getDay(datestar5, 5);
				});

			})
</script>
<body>
	<div id="div1" style=width:100%;height:100%;>
		<div>

			<span style="font-size: 16px red"> ${yes}</span>
			<form action="moaOrderse/add">
				<table title="点餐设置添加">
					<tr>
						<td><input class="easyui-datebox" required="required"
							editable="fasle" style="width:90%" name="createDate"></input></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;<input class="week1" type="text"
							value="周一" style="width:40px;height:25px;" name="oneweek" />
						</td>
					</tr>
					<tr>
						<td><span>菜名</span> <input class="easyui-combobox"
							name="dish"
							data-options="
					url:'moaOrderse/selAll',
					method:'get',
					valueField:'dish',
					
					textField:'dish',
					groupField:'group'
			">
						</td>

						<td><span>设置上限</span> <input id="wnumber" name="onemaxcount"
							onkeyup="this.value=this.value.replace(/\D/g,'')"
							onafterpaste="this.value=this.value.replace(/\D/g,'')"></input></td>

					</tr>
					<tr>
						<td><span>菜名</span> <input class="easyui-combobox"
							name="language"
							data-options="
					url:'moaOrderse/selAll',
					method:'get',
					valueField:'dish',
					textField:'dish',
					groupField:'group'
			">
						</td>

						<td><span>设置上限</span> <input id="wnumber" name="onemaxcount1"
							onkeyup="this.value=this.value.replace(/\D/g,'')"
							onafterpaste="this.value=this.value.replace(/\D/g,'')"></input></td>

					</tr>
					<tr>
						<td><span>菜名</span> <input class="easyui-combobox"
							name="language"
							data-options="
					url:'moaOrderse/selAll',
					method:'get',
					valueField:'dish',
					
					textField:'dish',
					groupField:'group'
			">
						</td>

						<td><span>设置上限</span> <input id="wnumber" name="onemaxcount2"
							onkeyup="this.value=this.value.replace(/\D/g,'')"
							onafterpaste="this.value=this.value.replace(/\D/g,'')"></input></td>

					</tr>


				</table>
				<input type="submit" class="easyui-linkbutton" value="保存"
					style="width:45px;" /> <a href="orderCook/selAll"
					class="easyui-linkbutton">返回列表 </a>
			</form>
		</div>
	</div>
</body>
</html>
