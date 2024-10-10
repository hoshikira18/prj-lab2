<%-- 
    Document   : index.jsp
    Created on : Oct 11, 2024, 2:58:06 AM
    Author     : khuye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form action="lab2" method="GET">
                <div>
                    <div>
                        <div>
                            <label for="a">a = </label>
                            <input type="number" id="a" name="a">
                        </div>
                        <div>
                            <label for="b">b = </label>
                            <input type="number" id="b" name="b">
                        </div>
                        <div>
                            <label for="c">c = </label>
                            <input type="number" id="c" name="c">
                        </div>
                        <div>
                            <input type="submit" value="Calculate" name="Button">
                        </div>
                    </div>
                </div>

                <div>
                    <input type="submit" value="A" name="Button">
                    <input type="submit" value="B" name="Button">
                    <input type="submit" value="C" name="Button">
                    <input type="submit" value="D" name="Button">
                    <input type="submit" value="E" name="Button">
                    <input type="submit" value="F" name="Button">
                </div>

                <div>
                    <button type="submit" value="Insert" name="Button">Insert</button>
                </div>

                <div>
                    <h2>Student List</h2>
                    <div>
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Date of Birth</th>
                                    <th>Gender</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${students}" var="student">
                                    <tr>
                                        <td>${student.id}</td>
                                        <td>${student.name}</td>
                                        <td>${student.dob}</td>
                                        <td>
                                            <c:if test="${student.gender == true}">Male</c:if>
                                            <c:if test="${student.gender == false}">Female</c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div>
                    <h2>Employee List</h2>
                    <div>
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Date of Birth</th>
                                    <th>Gender</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${employees}" var="employee">
                                    <tr>
                                        <td>${employee.id}</td>
                                        <td>${employee.name}</td>
                                        <td>${employee.dob}</td>
                                        <td>
                                            <c:if test="${employee.gender == true}">Male</c:if>
                                            <c:if test="${employee.gender == false}">Female</c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div>
                    <h2>Emp_skill List</h2>
                    <div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Employee ID</th>
                                    <th>Skill ID</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${employee_Skills}" var="employee_Skill">
                                    <tr>
                                        <td>${employee_Skill.eid}</td>
                                        <td>${employee_Skill.sid}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
