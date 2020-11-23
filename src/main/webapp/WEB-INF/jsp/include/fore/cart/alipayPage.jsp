

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="aliPayPageDiv">
    <div class="aliPayPageLogo">
        <img class="pull-left" src="img/site/simpleLogo1.png">
        <div style="clear:both"></div>
    </div>

    <div>
        <span class="confirmMoneyText">pay</span>
        <span class="confirmMoney">
		￥<fmt:formatNumber type="number" value="${param.total}" minFractionDigits="2"/></span>

    </div>
    <div>
       <!-- <img class="aliPayImg" src="img/site/alipay2wei.png"> -->
    </div>

    <div>
        <a href="forepayed?oid=${param.oid}&total=${param.total}"><button class="confirmPay">confirm to pay</button></a>
    </div>

</div>
