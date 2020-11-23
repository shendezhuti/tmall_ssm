<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function() {
        $("#addForm").submit(function() {
            if (!checkEmpty("name", "产品名称"))
                return false;
//          if (!checkEmpty("subTitle", "小标题"))
//              return false;
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

<title>Product Managment</title>

<div class="workingArea">

	<ol class="breadcrumb">
		<li><a href="admin_category_list">All Category</a></li>
		<li><a href="admin_product_list?cid=${c.id}">${c.name}</a></li>
		<li class="active">Product Managment</li>
	</ol>

	<div class="listDataTableDiv">
		<table
				class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
			<tr class="success">
				<th>ID</th>
				<th>Image</th>
				<th>Product Name</th>
				<th>Product Subtitle</th>
				<th width="53px">Original price</th>
				<th width="80px">Sale price</th>
				<th width="80px">Stock</th>
				<th width="80px">Image managment</th>
				<th width="80px">Set Property</th>
				<th width="42px">Edit</th>
				<th width="42px">Delete</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${ps}" var="p">
				<tr>
					<td>${p.id}</td>
					<td>

						<c:if test="${!empty p.firstProductImage}">
							<img width="40px" src="img/productSingle/${p.firstProductImage.id}.jpg">
						</c:if>

					</td>
					<td>${p.name}</td>
					<td>${p.subTitle}</td>
					<td>${p.originalPrice}</td>
					<td>${p.promotePrice}</td>
					<td>${p.stock}</td>
					<td><a href="admin_productImage_list?pid=${p.id}"><span
							class="glyphicon glyphicon-picture"></span></a></td>
					<td><a href="admin_propertyValue_edit?pid=${p.id}"><span
							class="glyphicon glyphicon-th-list"></span></a></td>

					<td><a href="admin_product_edit?id=${p.id}"><span
							class="glyphicon glyphicon-edit"></span></a></td>
					<td><a deleteLink="true"
						   href="admin_product_delete?id=${p.id}"><span
							class="     glyphicon glyphicon-trash"></span></a></td>

				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp"%>
	</div>

	<div class="panel panel-warning addDiv">
		<div class="panel-heading">Add Product</div>
		<div class="panel-body">
			<form method="post" id="addForm" action="admin_product_add">
				<table class="addTable">
					<tr>
						<td>Product Name</td>
						<td><input id="name" name="name" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>subTitle</td>
						<td><input id="subTitle" name="subTitle" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>originalPrice</td>
						<td><input id="originalPrice" value="99.98" name="originalPrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>promotePrice</td>
						<td><input id="promotePrice"  value="19.98" name="promotePrice" type="text"
								   class="form-control"></td>
					</tr>
					<tr>
						<td>stock</td>
						<td><input id="stock"  value="99" name="stock" type="text"
								   class="form-control"></td>
					</tr>
					<tr class="submitTR">
						<td colspan="2" align="center">
							<input type="hidden" name="cid" value="${c.id}">
							<button type="submit" class="btn btn-success">提 交</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</div>

<%@include file="../include/admin/adminFooter.jsp"%>