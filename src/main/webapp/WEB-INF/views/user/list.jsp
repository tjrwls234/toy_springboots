<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en"> 
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>홀리피트니스</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Zen+Dots&display=swap"
      rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR&display=swap" rel="stylesheet">
    <body style="font-family: 'IBM Plex Sans KR', cursive" class="bg-secondary bg-opacity-10">
    <%@ include file= "navbar.jsp"  %>
    <main>
      <div class="container">
        <div class="fs-4 fw-bold pb-3 pt-5 mt-4">👥 회원 관리</div>
        
        <c:forEach items="${resultMap}" var = "resultData" varStatus="loop">
        <c:set var="count" value="${count + 1}" />
        </c:forEach>
        <div class="text-secondary">총 ${count}명</div>
        <div class="bg-light ps-4 pe-4 pb-1 mt-2 mb-2">
          <table class="table text-center border-none">
            <thead class="border-bottom border-3">
              <tr>
                <th>이름</th>
                <th>아이디</th>
                <th>가입일</th>
                <th>설문여부</th>
                <th>관리</th>
              </tr>
            </thead>
            <tbody class="">

              <c:forEach items="${resultMap}" var="resultData" varStatus="loop">
                <tr>
                  <td>
                    <a
                    class="text-dark"
                    href="/user/update/${resultData.USERS_UID}"
                    >${resultData.NAME}</a>
                  </td>
                  <td>${resultData.USERS_UID}</td>
                  <td>${resultData.REGISTRY_DATE}</td>
                  <td>yes</td>
                  <td>
                    <a class="btn btn btn-outline-dark btn-sm" href="/user/update/${resultData.USERS_UID}">수정</a>
                    <a class="btn btn btn-outline-dark btn-sm" href="/user/delete/${resultData.USERS_UID}">탈퇴</a>
                  </td>
                </tr>
              </c:forEach>
                <%-- <tr>
                  <td>
                    <a
                    class="text-dark"
                    href=""
                    >이름</a
                    >
                  </td>
                  <td>아이디</td>
                  <td>가입일</td>
                  <td>설문여부</td>
                  <td>
                    <a class="btn btn btn-outline-dark btn-sm" href="/">수정</a>
                    <a class="btn btn btn-outline-dark btn-sm" href="/">탈퇴</a>
                  </td>
                </tr> --%>
            </tbody>
          </table>
        </div>
        <div class="text-end">
          <form action="/user/form">
          <button type="submit" class="btn btn-secondary btn-sm text-nowrap">회원 등록</button>
          </form>
        </div>
      </div>
    </main>
    <%@ include file= "footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
