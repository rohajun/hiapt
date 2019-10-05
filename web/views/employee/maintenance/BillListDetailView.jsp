<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 타이틀 시작 -->
<div class="row">
	<div id="breadcrumb" class="col-xs-12">
		<!-- 삼디다스 버튼 -->
		<a href="#" class="show-sidebar"> <i class="fa fa-bars"></i>
		</a>
		<ol class="breadcrumb pull-left">
			<!-- 첫번째 타이틀 시작 -->
			<li><a href="index.html">관리비</a></li>
			<!-- 두번째 하위 메뉴 시작 -->
			<li><a href="#">고지서조회</a></li>
			<!-- 세번째 하위 메뉴 시작 -->
			<!--li><a href="#">부과항목등록</a></li-->
		</ol>
	</div>
</div>
<!-- 타이틀 끝 -->
<!-- 고지서목록 -->
<div class="bs-callout bs-callout-info" id="callout-tabs-extends-component">
    <h4>관리비 납입영수증</h4>
 </div>
 <br>
<table
	class="table table-bordered">
	<thead>
		<tr>
			<th colspan="2" class="danger">전기 에너지</th>
			<th>000000원</th>
			<th colspan="2" class="danger">열 에너지</th>
			<th>000000원</th>
		</tr>		
	</thead>
	<tr>
			<td colspan="2" style="text-align:right;">세대전기료</td>
			<td></td>
			<td colspan="2" style="text-align:right;">난방사용료</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:right;">공동전기료</td>
			<td></td>
			<td colspan="2" style="text-align:right;">온수사용료</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:right;">Tv수신료</td>
			<td></td>
			<td colspan="3"></td>
		</tr>
		<tr class="">
			<th colspan="6" class="primary">전년동월과 당월비교</th>			
		</tr>
		<tr>
			<th class="active"></th>
			<th>전년 사용량</th>
			<th>사용요금</th>
			<th>당월 사용량</th>
			<th>사용요금</th>
			<th></th>
		</tr>
		<tr>
			<th class="active">전기</th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<th class="active">온수</th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<th class="active">수도</th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<th class="active">난방</th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<th colspan="2" style="font-size:13pt; text-align:center; color:black; background:#fff;">2019년 9월</th>
			<th colspan="2" style="font-size:13pt; text-align:center; color:black; background:#fff;">101동101호</th>
			<th colspan="2" style="font-size:13pt; text-align:center; color:black; background:#fff;">홍길동 귀하</th>
		</tr>
	<tbody>
		<tr>
			<td>일반관리비</td>
			<td>22222원</td>
			<th colspan="2" class="warning">전기사용료</th>
			<th>당월부과액</th>
			<td>2222222원</td>
		</tr>
		<tr>
			<td>청소비</td>
			<td>22222원</td>
			<td>세대전기료</td>
			<td>222222원</td>
			<th>미납액</th>
			<td>0</td>
		</tr>
		<tr>
			<td>소독비</td>
			<td>22222원</td>
			<td>공동전기료</td>
			<td>222222원</td>
			<th>미납연체료</th>
			<td>0</td>
		</tr>
		<tr>
			<td>승강기유지비</td>
			<td>22222원</td>
			<td>Tv수신료</td>
			<td>222222원</td>
			<th>납기후 연체료</th>
			<td>0</td>
		</tr>
		<tr>
			<td>수선유지비</td>
			<td>22222원</td>
			<th colspan="4" class="active"></th>
		</tr>
		<tr>
			<td>장기수선충당금</td>
			<td>22222원</td>
			<th colspan="2" class="primary">수도사용료</th>
			<th colspan="2">관리비 납입계좌번호</th>	
		</tr>
		<tr>
			<td>음식물수거료</td>
			<td>22222원</td>
			<td>세대수도료</td>
			<td>222222원</td>
			<td>신한은행</td>
			<td>0</td>
		</tr>
		<tr>
			<td>경비비</td>
			<td>22222원</td>
			<td>공동수도료</td>
			<td>222222원</td>
			<td>국민은행</td>
			<td>0</td>
		</tr>
		<tr>
			<td>화재보험료</td>
			<td>22222원</td>
			<td colspan="2" class="active"></td>
			<td>하나은행</td>
			<td>0</td>
		</tr>
		<tr>
			<td>위탁관리수수료</td>
			<td>22222원</td>
			<td colspan="2" class="active"></td>
			<td>우리은행</td>
			<td>0</td>
		</tr>
		<tr>
			<th class="danger" style="text-align:center;">납기내</th>				
			<th rowspan="2" colspan="2" style="font-size:20pt; text-align:center; line-height:40pt;">34588원</th> 
			<th class="danger" style="text-align:center;">납기후</th>
			<th rowspan="2" colspan="2" style="font-size:20pt; text-align:center; line-height:40pt;">34588원</th> 
		</tr>
		<tr>
		<th class="active" style="text-align:center;">까지</th>	
		<th class="active" style="text-align:center;">까지</th>
		</tr>
		
	</tbody>
</table>
