<%@ include file="../common/header.jspf" %>

<title>Struts 2 - Login Application</title>
</head>
 
<body>
 
    <jsp:include page="../common/_menu.jsp" />
 
 
    <h2>Struts 2 - Login Application</h2>
    <s:actionerror />
 
    <s:form action="/login" method="post">
        <s:textfield name="username" key="label.username" size="20" />
        <s:password name="password" key="label.password" size="20" />
        <s:submit method="execute" key="label.login" align="center" />
    </s:form>
     
    <br>
    Username: admin, password: admin123
 
<%@ include file="../common/footer.jspf" %>