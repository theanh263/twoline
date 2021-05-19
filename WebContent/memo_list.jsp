<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.ArrayList"  %>
    <%@ page import="twoline.OnelineDAO" %>
    <%@ page import="twoline.OnelineDTO" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width">
<title>웝 서비스 실습</title>
 <style> 
 	@import url('https://fonts.googleapis.com/css2?family=Poor+Story&display=swap'); 
	* { 
			font-family: 'Poor Story', cursive; 
			text-align: center;  		} 
 	#postIt { 
 	 border: 3px solid black; 
	 background-color: orange; 
 	 width: 800px; 
 	 height: auto; 
 	 margin: auto; 
 	}  	 
 	#text { 
 	 font-size: 20px; 
 	} 
 	 
 	#box { 
 	 width : 400px; 
 	 height : 30px; 
 	 text-align: left; 
	 font-size: 25px; 
	 border: solid black 2px; 
	} 
 	 
 	#button {		box-sizing: border-box; 
 		height: 30px; 
 		width: 100px; 
 		margin: 10px; 
 		border: solid 2px; 
		border-radius: 7px; 
		background-color: #CCCC33; 
 	} 
 	 
     #button:hover { 
 		background-color: black; 
 		color: white; 
 		border-color:black;  	} 
 	 
 	hr { 
 		border: solid black; 
 	} 
 	p { 
 	 font-size: 25px; 
 	 margin: 40px auto; 
 	} 
 	 
 	p input { 
 		box-sizing: border-box; 
 		height: 30px; 
 		width: 40px; 
 		border: solid 2px; 
		border-radius: 10px; 
 		background-color: #FF0000; 
		font-size: 20px; 
 		font-weight: bold; 
 	} 
	 
 	p input:hover { 
 		background-color: black; 
		color: white; 
 		border: solid black; 
	} 
 </style> 
</head>
  <%
     OnelineDAO dao=new OnelineDAO();
     ArrayList<OnelineDTO> dtos=dao.getlist();
     
   %>
<body style="background-color:#FFCC66;">

<div id="postIt">
<h1><ins>메모장</ins></h1>
    <form method="post" action="memo_write.jsp">
    <div>
          <input id="box" type="text" name="memo" placeholder="메모를 입력하세요!!"></input> 
          <label><input id="button" type="submit" value="등록"></input></label>
    </div> 
    </form>     


<div> 
<% for(int i=0;i<dtos.size();i++){
	OnelineDTO dto=dtos.get(i);
     	
     	out.println("<p>("+ dto.getWdate() +")" + dto.getMemo() +
     			"<input type=\"button\" value=\"X\" onClick=\"location.href='memo_delete1.jsp?no="+dto.getNo()+"'\"><br>");
     	out.println("</input></p>");
     }
     
     
   %>
 		
		
		
 </div> 
 
 </div>
</body>
</html>



