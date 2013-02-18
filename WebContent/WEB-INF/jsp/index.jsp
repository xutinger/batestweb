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
			<li><a href="#contact">联系</a></li>
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
    <script type="text/javascript">
       function change(id){
    	   if(id == 1){
    		   $('#tt').html("加利福尼亚(CA)");
    		   $('#lo').val("CA");
    	   }else{
    		   $('#tt').html("新泽西州(NJ)");
    		   $('#lo').val("NJ");
    	   }
       }
    </script>
   <div class="container">
      <span  style="font-size:20px;"><strong id="tt">加利福尼亚(CA)</strong></span>
       <div class="btn-group pull-right">
					    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					              <i class="icon-inbox"></i>位置
					    <span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
							<li><a href="#" onclick="change(1)">加利福尼亚(CA)</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="change(2)">新泽西州(NJ)</a></li>
					    </ul>
		             </div>
		             <hr />
		    <span><strong>你可以选择自定义模式或者使用已建立的模板订单</strong></span>           
		              <div class="btn-group pull-right">
					    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					              <i class="icon-shopping-cart"></i>使用模板
					    <span class="caret"></span>
					    </a>
					    <ul class="dropdown-menu">
							<li><a href="#" onclick="show(1)">Use case 1:</a></li>
							<li><a href="#" onclick="show(2)">Use case 2:</a></li>
							<li><a href="#" onclick="show(3)">Use case 3:</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="show(4)">自定义</a></li>
					    </ul>
		             </div>
   </div>
      <br />
   <div class="container" id="demo">
     <div id="case1" class="wellnotcolor" >
            <span><strong>购物单1-加利福尼亚(CA)</strong></span>
            <table class="table table-hover">
             <tr>
              <td>item</td>
              <td>price</td>
              <td>qty</td>
             </tr>
             <tr>
              <td>book</td>
              <td>$12.99</td>
              <td>1</td>
             </tr>
             <tr>
              <td>potato chips</td>
              <td>$3.99</td>
              <td>1</td>
             </tr>
           </table>
           <span class="pull-right"><a href="checkByDemo?demo=1&location=CA" class="btn btn-success btn-large">结算</a></span>
           <br />
           <br />
     </div>
     
      <div id="case2" class="wellnotcolor" style="display:none">
            <span><strong>购物单2-新泽西州(NJ)</strong></span>
            <table class="table table-hover">
             <tr>
              <td>item</td>
              <td>price</td>
              <td>qty</td>
             </tr>
             <tr>
              <td>book</td>
              <td>$12.99</td>
              <td>1</td>
             </tr>
             <tr>
              <td>music cd</td>
              <td>$9.99</td>
              <td>3</td>
             </tr>
           </table>
           <span class="pull-right"><a href="checkByDemo?demo=2&location=NJ" class="btn btn-success btn-large">结算</a></span>
           <br />
           <br />
     </div>
     
     <div id="case3" class="wellnotcolor" style="display:none">
            <span><strong>购物单3-新泽西州(NJ)</strong></span>
            <table class="table table-hover">
             <tr>
              <td>item</td>
              <td>price</td>
              <td>qty</td>
             </tr>
             <tr>
              <td>music cd1</td>
              <td>$9.99</td>
              <td>2</td>
             </tr>
             <tr>
              <td>sweater</td>
              <td>$29.99</td>
              <td>1</td>
             </tr>
           </table>
           <span class="pull-right"><a href="checkByDemo?demo=3&location=NJ" class="btn btn-success btn-large">结算</a></span>
           <br />
           <br />
     </div>
   </div>
   <div class="container" id="base" style="display:none">
    <div class="wellnotcolor">
       <div class="form-inline">
           <input type="text" style="width:360px" id="mname" class="input-block-level" placeholder="商品名称" />
           <input type="text" style="width:100px" id="num" class="input-block-level" placeholder="数量" />
           <input type="text" style="width:100px" id="money" class="input-block-level" placeholder="单价" />
           <select id="type"  style="width:120px">
			   <option value="BASE">基本</option>
			   <option value="FOOD">食物</option>
			   <option value="CLOTHES">衣服</option>
			 </select>
			 <button class="btn pull-right" onclick="addList()"><i class="icon-plus"></i>添加</button> 
       </div>
       <br />
        <table id="listtable" class="table table-striped table-bordered table-condensed">
        <tr>
          <td>item</td>
              <td>price</td>
              <td>qty</td>
              <td>type</td>
         </tr>
       </table>
        <a class="btn btn-success btn-large pull-right" href="#" onclick="add()">结算</a>
        <br />
        <br />
       </div>
   </div>
   
    <form id="tfrom" action="checkByFree" method="post" style="display:none">
       <input id="lo" name="location" value="CA"/>
       <table id="upfrom">
       
       </table>
     </form>
   
   <script type="text/javascript">
   
   var namearray = new Array();
   var typearray = new Array();
   var slarray = new Array();
   var jearray = new Array();
   
  
   
   function addList(){
	   var name = $("#mname").val();
	   var type = $("#type").val();
	   var num = $("#num").val();
	   var money = $("#money").val();
	   
	   if(name.trim() == ""){
		  alert("你还没输入商品名称");
		   return;
	   }
	   
	   if(num.trim() == ""){
		   alert("你还没输入商品数量");
		   return;
	   }else{
		   var regu = /^[-]{0,1}[0-9]{1,}$/;
		   if(!regu.test(num.trim())){
			   alert("商品数量格式有误"); 
			   return;
		   }
	   }
	   
	   if(money.trim() == ""){
		   alert("你还没输入商品单价");
		   return;
	   }else{
		   if(isNaN(money)){
			   alert("商品单价格式有误"); 
			   return;
		   }
	   }
	   $("#listtable").append("<tr>"
	    +"<td>"+name+"</td>"
        +"<td>"+money+"</td>"
        +"<td>"+num+"</td>"
        +"<td>"+type+"</td>"
        +"</tr>"); 
	   
   }
   
   
   </script>
   <script type="text/javascript">
   
   function add(){
		  
		$("#listtable tr td:nth-child(1)").each(function(i){
			if(i!=0){
				var s = $(this).text();
				namearray.push(s);
			}
			
		});
		$("#listtable tr td:nth-child(4)").each(function(i){
			if(i!=0){
				var s = $(this).text();
				typearray.push(s);
			}
		});
		$("#listtable tr td:nth-child(2)").each(function(i){
			if(i!=0){
				var s = $(this).text();
				jearray.push(s);
			}
		});
		$("#listtable tr td:nth-child(3)").each(function(i){
			if(i!=0){
				var s = $(this).text();
				slarray.push(s);
			}
		});
		for(var i=0;i<typearray.length;i++){
			$("#upfrom").append("<tr><td>"
			        +"<input name='list["+i+"].name' value="+namearray[i]+" />"
			        +"<input name='list["+i+"].type' value="+typearray[i]+" />"
			        +"<input  name='list["+i+"].quantity' value="+slarray[i]+" />"
			        +"<input name='list["+i+"].money' value="+jearray[i]+" />"
					+"</td></tr>"); 
		}
		$("#tfrom").submit();
		
 }  
   
   
   </script>
   
   <script type="text/javascript">
      function show(location){
    	  if(location == 1){
    		  $('#base').hide();
    		  $('#demo').show();
    		  $('#case1').show();
    		  $('#case2').hide();
    		  $('#case3').hide();
    	  }else if(location == 2){
    		  $('#base').hide();
    		  $('#demo').show();
    		  $('#case2').show();
    		  $('#case1').hide();
    		  $('#case3').hide();
    	  }else if(location == 3){
    		  $('#base').hide();
    		  $('#demo').show();
    		  $('#case3').show();
    		  $('#case1').hide();
    		  $('#case2').hide();
    	  }else if(location == 4){
    		  $('#demo').hide();
    		  $('#base').show();
    		  $('#case3').hide();
    		  $('#case1').hide();
    		  $('#case2').hide();
    	  }
    	  
      }
   </script>
   
 </body>
</html> 
