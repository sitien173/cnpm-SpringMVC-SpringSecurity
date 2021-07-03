<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin</title>
    <c:import url="../inc/head.jsp"/>
    <link rel="stylesheet" href="<c:url value="/disk/resources/css/style.css"/>"/>
</head>
<body>
<div class="container-scroller">
    <%--    Navbar --%>
    <c:import url="../inc/nav_admin.jsp"/>
    <div class="container-fluid page-body-wrapper">
        <%--        Navbar left --%>
        <c:import url="../inc/navbar-left.jsp"/>
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                   <div class="col-sm-6">
                                       <span class="h4 card-title">Product</span>
                                       <button style="margin-left: 20px" type="button" class="btn btn-primary" onclick="location.href='<c:url value="/admin/product/add"/>'">Add</button>
                                   </div>
                                    <div class="col-sm-6">
                                        <label>Filler by Categories</label>
                                        <select id='categories' class="form-control">
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive fixed-table-body">
                                    <table id="products" class="table">
                                        <thead>
                                        <tr>
                                            <th class="text-info" scope="col">Actions</th>
                                            <th class="text-info" scope="col">Name</th>
                                            <th class="text-info" scope="col">Price</th>
                                            <th class="text-info" scope="col">Sale Price</th>
                                            <th class="text-info" scope="col">Highlight</th>
                                            <th class="text-info" scope="col">Description</th>
                                            <th class="text-info" scope="col">Quantity</th>
                                            <th class="text-info" scope="col">Category</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal"></div>
<script src="<c:url value="/disk/resources/js/adminProduct.js"/>"></script>
<script>
    $body = $("body");
    $(document).on({
        ajaxStart: function() { $body.addClass("loading");    },
        ajaxStop: function() { $body.removeClass("loading"); }
    });
</script>
</body>
</html>