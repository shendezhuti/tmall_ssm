<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<div class="productReviewDiv" >
    <div class="productReviewTopPart">
        <a  href="#nowhere" class="productReviewTopPartSelectedLink">Product detail</a>
        <a  href="#nowhere" class="selected">Comment <span class="productReviewTopReviewLinkNumber">${p.reviewCount}</span> </a>
    </div>

    <div class="productReviewContentPart">
        <c:forEach items="${reviews}" var="r">
            <div class="productReviewItem">

                <div class="productReviewItemDesc">
                    <div class="productReviewItemContent">
                            ${r.content }
                    </div>
                    <div class="productReviewItemDate"><fmt:formatDate value="${r.createDate}" pattern="yyyy-MM-dd"/></div>
                </div>
                <div class="productReviewItemUserInfo">

                        ${r.user.anonymousName}<span class="userInfoGrayPart">（anonymity）</span>
                </div>

                <div style="clear:both"></div>

            </div>
        </c:forEach>
    </div>

</div>
