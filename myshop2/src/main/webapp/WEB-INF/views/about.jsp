<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
th{
	text-align: left;
	font-size: 12px;
	font-weight: bold;
	padding: 10px;
	
}
td {
	text-align:left;
	border: hidden;
	font-size: 9px;
}
.title{
	border-bottom: 1px solid gray;
}

input:focus {outline:none;}

textarea:focus{outline: none;}

#popup02{
    display: none;
}
#popup02{
	width: 300px;
	height: 400px;
	position: absolute;
	top: 55%;
	left: 60%;
	margin: -250px 0 0 -250px;
	background-color: #fff;
	z-index: 2;
	border-radius: 20px;

	margin-top: 10px;
   }
.backon2{
    content: "";
    width: 100%;
    height: 100%;
    background: #00000054;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1;
}
.close2{
  position:absolute;
  top:10px;
  right: 10;
  cursor:pointer;
}

#popup01,#popup03{
    display: none;
}
#popup01,#popup03{
	width: 500px;
	height: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -250px 0 0 -250px;
	background-color: #fff;
	z-index: 2;
	border-radius: 20px;

	margin-top: 10px;
   }
.backon,.backon3{
    content: "";
    width: 100%;
    height: 100%;
    background: #00000054;
    position: fixed;
    top: 0;
    left: 0;
    z-index: 1;
}
.close, .close3{
  position:absolute;
  top:10px;
  right: 10px;
  cursor:pointer;
}


#about {
	overflow:hidden
}
.box {
	width:450px;
	float:left;
}
#calendarTitle{
	font-family: 'Cafe24Ohsquareair';
	text-align: center;
	color: #f9e8b3;
	font-size: 20px;
	padding:10px;
}
#pop, #pop3{
	text-align: center;
}
#topTitle, #topTitle3{
	font-size: 30px;
	color: #323232;
}
#inputTitle, #reserveTitle{
	width: 350px;
	height: 35px;
	border-top: none;
	border-left: none;
	border-right: none;
	margin-bottom: 20px;
	padding: 10px;
	margin-top: 10px;
}
#contents, #contents3{
	resize: none;
	border: none;
	padding: 10px;
}

#start ,#start3{
	font-size: 10px;
	margin-left: 75px;
	position: absolute;
}
#end, #end3{
	font-size: 10px;
	position: relative;
	margin-left: 180px;
}
#date, #date3{
	text-align: left;
}
#submit, #submit3{
	height: 66px;
    width: 500px;
	border: none;
	background-color: #FF6F61;
	color: white;
	border-radius:0px 0px 20px 20px;
	margin-left: 0px;
}
#btnCustomerList{
	margin-left: 293px;
    margin-top: -25;
    height: 25px;
    width: 50px;
    font-size: 10px;
}
button {
	margin-left: 10px;
	height: 30px;
	border: none;
	background-color: #FF6F61;
	color: white;
	border-radius:10px;
	box-shadow: 0px 1px 3px #323232;

}
button:hover{
	background-color: #E2b9b3;
	margin-left: 10px;
	height: 30px;
	border: none;
	color: white;
	border-radius:10px;
	box-shadow: 0px 1px 3px #323232;
}
.pagination a{
	font-size: 10px;
}
input[type=text]{
	width: 100px;
	border: 3px solid #FF6F61;
	border-radius: 5px;
}
input[type=button]{
	font-size: 10px;
	width: 30px;
	border: none;
	background: #FF6F61;
	border-radius: 5px;
	color: white;
}
#tbl{
	margin-top: 30px;
}
.reserve_name{
	font-size: 12px;
	margin-left: 10px;
	color: coral;
	font-weight: bold;
}
.name_area{
	margin-left: 30px;
	font-size: 12px;
}

