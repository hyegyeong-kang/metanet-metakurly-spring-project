var price_sum = 0;
 $(document).ready(function(){
	// 상품 옵션에서 선택하면 추가 부분 - 완
	$('select').change(function(){ //옵션을 선택할때마다
		if($('option:selected').text()!='선택하세요'){ //text값이 선택하세요가 아닐경우만
		var slt=$('option:selected').text(); //선택된 텍스트 추출
		var item = slt.split('-'); //앞 상품 추출
		// var src_price = slt.split('g'); //상품가격만 추출
		$('.items').append('<div class="item"><span class="item-name">'+item[0]+'</span><span class="item-count"><a href="#" class="minur">-</a><input type="number" value="1" class="number" disabled><a href="#" class="plus">+</a></span><span class="item-price">'+item[1]+'</span><a href="#" class="item-close">x</a></div>');

	// 총 상품 금액 실시간으로 계산하기 - 완
		var price = parseInt(item[1].split('원'));  //상품가격에서 원 제외하
		price_sum += price;
		$('.all-price span').html(price_sum);
		//선택된 것이 있으면 재 선택 불가능. - 미완
		//item클래스를 가진 것들 for문으로 반복해서 검사할것. 1. 어렵게 한다면. option의 값을 저장하고 순회하며 비교하기.  2. 순회하며 서로서로 비교하기
		}
		// if($('.item').length='0'){
		// 	var price_sum = 0;
		// }
	});

	// 탭 변경 부분 - 완
	$('.contentNav li').click(function(e){
		e.preventDefault();
  var idx = $(this).index();
  $('.contentNav li').removeClass('active').eq(idx).addClass('active');
  $('table').removeClass('active').eq(idx).addClass('active');
 });

	// 상품 후기 부분 - 임시 완
	$('.tproduct-review tbody tr .tcontent').click(function(){
   //전체 글자의 변수를 2번 잡아서 . 한번은 위쪽 내용. 한번은 아래쪽 내용 출력
   //위쪽 내용
	 var text = $(this).children('span').html(); //전체 html또는 text를 가져와서
	 var full = $(this).closest('tr').next('tr').children('td').eq(1).text(text).css('text-align','left'); // tr 출력후 나머지 글자 출력 및 정렬
	 var cut = $(this).closest('tr').next('tr').children('td').eq(1).text();
   $(this).closest('tr').next('tr').toggleClass('display'); //자세한 이용후기 tr 출력하기
  });
});

//상품 목록에서 삭제 기능 - 완
$(document).on('click','.item-close',{},function(e){
	e.preventDefault();
	var $el = $(e.currentTarget);
	$el.closest('.item').remove();
	//삭제 시 총 가격에서 빼기 - 미완
	var src_price = $el.siblings('.item-price').text();
	var price = src_price.split('원');
	var price_sum = $('.all-price span').html();
	var result_price = price_sum - price[0];
	$('.all-price span').html(result_price);
	// var price_sum = 0;

	//  if($('.item').length = '0'){
	//  var price_sum = 0;
	//  	$('.all-price span').html(price_sum);
	// }
});