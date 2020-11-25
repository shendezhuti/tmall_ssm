

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="reviewDiv">
    <div class="reviewProductInfoDiv">
        <div class="reviewProductInfoImg"><img width="400px" height="400px" src="img/productSingle/${p.firstProductImage.id}.jpg"></div>
        <div class="reviewProductInfoRightDiv">
            <div class="reviewProductInfoRightText">
                ${p.name}
            </div>
            <table class="reviewProductInfoTable">
                <tr>
                    <td width="75px">price:</td>
                    <td><span class="reviewProductInfoTablePrice">￥<fmt:formatNumber type="number" value="${p.originalPrice}" minFractionDigits="2"/></span>  </td>
                </tr>
                <tr>
                    <td>delivery</td>
                    <td>delivery:  0.00</td>
                </tr>
                <tr>
                    <td>Monthly transaction:</td>
                    <td><span class="reviewProductInfoTableSellNumber">${p.saleCount}</span> piece</td>
                </tr>
            </table>

            <div class="reviewProductInfoRightBelowDiv">
                <span class="reviewProductInfoRightBelowImg"><img src="img/site/reviewLight.png"></span>
                <span class="reviewProductInfoRightBelowText" >What you are viewing now is the information of the product you have purchased
于<fmt:formatDate value="${o.createDate}" pattern="yyyy:MM:dd"/>Purchased this product </span>

            </div>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="reviewStasticsDiv">
        <div class="reviewStasticsLeft">
            <div class="reviewStasticsLeftTop"></div>
            <div class="reviewStasticsLeftContent">Cumulative comment <span class="reviewStasticsNumber"> ${p.reviewCount}</span></div>
            <div class="reviewStasticsLeftFoot"></div>
        </div>
        <div class="reviewStasticsRight">
            <div class="reviewStasticsRightEmpty"></div>
            <div class="reviewStasticsFoot"></div>
        </div>
    </div>

    <c:if test="${param.showonly==true}">
        <div class="reviewDivlistReviews">
            <c:forEach items="${reviews}" var="r">
                <div class="reviewDivlistReviewsEach">
                    <div class="reviewDate"><fmt:formatDate value="${r.createDate}" pattern="yyyy-MM-dd"/></div>
                    <div class="reviewContent">${r.content}</div>
                    <div class="reviewUserInfo pull-right">${r.user.anonymousName}<span class="reviewUserInfoAnonymous">(anonymous)</span></div>
                </div>
            </c:forEach>
        </div>
    </c:if>

    <c:if test="${param.showonly!=true}">
        <div class="makeReviewDiv">
            <form method="post" action="foredoreview">
                <div class="makeReviewText">Other buyers, need your advice!</div>
                <table class="makeReviewTable">
                    <tr>
                        <td class="makeReviewTableFirstTD">Comment the product</td>
                        <td><textarea name="content"></textarea></td>
                    </tr>
                </table>
                <div class="makeReviewButtonDiv">
                    <input type="hidden" name="oid" value="${o.id}">
                    <input type="hidden" name="pid" value="${p.id}">
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
    </c:if>

</div>
