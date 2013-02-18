<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>北岸面试题demo</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

</head>


<body>
 <%@ include file="../../../baseconfig.jsp"%>
<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="index">北岸面试题demo</a>
				<div class="nav-collapse">
					   <ul class="nav">
             <li class="divider-vertical"></li>
			<li ><a href="index">首页</a></li>
			<li class="divider-vertical"></li>
            </ul>
					 <p class="navbar-text pull-right">刘一江</p>
				</div>
				<!--/.nav-collapse<i class="icon-user"></i> -->
			</div>
		</div>
	</div>
	<br />
	<br />
    <br />
    <div class="container">
      <div class="wellnotcolor">
        <table class="table table-hover">
             <tr>
              <td>item</td>
              <td>price</td>
              <td>qty</td>
             </tr>
           <s:iterator value="list" var="bd" status="st">
               <tr>
              <td><s:property value="#bd.name"/></td>
              <td><s:property value="#bd.money"/></td>
              <td><s:property value="#bd.quantity"/></td>
             </tr>
           </s:iterator>
          </table>
          <span>subtotal:${avo.subtotal }</span><br/>
           <span>tax:${avo.tax }</span><br/>
            <span>total:${avo.total }</span>
      </div>
    </div>
</body>
</html>