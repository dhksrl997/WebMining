$(function() {
	$(".SendURL").click(function() {
		var url = $(".text-form").val();
		var contents="";
		$.ajax({
					url : '/getURL',
					data : {
						URL : url
					},
					dataType : 'json',
					method : 'post',
					success : function(data) {
						// var words = Array.from(new Set(data));// 중복제거
						var words = new Array();
						$('.inside-text').empty();
						words = data;
						for(var i =0;i<data.length;i++){
						contents+=`<span class="a${[i]}">${words[i]}</span>`;
						}
						$(".inside-text").append(contents+"&nbsp"+"&nbsp"+"&nbsp"+"&nbsp"+"&nbsp"+"&nbsp"+"&nbsp"+"&nbsp");
						for (var i = 0; i < data.length; i++) {
							for (var j = i + 1; j < data.length; j++) {
								if (data[i] == words[j]){
									var size=$(".a"+[i]).css('font-size',"+=10");
								}
							}
						}
					}
				})
			});
});