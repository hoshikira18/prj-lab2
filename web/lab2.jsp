<%-- 
    Document   : lab2.jsp
    Created on : Oct 11, 2024, 7:59:01 AM
    Author     : khuye
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    </head>
    <body class="h-screen">
        <div class="my-auto max-w-screen-xl mx-auto mt-10">
        <form action="lab2" method="GET" class="space-y-5">
            <p>Name = <input name="keyword" class="p-3 border-2 border-black/80 rounded-md" /> <input type="submit" value="Search" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 outline-none p-3 border-2 border-black/80 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">

            <div class="bg-white shadow-md rounded-lg p-6">
                <h2 class="text-xl font-semibold mb-4">Student List</h2>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date of Birth</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Gender</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            <c:forEach items="${students}" var="student">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">${student.id}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">${student.name}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">${student.dob}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <c:if test="${student.gender == true}">Male</c:if>
                                        <c:if test="${student.gender == false}">Female</c:if>
                                        </td>
                                    </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            
              <button type="submit" value="A" name="Button" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">A</button>
                   
                <button type="submit" value="B" name="Button" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">B</button>
                   
            <div class="bg-white shadow-md rounded-lg p-6">
                <h2 class="text-xl font-semibold mb-4">Employee List</h2>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">ID</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Name</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Date of Birth</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Gender</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            <c:forEach items="${employees}" var="employee">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">${employee.id}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">${employee.name}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">${employee.dob}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <c:if test="${employee.gender == true}">Male</c:if>
                                        <c:if test="${employee.gender == false}">Female</c:if>
                                        </td>
                                    </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="bg-white shadow-md rounded-lg p-6">
                <h2 class="text-xl font-semibold mb-4">Emp_skill List</h2>
                <div class="overflow-x-auto">
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                            <tr>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Employee ID</th>
                                <th class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Skill ID</th>
                            </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            <c:forEach items="${employee_Skills}" var="employee_Skill">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">${employee_Skill.eid}</td>
                                    <td class="px-6 py-4 whitespace-nowrap">${employee_Skill.sid}</td>
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
