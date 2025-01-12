<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fom" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Admin</title>
    <c:import url="../inc/head.jsp"/>
    <link rel="stylesheet" href="<c:url value="/disk/resources/css/style.css"/>">
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
                <div class="col-12 grid-margin">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Registration</h4>
                            <c:url var="action" value="/admin/user/add"/>
                            <form:form id="form" method="post" modelAttribute="user"
                                       action="${action}" class="form-sample"
                                        enctype="multipart/form-data">
                                <p class="card-description"> Personal info </p>
                                <c:out value="${info}"/>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Username</label>
                                            <div class="col-sm-9">
                                                <form:input path="username" required="required"  cssClass="form-control" placeholder="Enter Your Username" />
                                                <small class="form-text text-muted"><form:errors  cssClass="error" path="username"/></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Name</label>
                                            <div class="col-sm-9">
                                                <form:input path="name" required="required"  cssClass="form-control" placeholder="Enter Your Name" />
                                                <small class="form-text text-muted"><form:errors  cssClass="error" path="name"/></small>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <p class="card-description"> Address </p>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Tỉnh/Thành phố</label>
                                            <div class="col-sm-7">
                                                <form:select  path="address.ward.province.provinceId" class="form-control" required="required">
                                                    <form:option value="${user.address.ward.province.provinceId}"><c:out value="${user.address.ward.province.provinceName}"/></form:option>
                                                </form:select>
                                                <form:errors path="address.ward.province.provinceId"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-9">
                                                <form:input path="email" required="required" cssClass="form-control" placeholder="Enter Your Email" />
                                                <small class="form-text text-muted"><form:errors cssClass="error" path="email"/></small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Quận/Huyện</label>
                                            <div class="col-sm-7">
                                                <form:select path="address.ward.district.districtId" class="form-control" required="required">
                                                    <form:option value="${user.address.ward.district.districtId}"><c:out value="${user.address.ward.district.districtName}"/></form:option>
                                                </form:select>
                                                <form:errors path="address.ward.district.districtId"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Phone</label>
                                            <div class="col-sm-9">
                                                <form:input path="phone" required="required"  id="tel" cssClass="form-control" placeholder="Enter Your Phone" />
                                                <small class="form-text text-muted"><form:errors cssClass="error" path="phone"/></small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-5 col-form-label">Phường/Xã</label>
                                            <div class="col-sm-7">
                                                <form:select path="address.ward.wardId" class="form-control" required="required">
                                                    <form:option value="${user.address.ward.wardId}"><c:out value="${user.address.ward.wardName}"/></form:option>
                                                </form:select>
                                                <form:errors path="address.ward.wardId"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Password</label>
                                            <div class="col-sm-9">
                                                <form:password required="required" path="password" name="password" cssClass="form-control" placeholder="Enter Your Password"/>
                                                <small  class="form-text text-muted"><form:errors cssClass="error" path="password"/></small>
                                                <form:errors path="password"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Địa chỉ</label>
                                            <div class="col-sm-9">
                                                <form:textarea required="required" path="address.addr" cssClass="form-control" placeHolder="Địa chỉ nhà của bạn"/>
                                                <form:errors path="address.addr"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="col-sm-3 col-form-label">Avatar</label>
                                            <div class="col-sm-9">
                                                <input accept="image/*" required="required" type="file" name="avt" class="form-control" placeholder="Update Avatar"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-dark" onclick="window.history.back()">Cancel</button>
                              <form:button type="submit" class="btn btn-primary mr-2">Submit</form:button>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/disk/resources/js/constants.js"/>"></script>
<script src="<c:url value="/disk/resources/js/validForm.js"/>"></script>
<script src="<c:url value="/disk/resources/js/Address.js"/>"></script>
</body>
</html>