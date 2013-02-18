<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    String rootPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
%>
     <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css" /> 
     <link rel="stylesheet" type="text/css" href="assets/css/jquery.jqplot.min.css" /> 
<!--      <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"> -->
     
     <script type="text/javascript" src="assets/js/jquery-1.7.2.js"></script>
	 <script type="text/javascript" src="assets/js/bootstrap-modal.js"></script>
	 <script type="text/javascript" src="assets/js/bootstrap-transition.js" ></script>
	 <script type="text/javascript" src="assets/js/bootstrap-carousel.js" ></script>
	 <script type="text/javascript" src="assets/js/bootstrap-dropdown.js" ></script>
	 <script type="text/javascript" src="assets/js/bootstrap-alert.js" ></script>
	 <script type="text/javascript" src="assets/js/jquery-caretposition-getter.js"></script>
	 <script type="text/javascript" src="assets/js/bootstrap-popover.js"></script>
    
<%--      <script type="text/javascript" src="assets/js/jquery.form.js"></script> --%>
<%--      <script type="text/javascript" src="assets/js/ajaxfileupload.js"></script> --%>
   
   
<!--      jqPlot -->
<%--     <script type="text/javascript" src="assets/chart/jquery.jqplot.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="assets/chart/jqplot.barRenderer.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="assets/chart/jqplot.categoryAxisRenderer.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="assets/chart/jqplot.pointLabels.min.js"></script> --%>
<%--     <script type="text/javascript" src="assets/chart/jqplot.highlighter.min.js"></script> --%>
<%--     <script type="text/javascript" src="assets/chart/jqplot.cursor.min.js"></script> --%>
<%--     <script type="text/javascript" src="assets/chart/jqplot.pieRenderer.min.js"></script> --%>