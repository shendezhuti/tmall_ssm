

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="payedDiv">
    <div class="payedTextDiv">
        <img src="img/site/paySuccess.png">
        <span>Congratulation!You have payed successfully!</span>

    </div>
    <div class="payedAddressInfo">
        <ul>
            <li>Delivery address：${o.address} ${o.receiver} ${o.mobile }</li>
            <li>Real pay：<span class="payedInfoPrice">
			￥<fmt:formatNumber type="number" value="${param.total}" minFractionDigits="2"/>
            </li>
            <li>Anticipate Recevicing Time	</li>
        </ul>

        <div class="paedCheckLinkDiv">
            You could
            <a class="payedCheckLink" href="forebought">Check the product you have bought</a>
            <a class="payedCheckLink" href="forebought">View transaction details </a>
        </div>

    </div>

    <div class="payedSeperateLine">
    </div>

    <div class="warningDiv">
        <img src="img/site/warning.png">
        <b>Safety reminder：</b>after ordering，<span class="redColor boldWord">do not trust any links</span>tmall will not email you to get peronsal information！
    </div>

</div>
