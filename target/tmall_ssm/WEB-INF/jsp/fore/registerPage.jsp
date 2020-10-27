<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<script>
    $(function(){

        <c:if test="${!empty msg}">
        $("span.errorMessage").html("${msg}");
        $("div.registerErrorMessageDiv").css("visibility","visible");
        </c:if>

        $(".registerForm").submit(function(){
            if(0==$("#name").val().length){
                $("span.errorMessage").html("please type your username");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if(0==$("#password").val().length){
                $("span.errorMessage").html("please type your password");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if(0==$("#repeatpassword").val().length){
                $("span.errorMessage").html("please type your password again");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }
            if($("#password").val() !=$("#repeatpassword").val()){
                $("span.errorMessage").html("the two passwords are not matched");
                $("div.registerErrorMessageDiv").css("visibility","visible");
                return false;
            }

            return true;
        });
    })
</script>
<title>HCI Project</title>

<form method="post" action="foreregister" class="registerForm">

    <div class="registerDiv">
        <div class="registerErrorMessageDiv">
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"></button>
                <span class="errorMessage"></span>
            </div>
        </div>

        <table class="registerTable" align="center">
            <tr>
                <td  class="registerTip registerTableLeftTD">Set Username</td>
                <td></td>
            </tr>
            <tr>
                <td class="registerTableLeftTD">username</td>
                <td  class="registerTableRightTD"><input id="name" name="name" placeholder="once set, can not change" > </td>
            </tr>
            <tr>
                <td  class="registerTip registerTableLeftTD">Set password</td>
                <td  class="registerTableRightTD"></td>
            </tr>
            <tr>
                <td class="registerTableLeftTD">login password</td>
                <td class="registerTableRightTD"><input id="password" name="password" type="password"  placeholder="set your password" > </td>
            </tr>
            <tr>
                <td class="registerTableLeftTD">confirm your password</td>
                <td class="registerTableRightTD"><input id="repeatpassword" type="password"   placeholder="please type your password again" > </td>
            </tr>

            <tr>
                <td colspan="2" class="registerButtonTD">
                    <a href="registerSuccess.jsp"><button>submit</button></a>
                </td>
            </tr>
        </table>
    </div>
</form>
