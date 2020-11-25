

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="confirmPayPageDiv">
    <div class="confirmPayImageDiv">
        <!-- <img src="img/site/comformPayFlow.png"> -->
        <div  class="confirmPayTime1">
            <fmt:formatDate value="${o.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </div>
        <div  class="confirmPayTime2">
            <fmt:formatDate value="${o.payDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
        </div>
        <div class="confirmPayTime3">
            yyyy-MM-dd HH:mm:ss
        </div>

    </div>
    <div class="confirmPayOrderInfoDiv">
        <div class="confirmPayOrderInfoText">I have received the goods and I agree to pay with Alipay</div>
    </div>
    <div class="confirmPayOrderItemDiv">
        <div class="confirmPayOrderItemText">Order Information</div>
        <table class="confirmPayOrderItemTable">
            <thead>
            <th colspan="2">product</th>
            <th width="120px">unit price</th>
            <th width="120px">number</th>
            <th width="120px">total price </th>
            <th width="120px">delivery fee</th>
            </thead>
            <c:forEach items="${o.orderItems}" var="oi">
                <tr>
                    <td><img width="50px" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
                    <td class="confirmPayOrderItemProductLink">
                        <a href="#nowhere">${oi.product.name}</a>
                    </td>
                    <td>￥<fmt:formatNumber type="number" value="${oi.product.originalPrice}" minFractionDigits="2"/></td>
                    <td>1</td>
                    <td><span class="conformPayProductPrice">￥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span></td>
                    <td><span>delivery ： 0.00 </span></td>
                </tr>
            </c:forEach>
        </table>

        <div class="confirmPayOrderItemText pull-right">
            real payment： <span class="confirmPayOrderItemSumPrice">￥<fmt:formatNumber type="number" value="${o.total}" minFractionDigits="2"/></span>
        </div>

    </div>
    <div class="confirmPayOrderDetailDiv">

        <table class="confirmPayOrderDetailTable">
            <tr>
                <td>order number：</td>
                <td>${o.orderCode} <img width="23px" src="img/site/confirmOrderTmall.png"></td>
            </tr>
            <tr>
                <td>seller nickname：</td>
                <td>tmall shop <span class="confirmPayOrderDetailWangWangGif"></span></td>
            </tr>
            <tr>
                <td>delivery information： </td>
                <td>${o.address}，${o.receiver}， ${o.mobile}，${o.post} </td>
            </tr>
            <tr>
                <td>Transaction time：</td>
                <td><fmt:formatDate value="${o.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
            </tr>
        </table>

    </div>
    <div class="confirmPayButtonDiv">
        <div class="confirmPayWarning">Please confirm receipt after receiving the goods! Otherwise you may be out of money!</div>
        <a href="foreorderConfirmed?oid=${o.id}"><button class="confirmPayButton">confirm to pay</button></a>
    </div>
</div>
