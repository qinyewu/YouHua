<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/birt.tld" prefix="birt" %>
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>ʵʱ���</title>

  </head>
  <body>
    	<div id="er_page_main" class="clearfix">
  	
  	    <div class="er-page-left"> 		    		    
        	<div class="er-left-depinfoaccount" style="cursor:pointer;" onclick="location.href='../_EnergyReport/DepInfoAccount.action'"><h2><span>������Ϣ̨��</span></h2></div>
        	<div class="er-left-orgqrenergystats" style="cursor:pointer;" onclick="location.href='OrgQrEnergyStats.action'"><h2><span>�����������ܺ�ͳ��</span></h2></div>
        	<div class="er-left-depenergyaccount" style="cursor:pointer;" onclick="location.href='DepEnergyAccount.action'"><h2><span>�����ܺ�̨��</span></h2></div>
    	</div>
    	    	
    	<div class="er-page-right">
      		<div class="er-site-nav">
      			<span>��ǰλ�� : </span>
      			<a href="../index.jsp">��˾��ҳ</a> &gt;&gt; 
      			<a href="../_EnergyReport/OrgBaseInfo.action" title="�ܺı���">�ܺı���</a>&gt;&gt; 
      			<a href="../_EnergyReport/DepInfoAccount.action" title="������">������</a>
      		</div>
      		
      		<h2>��������ҵ��<%=session.getAttribute("orgname")%>����ҵ���룺<%=session.getAttribute("orgid")%></h2>
      		<br />		
      		
      		<s:form action="DepEnergyAccountUpdate" namespace="/_EnergyReport" theme = "simple">
				<s:label>ѡ����Ҫ��ѯ�����</s:label>
				<s:select
				label="ѡ����Ҫ��ѯ�����" 
				list="depenergyaccount_recordyear" 
				name="depenergyaccount_recordyear_selected" 
				value="depenergyaccount_recordyear_selected" />&nbsp;
				<s:label>ѡ����Ҫ��ѯ�Ĳ��Ŵ���</s:label>
				<s:select
				label="ѡ����Ҫ��ѯ�Ĳ��Ŵ���" 
				list="depenergyaccount_departid" 
				name="depenergyaccount_departid_selected" 
				value="depenergyaccount_departid_selected" />&nbsp;
				<s:submit value="��ѯ" name="submit"/>
			</s:form>
      		<br />
      		   		
      		<div class="page-reports">			

  			<!--<h1>��������ܺ���Ϣͳ��̨�ʣ�̨��2��</h1>  	
  				-->
  				<birt:viewer id="DepEnergyAccount"
	    			pattern="frameset"
					reportDesign="DepEnergyAccount.rptdesign"
					title="Depart Energy Account"
					scrolling="true"
					position="relative"
					width="775"
					height="800"
					format="html"
					showTitle="true"
					showToolBar="true"
					showNavigationBar="true"
					showParameterPage="false">
					<birt:param name="FatherId" value='<%=session.getAttribute("orgid")%>'/>
					<birt:param name="Year" value="${depenergyaccount_recordyear_selected}"/>
					<birt:param name="DepId" value="${depenergyaccount_departid_selected}"/>
				</birt:viewer></div>
				
		</div></div></body>
</html>
