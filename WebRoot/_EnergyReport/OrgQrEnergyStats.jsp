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
      		
      		<s:form action="OrgQrEnergyStatsUpdate" namespace="/_EnergyReport" theme = "simple">
      			<label>ѡ����Ҫ��ѯ�����</label>
				<s:select
				label="ѡ����Ҫ��ѯ�����" 
				list="orgqrenergystats_recordyear" 
				name="orgqrenergystats_recordyear_selected" 
				value="orgqrenergystats_recordyear_selected" />&nbsp;
				<label>ѡ����Ҫ��ѯ�ļ���</label>
				<s:select
				label="ѡ����Ҫ��ѯ�ļ���" 
				list="#{'1':'1', '2':'2', '3':'3', '4':'4'}"
				name="orgqrenergystats_quarter_selected" 
				value="orgqrenergystats_quarter_selected" />&nbsp;
				<s:submit value="��ѯ" name="submit"/>&nbsp;
			</s:form>
      		<br />
      		   		
      		<div class="page-reports">			
      		
      			<!--<h1>�����ܺ���Դ����ͳ�Ʋ���������ȣ���_��_�գ�_��1��</h1>  	
  				-->
  				<birt:viewer id="OrgQrEnergyStats"
	    			pattern="frameset"
					reportDesign="OrgQrEnergyStats.rptdesign"
					title="Org Qr Energy Stats"
					scrolling="true"
					position="relative"
					width="775"
					height="800"
					format="html"
					showTitle="true"
					showToolBar="true"
					showNavigationBar="true"
					showParameterPage="false">
					<birt:param name="OrgId" value='<%=session.getAttribute("orgid")%>'/>
					<birt:param name="Year" value="${orgqrenergystats_recordyear_selected}"/>
					<birt:param name="Quarter" value="${orgqrenergystats_quarter_selected}"/>
				</birt:viewer></div>
				
		</div></div></body>
</html>
