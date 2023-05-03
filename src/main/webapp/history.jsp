<%@page import = "java.util.ArrayList"%>
<%@page import = "com.searchEngine.HistoryResult"%>
<html>
<head>
    <link rel = "stylesheet" type = text/css href = "styles.css" >
</head>
<body>
<h1>My Search Engine</h1>
<form action = "Search">
    <input type = "text" name = "keyword"></input>
    <button type = "Submit">Search</button>
</form>
    <table border = 2 class = "resultTable">
        <tr>
            <th>Keyword</th>
        </tr>
        <%
            ArrayList<HistoryResult> results = (ArrayList<HistoryResult>)request.getAttribute("results");
            for(HistoryResult result : results){
        %>
        <tr>
            <td><a href = "<%out.println(result.getLink());%>"><% out.println(result.getKeyword()); %></a></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
