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
        <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>

    </head>
    <body class="bg-gray-100 min-h-screen py-12 px-4 sm:px-6 lg:px-8">
        <div class="max-w-7xl mx-auto">
            <a href="lab2.jsp">Lab2</a>
            <form action="lab2" method="GET" class="space-y-8">
                <div class="flex flex-col md:flex-row justify-between items-start w-full space-y-6 md:space-y-0 md:space-x-6">
                    <div class="w-full md:w-1/3 bg-white shadow-md rounded-lg p-6">
                        <div class="space-y-4">
                            <div class="flex items-center space-x-2">
                                <label for="a" class="w-8 text-gray-700">a = </label>
                                <input type="number" id="a" name="a" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <div class="flex items-center space-x-2">
                                <label for="b" class="w-8 text-gray-700">b = </label>
                                <input type="number" id="b" name="b" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <div class="flex items-center space-x-2">
                                <label for="c" class="w-8 text-gray-700">c = </label>
                                <input type="number" id="c" name="c" class="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500">
                            </div>
                            <div>
                                <input type="submit" value="Calculate" name="Button" class="w-full bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                            </div>
                        </div>
                    </div>
                    <div class="grid grid-cols-2 md:grid-cols-3 gap-4 w-full md:w-auto">
                        <input type="submit" value="A" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        <input type="submit" value="B" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        <input type="submit" value="C" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        <input type="submit" value="D" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        <input type="submit" value="E" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                        <input type="submit" value="F" name="Button" class="bg-gray-200 hover:bg-gray-300 text-gray-800 font-semibold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                    </div>
                </div>

                <div class="space-y-8">
                    <div>
                        <button type="submit" value="Insert" name="Button" class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">Insert</button>
                    </div>
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
                </div>
            </form>
        </div>
    </body>
</html>
