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
        	<div class="er-left-info" style="cursor:pointer;" onclick="location.href='../_EnergyReport/OrgBaseInfo.action'"><h2><span>������Ϣ</span></h2></div>
    		<div class="er-left-infoaccount" style="cursor:pointer;" onclick="location.href='OrgInfoAccount.action'"><h2><span>������Ϣ̨��</span></h2></div>
    		<div class="er-left-energy" style="cursor:pointer;" onclick="location.href='OrgEnergyItemResult.action'"><h2><span>�ܺ�ͳ��</span></h2></div>
    		<div class="er-left-energyaccount" style="cursor:pointer;" onclick="location.href='OrgEnergyAccount.action'"><h2><span>�ܺ�ͳ��̨��</span></h2></div>		
    	</div>
    	
    	<div class="er-page-right">
      		<div class="er-site-nav">
      			<span>��ǰλ�� : </span>
      			<a href="../index.jsp">��˾��ҳ</a> &gt;&gt; 
      			<a href="../_EnergyReport/OrgBaseInfo.action" title="�ܺı���">�ܺı���</a>&gt;&gt; 
      			<a href="../_EnergyReport/OrgBaseInfo.action" title="�ܻ���">�ܻ���</a>
      		</div>
      		
      		<h2>��������ҵ��<%=session.getAttribute("orgname")%>����ҵ���룺<%=session.getAttribute("orgid")%></h2>
      		<br />		
      		
      		<s:form action="OrgEnergyItemResultUpdate" namespace="/_EnergyReport" theme = "simple">
				<s:label>ѡ����Ҫ��ѯ�����</s:label>
				<s:select
				label="ѡ����Ҫ��ѯ�����" 
				list="orgenergyaccount_recordyear" 
				name="orgenergyaccount_recordyear_selected" 
				value="orgenergyaccount_recordyear_selected" />
				<s:submit value="��ѯ" name="submit"/>
			</s:form>
      		<br />
      		   		
      		<div class="page-reports">			    				

			<!--<h1>�ܻ�������ܺ���Ϣͳ��̨�ʣ�̨��2��</h1>
					-->
				<birt:viewer id="OrgEnergyAccount"
	    				pattern="frameset"
						reportDesign="OrgEnergyAccount.rptdesign"
						title="Org Energy Account"
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
					<birt:param name="Year" value="${orgenergyaccount_recordyear_selected}"/>
				</birt:viewer></div>
		
		</div></div></body>
</html>
