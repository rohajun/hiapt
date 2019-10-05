<%@page import="draft.model.vo.Draft"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<% 

%>

<script type="text/javascript" src="/hiapt/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/hiapt/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">

$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "/hiapt/resources/smarteditor/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : false,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true, 
        }
    });
     
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})

function formview() {
	var width = '700';
	var height = '600';
	var left = Math.ceil((window.screen.width - width) / 2);
	var top = Math.ceil((window.screen.width - height) / 2);
	
	window.open('/hiapt/views/employee/approval/formView.jsp' , '문서보기', 'width=' + width + ', height=' + height + ', left=' + left + ', top' + top);
	
}


</script>

<style type="text/css">
body {
	color: #444;
}

fieldset {
	width: 900px;
}

th {
	border: solid 3px #fbfbf0;
	border-collapse: collapse;
	padding: 15px;
	text-align: center;
	font-size: 11pt;
	height: 60px;
	background-color: rgba(67, 110, 144, 0.9);
	color: #fbfbf0;
	border-radius: 9px;
}

td {
	border: solid 3px #fbfbf0;
	border-collapse: collapse;
	padding-top: 15px;
	padding-bottom: 15px;
	text-align: center;
	font-size: 10.5pt;
	height: 60px;
	color: #214c70;
	font-weight: 600; 
	border-radius: 9px;
	background-color: rgba(67, 110, 144, 0.2);

}

#formselect {
	border-radius: 4px;
	border: none;
	width: 205px;
	height: 28px;
	padding-left: 5px;
	color: #436E90;
}

#boxselect {
	border-radius: 4px;
	border: none;
	width: 175px;
	height: 28px;
	padding-left: 5px;
	color: #436E90;
}
legend {
	font-weight: bold;
	font-size: 13pt;
	color: #436E90;
	line-height: 45px;
	margin-bottom: 15px;
	border-bottom: dashed 1px #769fb3;
}
</style>
<body>
<!-- 타이틀 시작 -->
<form action="/hiapt/dsend" method="post" id="frm">
<div class="row">
	<div id="breadcrumb" class="col-xs-12" style="position: fixed; padding-top: 10px; padding-bottom: 2px;">
		&nbsp;&nbsp;
		<input type="submit" id="savebutton" value="기안하기" class="btn btn-primary btn-sm"
		
		style="font-size: 11pt; letter-spacing: 2px;">&nbsp;&nbsp;
		
		<input type="button" value="임시저장" class="btn btn-default btn-sm"
		
		style="font-size: 11pt; letter-spacing: 2px;">&nbsp;&nbsp;
	</div>
</div>

<div style="height: 65px;"></div>
<!-- 타이틀 끝 -->


<div id="form">

<input type="hidden" name="progress" value="0">

<fieldset style="border: none">
<legend>기본 설정 <br></legend> 
<table style="width:900px; height: 50px;" >

<tr><th style=" width: 120px;">문서 종류</th>
<td width="415px;" style="padding-bottom: 3px;" colspan="3">
<select name="formtype" id="formselect">
<option>공용</option>
</select>&nbsp;&nbsp;&nbsp;&nbsp;
<select name="formcode" id="formselect">
<option value="100">일반 기안서</option>
<option value="110">휴가 신청서</option>
<option value="120">기타1</option>
</select>
&nbsp;&nbsp;&nbsp;
<!-- <button style="height: 25px;">문서보기</button> -->
<button onclick="formview();" class="btn btn-primary btn-xs" style="position: static;  letter-spacing: 2px;">문서보기</button>
</td>
<th style="width: 120px;">작성자</th>
<td width="120px;" style="width: 120px;">
<input type="text" name="drafter" value="S001" readonly 
style = "width: 100px; border: none; background: none; text-align: center; margin-top: 1px;">
</td>
</tr>
<tr id="tab2">
<th style="width: 120px;">공개 여부</th>
<td width="25%">
<input type="radio" name="display" value="Y"	 required="required"> 공개 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="display" value="N" required="required" checked="checked"> 비공개</td>

<th style="width: 120px;">문서함</th>
<td width="25%">
<select name="newbox" id="boxselect">
<option >없음 (기본)</option>
<option value="0">새 문서함1</option>
<option value="1">새 문서함2</option>
<option value="2">새 문서함3</option>
<option value="3">새 문서함4</option>
<option value="4">새 문서함5</option>
</select>
</td>

<th style="width: 120px;">결재자</th>
<td width="120px;" style="width: 120px;">
<input type="text" name="approver" value="관리자로 고정" readonly 
style = "width: 100px; border: none; background: none; text-align: center; margin-top: 1px;">
</td>
</tr>
</table>
</fieldset>

<br>

<br>
<fieldset>
<legend>상세 설정</legend>
</fieldset>

<input type="text" placeholder="제목 입력" name= "drafttitle"  required="required"
style="width: 900px; height: 30px; border: solid 1px #afafaf; border-radius: 5px; padding-left: 5px;">

<div style="width:900px; height:450px; background-color: white; margin-top: 15px;">
<textarea name="doccontent" id="smarteditor" rows="10" cols="100" style="width:897px; height:400px;" required="required"></textarea>
</div>
</div>
<fieldset style="margin-top: 20px;">
<legend>파일 첨부</legend>
<input type="file">
</fieldset>
</form> 
</body>	
</html>