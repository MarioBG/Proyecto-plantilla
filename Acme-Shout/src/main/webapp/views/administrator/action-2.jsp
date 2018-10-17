<%--
 * action-2.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<script src="scripts/Chart.bundle.js"></script>

	<spring:message code="administrator.indicator" var="indicatorText"/>
	<spring:message code="administrator.count.all.shouts" var="allShoutsText"/>
	<spring:message code="administrator.count.short.shouts" var="shortShoutsText"/>
	<spring:message code="administrator.count.long.shouts" var="longShoutsText"/>
	<spring:message code="administrator.shouts" var="shoutsText"/>
	
	

	<div id="container" style="width: 75%;">
		<canvas id="canvas"></canvas>
	</div>
	<script>
	var canvas = $("#canvas");
	var barChart = new Chart(canvas, {
		  type: 'bar',
		  data: {
		    labels: ["${allShoutsText}", "${shortShoutsText}", "${longShoutsText}"],
		    datasets: [{
		      label: "${shoutsText}",
		      data: ["${statistics['count-all-shouts']}", "${statistics['count-short-shouts']}", "${statistics['count-long-shouts']}", 1, 1, 1],
		      backgroundColor: [
		        'rgba(255, 99, 132, 0.6)',
		        'rgba(54, 162, 235, 0.6)',
		        'rgba(255, 206, 86, 0.6)'
		      ]
		    }]
		  }
		});
	</script>
