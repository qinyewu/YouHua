<%@ page session="true" contentType="text/html; charset=gbk" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
	jdbcDriver="com.mysql.jdbc.Driver" 
	jdbcUrl="jdbc:mysql://localhost:3306/tezz" 
	catalogUri="/WEB-INF/queries/tezz.xml"
    jdbcUser="root" jdbcPassword="root" connectionPooling="false">
	select {[Measures].[����],[Measures].[ƽ������],[Measures].[�����۶�]} ON columns,
       {([��Ʒ���].[���в�Ʒ],[�ͻ��Ա�].[�����Ա�])} ON rows
	from [Sales]
</jp:mondrianQuery>

<c:set var="title01" scope="session">Sales</c:set>
