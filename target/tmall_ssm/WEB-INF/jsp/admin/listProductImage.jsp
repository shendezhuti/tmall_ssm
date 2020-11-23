<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
    $(function(){
        $(".addFormSingle").submit(function(){
            if(checkEmpty("filepathSingle","图片文件")){
                $("#filepathSingle").value("");
                return true;
            }
            return false;
        });
        $(".addFormDetail").submit(function(){
            if(checkEmpty("filepathDetail","图片文件"))
                return true;
            return false;
        });
    });

</script>

<title>Product Image Management</title>


<div class="workingArea">
	<ol class="breadcrumb">
		<li><a href="admin_category_list">All Category</a></li>
		<li><a href="admin_product_list?cid=${p.category.id}">${p.category.name}</a></li>
		<li class="active">${p.name}</li>
		<li class="active">Product Image Management</li>
	</ol>

	<table class="addPictureTable" align="center">
		<tr>
			<td class="addPictureTableTD">
				<div>
					<div class="panel panel-warning addPictureDiv">
						<div class="panel-heading">Add Product<b class="text-primary"> unit </b>Image</div>
						<div class="panel-body">
							<form method="post" class="addFormSingle" action="admin_productImage_add" enctype="multipart/form-data">
								<table class="addTable">
									<tr>
										<td>Plsase choose a local file 400X400 </td>
									</tr>
									<tr>
										<td>
											<input id="filepathSingle" type="file" name="image" />
										</td>
									</tr>
									<tr class="submitTR">
										<td align="center">
											<input type="hidden" name="type" value="type_single" />
											<input type="hidden" name="pid" value="${p.id}" />
											<button type="submit" class="btn btn-success">submit </button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<table class="table table-striped table-bordered table-hover  table-condensed">
						<thead>
						<tr class="success">
							<th>ID</th>
							<th>single Image condense picture</th>
							<th>delete</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${pisSingle}" var="pi">
							<tr>
								<td>${pi.id}</td>
								<td>
									<a title="点击查看原图" href="img/productSingle/${pi.id}.jpg"><img height="50px" src="img/productSingle/${pi.id}.jpg"></a>
								</td>
								<td><a deleteLink="true"
									   href="admin_productImage_delete?id=${pi.id}"><span
										class=" 	glyphicon glyphicon-trash"></span></a></td>

							</tr>
						</c:forEach>
						</tbody>
					</table>

				</div>
			</td>
			<td class="addPictureTableTD">
				<div>

					<div class="panel panel-warning addPictureDiv">
						<div class="panel-heading">Add Product<b class="text-primary"> detail </b>Image</div>
						<div class="panel-body">
							<form method="post" class="addFormDetail" action="admin_productImage_add" enctype="multipart/form-data">
								<table class="addTable">
									<tr>
										<td>Plsase choose a local file width 790</td>
									</tr>
									<tr>
										<td>
											<input id="filepathDetail"  type="file" name="image" />
										</td>
									</tr>
									<tr class="submitTR">
										<td align="center">
											<input type="hidden" name="type" value="type_detail" />
											<input type="hidden" name="pid" value="${p.id}" />
											<button type="submit" class="btn btn-success">submit</button>
										</td>
									</tr>
								</table>
							</form>
						</div>
					</div>
					<table class="table table-striped table-bordered table-hover  table-condensed">
						<thead>
						<tr class="success">
							<th>ID</th>
							<th>Product detail condense Image</th>
							<th>delete</th>
						</tr>
						</thead>
						<tbody>
						<c:forEach items="${pisDetail}" var="pi">
							<tr>
								<td>${pi.id}</td>
								<td>
									<a title="点击查看原图" href="img/productDetail/${pi.id}.jpg"><img height="50px" src="img/productDetail/${pi.id}.jpg"></a>
								</td>
								<td><a deleteLink="true"
									   href="admin_productImage_delete?id=${pi.id}"><span
										class=" 	glyphicon glyphicon-trash"></span></a></td>

							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
			</td>
		</tr>
	</table>





</div>

<%@include file="../include/admin/adminFooter.jsp"%>
