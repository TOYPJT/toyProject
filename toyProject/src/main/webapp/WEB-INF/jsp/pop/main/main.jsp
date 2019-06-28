<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/WEB-INF/jsp/pop/include/head.jsp"></jsp:include>
<style>
.main{width:inherit;height:inherit;}
.calendar-desc{width:100%;height:60px;position:relative;padding-top:10px;text-align:center;}
.calendar-desc .cal-txt{color:white;font-family:LotteMartDream;}
.calendar-desc .now{font-size:30px;margin-top:5px;letter-spacing: 5px;position:relative;top:10px;right:25px;}
.calendar-desc .cal-optBtn{width:80px;margin-top:20px;height:25px;color:white;float:left;font-family:LotteMartDream;border:1px solid white;background-color:inherit;border-radius:5px;}
.calendar-desc .cal-naviBtn{width:50px;margin-top:20px;height:25px;color:white;cursor:pointer;float:right;font-family:LotteMartDream;border:1px solid white;background-color:inherit;border-radius:5px;}
.calendar-desc .on {background-color:rgba(0,0,0,0.8);cursor:pointer;}
.calendar-desc .cal-optBtn:hover{background-color:rgba(0,0,0,0.8);cursor:pointer;}
.month-cal{border:1px solid white;border-spacing:0;border-radius:10px;width:98%;height:510px;margin-left:10px;text-align:center;}
.month-cal td{border-top:1px solid white;border-left:1px solid white;font-family:LotteMartDream;font-size:14px;color:white;}
.month-cal .td-div{width:90%;height:95%;position:relative;left:10px;top:10px;color:white;text-align:left;}
.month-cal .td-div .td-day{font-family:LotteMartDream;color:white;}
.month-cal .td-div .preMonth{color:#c7c7c7;}
.month-cal .td-div .schedule .group-color{width:17px;margin-right:10px;height:7px;float:left;border-radius:3px;margin-top:5px;}
.month-cal .td-div .schedule p{color:white;font-family:LotteMartDream;font-size:12px;}
</style>
</head>
<body>
	<div class="main">
		<div class="calendar-desc">
			<input type="button" class="cal-optBtn on" value="월간" style="margin-left:30px;">
			<input type="button" class="cal-optBtn" value="주간">
			<span class="cal-txt now"> <span id="cal-year">2019</span>년 <span id="cal-month">6</span>월</span>
			<input type="button" class="cal-naviBtn" value="▶" style="margin-right:30px;">
			<input type="button" class="cal-naviBtn" value="◀">
		</div>
		<table class="month-cal">
			
			<thead>
				<tr style="height:30px;border-bottom:1px solid white;">
					<td style="border:0;">일요일</td><td  style="border-top:0;">월요일</td><td  style="border-top:0;">화요일</td><td  style="border-top:0;">수요일</td>
					<td  style="border-top:0;">목요일</td><td  style="border-top:0;">금요일</td><td style="border-top:0;">토요일</td>
				</tr>
			</thead>
			<tbody>
				<tr style="height:80px;">
					<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day preMonth">26</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">27</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">28</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">29</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">30</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">31</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">1</span>
							<div class="schedule">
								<div class="group-color" style="background-color:red;"></div>
								<p>출근</p>
							</div>
							<div class="schedule">
								<div class="group-color"  style="background-color:pink;"></div>
								<p>회의</p>
							</div>
							<div class="schedule">
								<div class="group-color"  style="background-color:blue;"></div>
								<p>스터디</p>
							</div>	
						</div>
					</td>
				</tr>
				<tr style="height:80px;">
					<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day">2</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">3</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">4</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">5</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">6</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">7</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">8</span>
						</div>
					</td>
				</tr>
				<tr style="height:80px;">
						<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day">9</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">10</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">11</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">12</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">13</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">14</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">15</span>
						</div>
					</td>
				</tr>
				<tr style="height:80px;">
						<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day">16</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">17</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">18</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">19</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">20</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">21</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">22</span>
						</div>
					</td>
				</tr>
				<tr style="height:80px;">
						<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day">23</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">24</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">25</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">26</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">27</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">28</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day">29</span>
						</div>
					</td>
				</tr>
				<tr style="height:80px;">
						<td style="border-left:0;">
						<div class="td-div">
							<span class="td-day">30</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">1</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">2</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">3</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">4</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">5</span>
						</div>
					</td>
					<td>
						<div class="td-div">
							<span class="td-day preMonth">6</span>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>