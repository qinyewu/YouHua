<%@ page session="true" contentType="text/html; charset=gbk" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://192.168.0.100:3307/olap" 
	catalogUri="/WEB-INF/queries/olap.xml"
    jdbcUser="root" jdbcPassword="root" connectionPooling="false">
	select {[Measures].[�ܺ�ֵ]} ON columns,
       {([��������].[���л�������], [����].[��������], [�ܺ���].[�����ܺ���])} ON rows
	from [Energy]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Energy</c:set>
