/**
 *
 */
var replyListServer = function(seq, but){

	$.ajax({
	url : "/jqpro/ReplyList",
	data : {'seq' : seq},
	dataType : 'json',
	success : function(datas){
		code = "";
		$.each(datas, function(i,v){
			 	 code += '<div class="panel-body rep">                                                                                                  '                  ;
                 code += '   <p style="width: 80%; float: left;">                                                                                   '                  ;
                 code += '		<span>' + v.name + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp';
                 code += '                  작성자 :' + v.redate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '  ;
                 code += ' ' + v.redate + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '    ;
                 code += ' </span><br><br>';
                 code += ' <span class="cont">' + v.cont  + '</span>';
                 code += '   </p>';
                 code += '           <p style="float: right;">                                                                                              '                  ;
                 code += '              <button idx="' + v.renum + '" type="button" name="r_modify" class="action">댓글수정</button>                                           '      ;
                 code += '              <button idx="' + v.renum + '" type="button" name="r_delete" class="action">댓글삭제</button>                                           '      ;
                 code += '           </p>                                                                                                                   '                  ;
                 code += '   </div>                                                                                                                 '                  ;

		})


	},
	error : function(xhr){
		alert("상태 : "+xhr.status);
	}



	})


}



var replySaveServer = function(){

	$.ajax({
		url : '/jqpro/ReplySave',
		type : 'post',
		data : reply, //reply객체
		dataType : 'json',
		success : function(datas){
			alert(datas.res);
			//댓글 출력
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}
	})
}

var deleteServer = function(bidx){

	$.ajax({
		url : '/jqpro/BoardDelete',
		type : 'get',
		data : {"seq" : bidx},
		dataType : 'json',
		success : function(datas){
			alert(datas.sw);
			//readServer();
		},
		error : function(xhr){
			alert("상태 : " + xhr.status);
		}

	})

}


var writerServer =function(){
	$.ajax({
		url : '/jqpro/BoardWrite',
		type : 'post',
		data : $('#writeForm').serializeArray(),
		dataType : 'json',
		success : function(datas){
			 $('#myModal').modal('hide');
			 alert(datas.res)
		},
		error : function(xhr){
			alert("상태 : " + xhr.staus)
		}
	})
}



var readServer = function(){
    $.ajax({
        url : '/jqpro/BoardList',
        type : 'get',
        dataType : 'json',
        success : function (datas) {
           code = '<div class="panel-group" id="parent">';

           $.each(datas, function (i, v) {
              code += '<div class="panel panel-default">                                                                                                 '                      ;
                 code += '      <div class="panel-heading">                                                                                                 '                  ;
                 code += '        <h4 class="panel-title">                                                                                                  '                  ;
                 code += '          <a data-toggle="collapse" data-parent="#accordion" href="#collapse' + v.seq + '">' + v.subject +'</a>                            '         ;
                 code += '        </h4>                                                                                                                     '                  ;
                 code += '      </div>                                                                                                                      '                  ;
                 code += '      <div id="collapse' + v.seq + '" class="panel-collapse collapse">                                                                     '      ;
                 code += '        <div class="panel-body pbody">                                                                                                  '                  ;
                 code += '           <p style="width: 80%; float: left;">                                                                                   '                  ;
                 code += '                   작성자 :' + v.writer + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '  ;
                 code += '                  이메일 :' + v.mail + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '    ;
                 code += '                  작성일 :' + v.day + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '     ;
                 code += '                  조회수 :' + v.hit + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                         '     ;
                 code += '           </p>                                                                                                                   '                  ;
                 code += '                                                                                                                                  '                  ;
                 code += '           <p style="float: right;">                                                                                              '                  ;
                 code += '              <button idx="' + v.seq + '" type="button" name="modify" class="action">수정</button>                                           '      ;
                 code += '              <button idx="' + v.seq + '" type="button" name="delete" class="action">삭제</button>                                           '      ;
                 code += '           </p>                                                                                                                   '                  ;
                 code += '                                                                                                                                  '                  ;
                 code += '           <hr>                                                                                                                   '                  ;
                 code += '                                                                                                                                  '                  ;
                 code += '           <p style="width: 80%; float: left;">' + v.cont + '                                                                                   '    ;
                 code += '           </p>                                                                                                                   '                  ;
                 code += '                                                                                                                                  '                  ;
                 code += '           <p>                                                                                                                    '                  ;
                 code += '              <textarea class="area" cols="100">댓글쓰기</textarea>                                                              '                  ;
                 code += '              <button style="height: 45px; vertical-align: top;" type="button" idx="' + v.seq + '" name="reply" class="action">등록</button> '      ;
                 code += '           </p>                                                                                                                   '                  ;
                 code += '        </div>                                                                                                                    '                  ;
                 code += '      </div>                                                                                                                      '                  ;
                 code += '    </div>';
           })
           code += "</div>";
           $('#accordionList').html(code);

        },
        error : function (xhr) {
           alert("상태 : " + xhr.status);
        }
     })
}