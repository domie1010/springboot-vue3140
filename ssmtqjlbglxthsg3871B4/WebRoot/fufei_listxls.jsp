<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<jsp:useBean id="fufeihsgb" scope="page" class="com.bean.FufeiBean" /> 

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=fufei.xls");
%>
<html>
  <head>
    <title>����</title>
  </head>

  <body >
 <%
			String sql="select * from fufei  order by id desc";

			
			%>
<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td align='center'>������</td>    <td align='center'>ÿСʱ�Ʒ�</td>    <td align='center'>��ʱ��</td>    <td align='center'>��Ա���</td>    <td align='center'>����</td>    <td align='center'>��Ա�ȼ�</td>    <td align='center'>�ۿ�</td>    <td align='center'>�ܽ��</td>        <td  width='80' align='center'>�Ƿ����</td>
	
    <td width="120" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
  </tr>
   <%		
				List pagelist3=fufeihsgb.getAllFufei(12);
			if(!pagelist3.isEmpty()){
				for(int i=0;i<pagelist3.size();i++){
					List pagelist2 =(ArrayList)pagelist3.get(i);
			%>
  <tr>
    <td  align="center"><%=i+1 %></td>
    <td>${u.qiuzhuohao}</td>    <td>${u.meixiaoshijifei}</td>    <td>${u.zongshichang}</td>    <td>${u.huiyuanbianhao}</td>    <td>${u.xingming}</td>    <td>${u.huiyuandengji}</td>    <td>${u.zhekou}</td>    <td>${u.zongjine}</td>        <td align='center'>${u.issh} <input type="button" value="���" onclick="javascript:location.href='sh.jsp?id=${u.id}&yuan=${u.issh}&tablename=fufei'"/></td>
	
	
   
  </tr>
  	<%
  }}
   %>
   
</table>
<br>
  </body>
</html>

