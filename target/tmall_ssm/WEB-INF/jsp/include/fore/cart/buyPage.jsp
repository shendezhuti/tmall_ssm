<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<div class="buyPageDiv">
    <form action="forecreateOrder" method="post">

        <div class="buyFlow">
            <img class="pull-left" src="img/site/simpleLogo1.png">

            <div style="clear:both"></div>
        </div>
        <div class="address">
            <div class="addressTip">please enter your deliver address</div>
            <div>

                <table class="addressTable">
                    <tr>
                        <td class="firstColumn">specific address<span class="redStar">*</span></td>

                        <td><textarea name="address" placeholder="we suggest you indicate the real address"></textarea></td>
                    </tr>
                    <tr>
                        <td>zipcode</td>
                        <td><input  name="post" placeholder="please enter 000000 if do not know zip code" type="text"></td>
                    </tr>
                    <tr>
                        <td>name<span class="redStar">*</span></td>
                        <td><input  name="receiver"  placeholder="no longer than 25 characters" type="text"></td>
                    </tr>
                    <tr>
                        <td>phone number <span class="redStar">*</span></td>
                        <td><input name="mobile"  placeholder="please enter the phone number" type="text"></td>
                    </tr>
                </table>

            </div>

        </div>
        <div class="productList">
            <div class="productListTip">confirm your order information</div>

            <table class="productListTable">
                <thead>
                <tr>
                    <th colspan="2" class="productListTableFirstColumn">
                        <img class="tmallbuy" src="img/site/tmallbuy.png">
                        <a class="marketLink" href="#nowhere">tmall</a>
                        <a class="wangwanglink" href="#nowhere"> <span class="wangwangGif"></span> </a>
                    </th>
                    <th>price</th>
                    <th>nmumber</th>
                    <th>total</th>
                    <th>deliver</th>
                </tr>
                <tr class="rowborder">
                    <td  colspan="2" ></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                </thead>
                <tbody class="productListTableTbody">
                <c:forEach items="${ois}" var="oi" varStatus="st" >
                    <tr class="orderItemTR">
                        <td class="orderItemFirstTD"><img class="orderItemImg" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
                        <td class="orderItemProductInfo">
                            <a  href="foreproduct?pid=${oi.product.id}" class="orderItemProductLink">
                                    ${oi.product.name}
                            </a>

                            <img src="img/site/creditcard.png" title="support creidt card">
                            <img src="img/site/7day.png" title="free return of goods within 7 days ">
                            <img src="img/site/promise.png" title="promise service">

                        </td>
                        <td>

                            <span class="orderItemProductPrice">￥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span>
                        </td>
                        <td>
                            <span class="orderItemProductNumber">${oi.number}</span>
                        </td>
                        <td><span class="orderItemUnitSum">
						￥<fmt:formatNumber type="number" value="${oi.number*oi.product.promotePrice}" minFractionDigits="2"/>
						</span></td>
                        <c:if test="${st.count==1}">
                            <td rowspan="5"  class="orderItemLastTD">
                                <label class="orderItemDeliveryLabel">
                                    <input type="radio" value="" checked="checked">
                                    normal delivery
                                </label>

                                <select class="orderItemDeliverySelect" class="form-control">
                                    <option>free delivery</option>
                                </select>

                            </td>
                        </c:if>

                    </tr>
                </c:forEach>

                </tbody>

            </table>
            <div class="orderItemSumDiv">
                <div class="pull-left">
                    <span class="leaveMessageText">give the seller words:</span>
                    <span>

				</span>
                    <span class="leaveMessageTextareaSpan">
					<textarea name="userMessage" class="leaveMessageTextarea"></textarea>
					<div>
						<span>you could enter 200 characters</span>
					</div>
				</span>
                </div>

                <span class="pull-right">total(include delivery): ￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
            </div>

        </div>

        <div class="orderItemTotalSumDiv">
            <div class="pull-right">
                <span>real charge：</span>
                <span class="orderItemTotalSumSpan">￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
            </div>
        </div>

        <div class="submitOrderDiv">
            <button type="submit" class="submitOrderButton">submit the order</button>
        </div>
    </form>
</div>