</style>    
<div id="about">

	<div id='calendar'></div>
	
	<div id="popup01">
    <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOit-AYSOk_mjMzZTIpek7BvWR5RSXVGIynPqJQJbBdDtcH8E0wvGkpSVYVSTTp69bdR8&usqp=CAU" width=40  class="close"></div>
	    <div id="pop">
	    	<p id="topTitle">?????? ??????</p>
	    	<div id="date">
		    	<input type="date" id="start" readOnly>
		    	<input type="date" id="end" readOnly>
		    	<button id="btnCustomerList">????????????</button><br>
	    	</div>
	    	<input type="text" id="inputTitle" placeholder="????????? ???????????????"><br>
	    	<textarea rows="15" cols="40" id="contents" placeholder="????????? ???????????????"></textarea><br>
	    	<button type="submit" id="submit">????????????</button>
	    </div>
	</div>
	<div id="popup02">
    <div>
    	<img src ="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOit-AYSOk_mjMzZTIpek7BvWR5RSXVGIynPqJQJbBdDtcH8E0wvGkpSVYVSTTp69bdR8&usqp=CAU" width=30 class="close2">
   	</div>
    
	<table id="tbl"></table>
	<script id="temp" type="text/x-handlebars-template">
			<tr id="frm">
				<th colspan=3 style="text-align:center; font-size: 15px">
					<span>
      					<input type="text" value="${param.keyword}" id="keyword" name="keyword"> 
     					<input type="button" value="??????" id="search">
    				</span>
				</th>
			</tr>
			<tr class="title">
				<th width>
					<p>??????</p>
				</th>
				<th width=50>??????</th>
				<th width=100>????????????</th>
			</tr>
		{{#each list}}
			<tr class = "row">
				<td>
					<input type="radio" value="{{cus_no}}" name="cus_no" class="cus_no">
				</td>
				<td class="cus_name">{{cus_name}}</td>
				<td>
					<span class = "tel">{{cus_tel}}</span>
				</td>
			</tr>
		{{/each}}
	</script>

	<div class="pagination"></div>
	</div>
	
	<div id="popup03">
    <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOit-AYSOk_mjMzZTIpek7BvWR5RSXVGIynPqJQJbBdDtcH8E0wvGkpSVYVSTTp69bdR8&usqp=CAU" width=40  class="close3"></div>
    	<div id="pop3">
    	<p id="topTitle3">?????? ??????</p>
    	<div id="reserveRead"></div>
    	<script id="temp3" type="text/x-handlebars-template">
	    	<div id="date3">
		    	<input type="date" id="start3" value="{{start}}">
		    	<input type="date" id="end3" value="{{end}}">
		    	<span class="name_area">?????????: <span class="reserve_name">{{cus_name}}</span>???</span><br>
	    	</div>
	    	<input type="text" id="reserveTitle" value="{{title}}"><br>
	    	<textarea rows="15" cols="40" id="contents3">{{content}}</textarea><br>
	    	<button type="submit" id="submit3">????????????</button>
		</script>
		</div>
	</div>
</div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
	var id = "${id}";
	  $(function () {
          var request = $.ajax({
              url: "/calendar/list", // ????????????
              method: "GET",
              data:{writer:id},
              dataType: "json"
          });

          request.done(function (info) {
                console.log(info); // log ??? ????????? ????????????.
				var calendarEl = document.getElementById('calendar');        
			       var calendar = new FullCalendar.Calendar(calendarEl, {
					 headerToolbar: {
			                left: 'prev,next,today',
			                center: 'title',
			                right: 'dayGridMonth,timeGridWeek,timeGridDay'
			         },
			         
			         initialView: 'dayGridMonth',	//?????? ?????????
			         selectable: true,		//????????????
			         locale: "ko",
		             navLinks: true, // can click day/week names to navigate views
		             selectable: true,
		             selectMirror: true,
		             allDaySlot: false,
		             slotMinTime:"10:00:00",
		             slotMaxTime:"21:00:00",
		             
		             select: function(arg) {

			           	  //???????????? ??????
					    $("#popup01").show();   //?????? ??????
					    $("body").append('<div class="backon"></div>'); //????????? ??????
					    var start = moment(arg.startStr).format('YYYY-MM-DD HH:mm:ss');
					    var end = moment(arg.endStr).format('YYYY-MM-DD HH:mm:ss');
					    var viewStart = moment(arg.startStr).format('YYYY-MM-DD');
					    var viewEnd = moment(arg.endStr).format('YYYY-MM-DD');
						$("#start").val(viewStart);
					    $("#end").val(viewEnd);
					    alert(start+end)
					    
					    $("body").on("click", function(event) { 
					        if(event.target.className == 'close' || event.target.className == 'backon'){
					            $("#popup01").hide(); //close?????? ????????? ????????? ????????? ?????? ??????
					            $(".backon").hide();
					            location.reload();
					        }
					      });
					
					    //???????????? ????????? ????????? ??????
					    $("#btnCustomerList").on("click",function(){
					    	 //???????????? ??????
						    $("#popup02").show();   //?????? ??????
						    $("#popup01").append('<div class="backon2"></div>'); //????????? ??????
						    var page="${param.page==null ? 1: param.page}";
						    var keyword="${param.keyword==null ? '': param.keyword}";
						    getList();
							
							function getList(){
							    $.ajax({
									type: "get",
									url: "/customer/list.json",
									data: {page:page, keyword:keyword},
									success:function(data){
										var template = Handlebars.compile($("#temp").html());
										$("#tbl").html(template(data));
										$(".pagination").html(getPagination(data));
										$(".row").each(function(){
											//???????????? ??????
											var num = $(this).find(".tel").html();
											var formatNum = '';
	
											if(num.length==11){
											    formatNum = num.replace(/(\d{3})(\d{4})(\d{4})/, '$1-$2-$3');
											}else if(num.length==8){
											    formatNum = num.replace(/(\d{4})(\d{4})/, '$1-$2');
											}else if(num.indexOf('02')==0){
											    formatNum = num.replace(/(\d{2})(\d{4})(\d{4})/, '$1-$2-$3');
											}else{
											    formatNum = num.replace(/(\d{3})(\d{3})(\d{4})/, '$1-$2-$3');
											}
												$(this).find(".tel").html(formatNum);
										});
										$(".row").on("click",function(){
											var target = $(this).find(".cus_no");
											target.attr("checked",true);
											var cus_no= target.val();
											var cus_name=$(this).find(".cus_name").html();
											$(".close2").click();
											$("#popup01").find("#btnCustomerList").html(cus_name);
											$("#popup01").find("#btnCustomerList").attr("cus_no",cus_no);
										})
									}
								});
							}
							$(".pagination").on("click", "a", function(e){
							     e.preventDefault();
							     page = $(this).attr("href");
							     getList();
							})
							$("#tbl").on("click", "#search", function(){
							   keyword = $("#keyword").val();
							   page = 1;
							   getList();
							})
							$("#tbl").on("keypress", "#keyword", function(e){
							   if(e.keyCode==13){
							      $("#search").click();
							   }
							})
						    $("body").on("click", function(event) { 
						        if(event.target.className == 'close2' || event.target.className == 'backon2'){
						            $("#popup02").hide(); //close?????? ????????? ????????? ????????? ?????? ??????
						            $(".backon2").hide();

						        }
					      	});
					    })
					    
					    //???????????? ????????? ????????? ??????
					    $("#submit").on("click",function(){
					    	  var title = $("#inputTitle").val();
			                  var content = $("#contents").val();
			                  var cus_no = $(this).closest("#popup01").find("#btnCustomerList").attr("cus_no");
			                  if(id==""){
			                	  alert("???????????? ???????????????");
			                  }else if(title == ""){
			                	  alert("????????? ???????????????");
			                	  $("#inputTitle").focus();
			                  }else if(content == ""){
			                	  alert("????????? ???????????????");
			                	  $("#content").focus();
			                  }else if(!cus_no){
			                	  alert("??????????????? ???????????????");
			                  }else{			          
			                	  $.ajax({
			                		  type: "post",
			                		  url:"/calendar/insert",
			                		  data: {writer:id, title:title, content:content, start:start, end:end, cus_no:cus_no},
			                	  	  success: function(){
			                	  		$("#inputTitle").val("");
			                	  		$("#contents").val("");
			                	  		$(this).closest("#popup01").find("#btnCustomerList").attr("");
			                	  		$(".close").click();
			                	  		alert("????????????");
			                	  		
			                	  		calendar.addEvent({
			     	                          title: title,
			     	                          content: content,
			     	                          start: arg.start,
			     	                          end: arg.end,
			     	                      })
			                	  	  }
			                	  });
			                  }
			                  calendar.unselect()
					    });
			             },
			             eventClick: function(arg) {
			            	 console.log(arg);
			
			            	 var obj = new Object();
			            	 obj.cno = arg.event._def.extendedProps.cno;
			            	 console.log(obj);
			            	 
			            	 var cno = obj.cno;
			            	 //???????????? ??????
						    $("#popup03").show();   //?????? ??????
						    $("body").append('<div class="backon3"></div>'); //????????? ??????

						    
						    $("body").on("click", function(event) { 
						        if(event.target.className == 'close3' || event.target.className == 'backon3'){
						            $("#popup03").hide(); //close?????? ????????? ????????? ????????? ?????? ??????
						            $(".backon3").hide();
						            location.reload();
						        }
						      });
			            	 getReserve();
			            	 
			            	 function getReserve(){
			            		 $.ajax({
			            			type: "post",
			            			url: "/calendar/read",
			            			data: {cno:cno},
			            			success:function(data){
			            				var template = Handlebars.compile($("#temp3").html());
			            				$("#reserveRead").html(template(data));
			            				console.log(data)
			            				var viewStart = moment(data.start).format('YYYY-MM-DD');
			            				var viewEnd = moment(data.end).format('YYYY-MM-DD');
			            				$("#start3").val(viewStart);
			            				$("#end3").val(viewEnd);
			            				
			            				$("#submit3").on("click", function(){
				   			            	 if (!confirm('????????? ???????????????????')) return
							            	 $.ajax({
							            		type:"post",
							            		url:"/calendar/delete",
							            		data:{cno:cno},
							            		success:function(){
							            			alert("????????????");
							            			 arg.event.remove();
							            			 location.reload();
							            		}
							            	 });
			            				});
		
			            			}
			            		 });
			            	 }

			             },
			             editable: true,
			             dayMaxEvents: true,
			             events: info,
			        });
			       
       	   calendar.render();
          });
	  });
});
</script>