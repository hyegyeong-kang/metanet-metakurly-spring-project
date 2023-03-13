console.log("ddd...");

$(function(){
	var status = "${order.status}";
	$("#cancelBtn").hide();
	alert(status);
	if(status === "결제완료"){
		$("#cancelBtn").show();
		$("#postForm").attr("action", "/orders/cancel/<c:out value='${order.o_id}'/>");
	}
});
/* $("#cancelBtn").click(function(){
	$("#postForm").submit();
	 $.ajax({
		type: 'patch',
		url: '/orders/cancel/${order.o_id}',
		success: function(){
			alert("success");
		}
	}); 
}); */
