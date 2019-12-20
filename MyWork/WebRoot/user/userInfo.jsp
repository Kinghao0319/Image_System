<%@ page language="java" import="java.util.*,com.yhh.pojo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });

  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>


</head>


<body class="add-body">

  <div class="left-top">
    <li style="margin-left:10px;font-size:18px;">位置：

    
    <a href="#" style="color:silver;">个人信息>个人首页>查看个人信息</a>
    
    </li>
  </div>


      <div class="add-form">
        <table border="1" style="border-radius: 5px; width:400px;cellspacing:1px">
                     <tr>
                         <td class="label">个人ID</td>
                         <td><%=((User)session.getAttribute("user")).getUid() %></td>
                     </tr>
                     <tr>
                         <td class="label">用户名</td>
                         <td><%=((User)session.getAttribute("user")).getUname() %></td>
                     </tr>
                     <tr>
                         <td class="label">密码</td>
                         <td><%=((User)session.getAttribute("user")).getPwd() %></td>
                     </tr>
                     <tr>
                         <td class="label">性别</td>
                         <%
                         	String sex=((User)session.getAttribute("user")).getSex();
                         	if("1".equals(sex)){
                         %>
                         <td>男</td>
                         <%}else{ %>
                         <td>女</td>
                         <%}%>

                     </tr>
                     <tr>
                         <td class="label">年龄</td>
                         <td ><%=((User)session.getAttribute("user")).getAge() %></td>
                     </tr>
                     <tr>
                         <td class="label">出生年月</td>
                         <td><%=((User)session.getAttribute("user")).getBirth() %></td>
                     </tr>

     		</table>


      </div>



<!--
    <div class="tip">
    	<div class="tiptop"><span>提示信息</span><a></a></div>

      <div class="tipinfo">
        <span><img src="images/ticon.png" /></span>
        <div class="tipright">
        <p>是否确认对信息的修改 ？</p>
        <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
        </div>
        </div>

        <div class="tipbtn">
        <input name="" type="button"  class="sure" value="确定" />&nbsp;
        <input name="" type="button"  class="cancel" value="取消" />
        </div>

    </div>
-->



    </div>

    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>

</body>

</html>
