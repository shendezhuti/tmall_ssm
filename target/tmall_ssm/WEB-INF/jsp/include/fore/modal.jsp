<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>

<div class="modal " id="loginModal" tabindex="-1" role="dialog" >
	<div class="modal-dialog loginDivInProductPageModalDiv">
		<div class="modal-content">
			<div class="loginDivInProductPage">
				<div class="loginErrorMessageDiv">
					<div class="alert alert-danger" >
						<button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
						<span class="errorMessage"></span>
					</div>
				</div>

				<div class="login_acount_text">Login</div>
				<div class="loginInput " >
							<span class="loginInputIcon ">
								<span class=" glyphicon glyphicon-user"></span>
							</span>
					<input id="name" name="name" placeholder="phone number / username / email" type="text">
				</div>

				<div class="loginInput " >
							<span class="loginInputIcon ">
								<span class=" glyphicon glyphicon-lock"></span>
							</span>
					<input id="password" name="password"  type="password" placeholder="密码" type="text">
				</div>
				<span class="text-danger">do not type you real account</span><br><br>
				<div>
					<a href="#nowhere">for the password</a>
					<a href="registerPage" class="pull-right">register for free</a>
				</div>
				<div style="margin-top:20px">
					<button class="btn btn-block redButton loginSubmitButton" type="submit">login</button>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal" id="deleteConfirmModal" tabindex="-1" role="dialog" >
	<div class="modal-dialog deleteConfirmModalDiv">
		<div class="modal-content">
			<div class="modal-header">
				<button data-dismiss="modal" class="close" type="button"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
				<h4 class="modal-title">sure to delete?</h4>
			</div>
			<div class="modal-footer">
				<button data-dismiss="modal" class="btn btn-default" type="button">close</button>
				<button class="btn btn-primary deleteConfirmButton" id="submit" type="button">confirm</button>
			</div>
		</div>
	</div>
</div>
</div>