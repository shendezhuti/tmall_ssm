<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>


<title>Edit product</title>

<script>
    $(function() {
        $("#editForm").submit(function() {
            if (!checkEmpty("name", "产品名称"))
                return false;
//			if (!checkEmpty("subTitle", "小标题"))
//				return false;
            if (!checkNumber("originalPrice", "原价格"))
                return false;
            if (!checkNumber("promotePrice", "优惠价格"))
                return false;
            if (!checkInt("stock", "库存"))
                return false;
            return true;
        });
    });
</script>

<div class="workingArea">
	<ol class="breadcrumb">
		<li><a href="admin_category_list">All Category</a></li>
		<li><a href="admin_product_list?cid=${p.category.id}">${p.category.name}</a></li>
		<li class="active">${p.name}</li>
		<li class="active">Edit Product</li>
	</ol>

	<div class="panel panel-warning editDiv">
		<div class="panel-heading">Edit Product</div>
		<div class="panel-body">
			<form method="post" id="editForm" action="admin_product_update">
				<table class="editTable">
					<tr>
						<td>Product Name</td>
						<td><input id="name" name="name" value="${p.name}"
								   type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>subTitle</td>
						<td><input id="subTitle" name="subTitle" type="text"
								   value="${p.subTitle}"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>originalPrice</td>
						<td><input id="originalPrice" value="${p.originalPrice}" name="originalPrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>promotePrice</td>
						<td><input id="promotePrice"  value="${p.promotePrice}" name="promotePrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>stock</td>
						<td><input id="stock"  value="${p.stock}" name="stock" type="text"
								   class="form-control"></td>
					</tr>

					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="id" value="${p.id}">
							<input type="hidden" name="cid" value="${p.category.id}">
							<button type="submit" class="btn btn-success">submit</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>