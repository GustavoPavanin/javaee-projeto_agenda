<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
	@ SuppressWarnings ("unchecked")
	ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="images/favicon.png" />
<link rel="stylesheet" href="style.css" />
<!-- load MUI -->
<link href="//cdn.muicss.com/mui-0.10.3/css/mui.min.css"
	rel="stylesheet" type="text/css" />
<script src="//cdn.muicss.com/mui-0.10.3/js/mui.min.js"></script>
</head>
<body>
	<div class="mui-panel">
		<h1>Agenda de contatos</h1>
		<a href="novo.html" class="mui-btn mui-btn--primary">Novo contato</a>
		<a href="report" class="mui-btn mui-btn--accent">Relatório</a>
		<table id="tabela">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>Fone</th>
					<th>Email</th>
					<th>Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (int i = 0; i < lista.size(); i++) {
				%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getFone()%></td>
					<td><%=lista.get(i).getEmail()%></td>
					<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>"
						class="mui-btn mui-btn--primary">Editar</a> <a
						href="javascript: confirmar(<%=lista.get(i).getIdcon()%>)"
						class="mui-btn mui-btn--danger">Excluir</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
			<%

			%>
		</table>
	</div>
	<script src="scripts/confirmador.js"></script>
</body>
</html>