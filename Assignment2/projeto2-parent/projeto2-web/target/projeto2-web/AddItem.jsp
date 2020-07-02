<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="ISO-8859-1" session="false"%>

<%
HttpSession session = request.getSession(false);
String user = (String) session.getAttribute("email");

if(user==null){
    response.sendRedirect("Error.jsp");
}
%>

<html>
<title>MyBay - Add Item</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../lib/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<header class="w3-container w3-black">
  <h1>Add Item</h1>
</header>

<div class="w3-container w3-half w3-margin-top">

    <form method="post" action="AddItem" enctype="multipart/form-data" class="w3-container w3-card-4">

        <p>
            <input class="w3-input" type="text" name="name" style="width:90%">
            <label class="w3-label w3-validate">Item name</label></p>
        <p>
            <input class="w3-input" type="text" name="category" style="width:90%">
            <label class="w3-label w3-validate">Category</label></p>
        <p>
            <input class="w3-input" type="text" name="country" style="width:90%">
            <label class="w3-label w3-validate">Country of Origin</label></p>
        <p>
            <input class="w3-input" type="text" name="price" style="width:90%">
            <label class="w3-label w3-validate">Price(&euro;)</label></p>
            
            <td><input type="file" name = "photo" size="50"></input></td><br><br>
            
        <p>
        <input class="w3-btn w3-section w3-deep-purple w3-ripple" type="submit" value="Add" >
        <p class="w3-right"><a href="InitialMenu.jsp">Logout!</a></p></p>
    </form>

</div>

</body>
</html> 