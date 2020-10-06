<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강좌 개설</title>
</head>
<body>
	<table>
		<colgroup>
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
			<col width="10%">
		</colgroup>
		<thead>
			<tr>
				<td>과목 목록(강습코드)</td>
				<td>대관 장소</td>
				<td>강의 시간</td>
				<td>모집일</td>
				<td>마감일</td>
				<td>개강일</td>
				<td>강사 정보</td>
				<td>개설 상태</td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td> <!-- 과목 목록  -->
					<select name="classesCode" id="classesCode">
					<c:forEach items="${classesList }" var="classes">
						<option value="${classes.classesCode }">${classes.classesName }</option>
					</c:forEach>
					</select>
				</td>
				<td>
					<select name="locCode" id="locCode">
					<c:forEach items="${classPlaceList }" var="classPlace">
						<c:if test="${classPlace.available eq 'Y'}"><option value="${classPlace.placeCode }">${classPlace.placeName }</option></c:if>
					</c:forEach>
					</select>
				</td>
				<td> <!-- 과목 시간  -->
					<select name="classTime" id="classTime"> 
					<c:forEach items="${classTimeList }" var="classTime">
						<option value="${classTime.timeCode }">요일 : ${classTime.classDay }, 시간 : ${classTime.classTime }</option>
					</c:forEach>
					</select>
				</td>
				<td><!-- 모집일  --><input name="regStartDate" id="regStartDate" type="date" value="${sysdate }" min="${sysdate }"></td>
				<td><!-- 마감일  --><input name="regEndDate" id="regEndDate" type="date" value="${sysdate }" min="${sysdate }"></td>
				<td><!-- 개강일  --><input name="startDate" id="startDate" type="date" value="${sysdate }" min="${sysdate }"></td>
				<td>
					<select name="instNum" id="instNum">
					<c:forEach items="${instructorInfoList }" var="instructorInfo">
						<option value="${instructorInfo.instNum }">${instructorInfo.memberId }</option>
					</c:forEach>
					</select>
				</td>
				<td>
					<select name="classLv" id="classLv">
					<c:forEach items="${classLevelList }" var="classLevel">
						<option value="${classLevel.levelCode }">${classLevel.levelName } 설명 : ${classLevel.levelDetail }</option>
					</c:forEach>
					</select>
				</td>
				<td>
					<select name="classStatus" id="classStatus">
					<c:forEach items="${classStatusList }" var="classStatus">
						<option value="${classStatus.classStatusCode }"> ${classStatus.classStatus } </option>
					</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="6"><input type="button" value="강좌등록" id="insertLectureBtn"></td>
			</tr>
		</tbody>
	</table>
<script src="resources/js/insertLecture.js?ver=1"></script>
</body>
</html>