<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="../includes/header.jsp"%>

<!--  그나마 되는 것1!!!!!!! -->
<!DOCTYPE html>
<html>
 
    <head>
        <meta charset="UTF-8">
        <title>BZshop | cartList</title>
    </head>
 
    <body>
 
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
 
        <!-- Header Section Begin -->
        <header class="header-section">
            <div class="container-fluid">
                <div class="inner-header">
                </div>
            </div>
        </header>
            <!-- Header End -->
 
            <!-- Page Add Section Begin -->
        <section class="page-add cart-page-add">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="page-breadcrumb">
                            <h2>Cart</h2>
                        </div>
                    </div>
                    <c:if test="${not empty cartList}">
                        <div class="col-lg-5 offset-lg-1 text-left text-lg-right" style="padding-top: 34px;">
                            <div class="site-btn clear-btn" id="selectDelete_btn">선택된 리스트 삭제</div>
                            <script>
                                $("#selectDelete_btn").click(function () {
                                    var confirm_val = confirm("정말 삭제하시겠습니까?");
 
                                    if (confirm_val) {
                                        var checkArr = new Array();
 
                                        $("input[class='chkbox']:checked").each(function () {
                                            checkArr.push($(this).attr("data-cartNum"));
                                        });
 
                                        $.ajax({
                                            url: "/shop/deleteCart",
                                            type: "post",
                                            data: { chbox: checkArr },
                                            beforeSend: function (xhr) {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다 (spring boot security 설정부분)*/
                                                xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                                            },
                                            success: function () {
                                                location.href = "/shop/cartList";
                                            }
                                        });
                                    }
                                });
                            </script>
                        </div>
                    </c:if>
                </div>
            </div>
        </section>
        <!-- Page Add Section End -->
        <!-- 금액 총 합계  -->
        <script>
 
            function itemSum() {
                var str = "";
                var sum = 0;
                var count = $(".chkbox").length;
                for (var i = 0; i < count; i++) {
                    if ($(".chkbox")[i].checked == true) {
                        sum += parseInt($(".chkbox")[i].value);
                    }
                }
                $("#total_sum").html(sum + " 원");
                $("#amount").val(sum);
            }
 
        </script>
        <!-- Cart Page Section Begin -->
        <div class="cart-page">
            <div class="container">
                <div class="cart-table">
                    <table>
                        <thead>
                            <tr>
                                <th><input type="checkbox" name="allCheck" id="allCheck" checked /></th>
                                <!-- 상품 전체선택  -->
                                <script>
                                    $("#allCheck").click(function () {
                                        var chk = $("#allCheck").prop("checked");
                                        if (chk) {
                                            $(".chkbox").prop("checked", true);
                                            itemSum();
                                        } else {
                                            $(".chkbox").prop("checked", false);
                                            itemSum();
                                        }
                                    });
                                </script>
                                <th class="product-h">Product</th>
                                <th>Price</th>
                                <th>Quantity</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${list}" var="cartList">
                                <tr>
                                    <td class="product-close"><input type="checkbox" onClick="itemSum()"
                                            class="chkbox" value="${cartList.quantity * cartList.productList[0].price }"
                                            data-cartNum="${cartList.cartNum}" /></td>
                                    <td class="product-col">
                                       <%--  <img src="${cartList.gdsThumbImg}" alt="${cartList.gdsThumbImg}" /> --%>
                                        <div class="p-title">
                                           <h5>${cartList.productList[0].name}</a></h5>
                                        </div>
                                    </td>
                                    <td class="price-col">
                                        <fmt:formatNumber pattern="###,###,###" value="${cartList.productList[0].price}" />
                                        원
                                    </td>
                                    <td>
                                        ${cartList.quantity} 개
                                    </td>
                                    <td class="total">
                                        <fmt:formatNumber pattern="###,###,###"
                                            value="${cartList.quantity * cartList.productList[0].price }" /> 원
                                    </td>
                                    <td class="product-close" id="delete_${cartList.cartNum}_btn" data-cartNum="${cartList.cartNum}"> X </td>
                                    <script>
                                        $("#delete_${cartList.cartNum}_btn").click(function () {
                                            var confirm_val = confirm("정말 삭제하시겠습니까?");
 
                                            if (confirm_val) {
                                                var checkArr = new Array();
 
                                                checkArr.push($(this).attr("data-cartNum"));
 
                                                $.ajax({
                                                    url: "/shop/deleteCart",
                                                    type: "post",
                                                    data: { chbox: checkArr },
                                                    beforeSend: function (xhr) {   /*데이터를 전송하기 전에 헤더에 csrf값을 설정한다 (spring boot security 설정부분)*/
                                                        xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                                                    },
                                                    success: function (result) {
                                                        if (result == 1) {
                                                            location.href = "/shop/cartList";
                                                        } else {
                                                            alert("삭제 실패");
                                                        }
                                                    }
                                                });
                                            }
                                        });
                                    </script>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <!-- 초기화면 상품 전체선택이지만 하나라도 체크박스 해제할 경우 이벤트  -->
                    <script>
                        $(".chkbox").click(function () {
                            $("#allCheck").prop("checked", false);
                        });
                    </script>
<%--                     <c:if test="${empty cart}">
                        <c:set var="cart" value="false" />
                        <div class="card border-light mb-3 text-center spad">
                            <div class="card-header">
                                <h3>카트에 상품이 없습니다.</h3>
                            </div>
                            <div class="card-body">
                                <p class="card-text">카트에 물건을 담고 이용해주세요!</p>
                            </div>
 
                        </div>
                    </c:if> --%>
                     <div class="col-lg-12 text-right">
                                            <button type="button" class="primary-btn chechout-btn"
                                                id="orderModal" data-toggle="modal" data-target="#orderOpne">주문하기</button>
                     </div>
                </div>
            </div>
            <div class="shopping-method">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="total-info">
                                <div class="total-table">
                                    <table>
                                        <thead>
                                            <tr>
                                                <th class="total-cart">Total Cart</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="total-cart-p" id="total_sum"></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <c:if test="${not empty cartList}">
                                    <div class="row">
                                        <div class="col-lg-12 text-right">
                                            <button type="button" class="primary-btn chechout-btn"
                                                id="orderModal" data-toggle="modal" data-target="#orderOpne">주문하기</button>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!--  Cart Page section end -->
        <!--order Modal End -->
        <!-- 페이지 들어오자마자 체크박스  체크 -->
        <script>
            var tt = "${cart}";
            if (tt == 'false') {
                $("#allCheck").prop("checked", false);
            } else {
                $("#allCheck").prop("checked", true);
                $(".chkbox").prop("checked", true);
                itemSum();
            }
 
        </script>
        <!-- 주문하기 버튼 이벤트 -->
        <script>
            $("#orderModal").click(function () {
                $.ajax({
 
                    url: "/shop/orderUser/",
                    success: function (data) {
                        $("#orderRec").val(data.userName);
                        $("#orderPhon").val(data.userPhon);
                        $("#sample3_address").val(data.userAddr1);
                        $("#sample3_detailAddress").val(data.userAddr2);
                        $("#sample3_extraAddress").val(data.userAddr3);
                    }
                });
            });
        </script>
    </body>
</html>
<%@include file="../includes/footer.jsp"%>