<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="../js/board.js"></script>
  <link rel = "stylesheet" href="../css/board.jsp">


<title>Insert title here</title>
<script>
reply = {};
   $(function(){
      readServer();

      $('#w_submit').on('click', function(){

         writeServer();

      })

      $('.modal').on('hide.bs.modal', function(){
            $('.text', this).val("");
      })

      //버튼의 class = action (board.js) -> 수정, 삭제, 댓글 등록, 댓글 삭제, 댓글 수정
      //delegate 방식
      $('#accordionList').on('click', '.action', function(){
         bname = $(this).attr('name');
         bidx = $(this).attr('idx');

         if(bname == "delete"){
            deleteServer(bidx);
         }else if(bname=="modify"){

         }else if(bname == "reply"){
            //댓글등록. 입력한 내용을 가져온다
            text = $(this).parent().find('.area').val();
            name = "korea";
            reply.name = name;
            reply.cont = text;
            reply.bonum = bidx;

            replySaveServer();
            //replyListServer(bidx, this);
         }

      })
   })
</script>
</head>
<body>
   <div id="ss"></div>

   <h2>Accordion 게시판</h2>
   <br>
   <button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#myModal">글쓰기</button>
   <br><br>


   <!-- 게시판 목록 출력 -->
   <div id="accordionList">
   </div>

   <br><br>

   <!-- Modal -->
   <div id="myModal" class="modal fade" role="dialog">
     <div class="modal-dialog">

       <!-- Modal content-->
       <div class="modal-content">
         <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal">&times;</button>
           <h4 class="modal-title">Modal Header</h4>
         </div>
         <div class="modal-body">
           <form id="writeForm">
            <div>
               <label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목&nbsp;</label>
               <input type="text"  id="w_subject" name="subject"
                  class="text ui-widget-content ui-corner-all" />
            </div>
            <div>
               <label for="writer" class="header">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름&nbsp;</label>
               <input type="text"  id="w_writer" name="writer"
                  class="text ui-widget-content ui-corner-all" />
            </div>
            <div>
               <label for="mail" class="header">메&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일&nbsp;</label>
               <input type="text"   id="w_mail" name="mail"
                  class="text ui-widget-content ui-corner-all" />
            </div>
            <div>
               <label for="password" class="header">비밀번호&nbsp;</label>
               <input    type="password"   id="w_password" name="password"
                  class="text ui-widget-content ui-corner-all" />
            </div>
            <div>
               <label for="content" class="w_header">본&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문</label>
               <br />
               <textarea rows="10"   name="content" cols="50" id="w_content"
                  class="text ui-widget-content ui-corner-all"></textarea>
            </div>
            <button id="w_submit" type="button" data-dismiss="modal"
               class="btn btn-default btn-success">
               <span class="glyphicon glyphicon-off"></span> 확인
            </button>
         </form>
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
         </div>
       </div>

     </div>
   </div>
</body>
</html>