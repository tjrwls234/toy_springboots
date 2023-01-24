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
  </head>
  <body style="font-family: 'IBM Plex Sans KR', cursive"  class="bg-secondary bg-opacity-10">
    <%@ include file= "navbar.jsp"  %>
    <main>
      <div class="container">
        <div class="fs-4 fw-bold pb-3 pt-5 mt-4">👤 회원 정보 조회 / 수정</div>
        <div
          class="bg-light ps-4 pe-4 pb-1 mt-2"
          style="margin-top: 50px; margin-bottom: 120px"
        >
          <div>
            <table class="table align-middle">
              <form action="/user/updatedone" class="form" method="post">
                <tr>
                  <th>이름 *</th>
                  <td>
                    <input
                      type="text"
                      class="form-control w-50"
                      name="NAME"
                      value="${resultMap.NAME}"
                    />
                  </td>
                </tr>
                <tr>
                  <th>아이디 *</th>
                  <td>
                    <input
                      type="text"
                      class="form-control w-50"
                      name="USERS_UID"
                      value="${resultMap.USERS_UID}"
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th class="text-nowrap">비밀번호 *</th>
                  <td>
                    <input
                      type="text"
                      class="form-control w-50"
                      name="PASSWORD"
                      value="${resultMap.PASSWORD}"
                      readonly
                    />
                  </td>
                </tr>
                <tr>
                  <th>이메일</th>
                  <td class="row d-flex align-items-center">
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="EMAIL1"
                        value="${resultMap.EMAIL1}"
                      />
                    </div>
                    @
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="EMAIL2"
                        value="${resultMap.EMAIL2}"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>연락처 *</th>
                  <td class="row">
                    <div class="col">
                      <input type="text"
                      class="form-control"
                      name="PHONE"
                      value="${resultMap.PHONE}">
                    </div>
                    <div class="col-auto">-</div>
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="PHONE2"
                        value="${resultMap.PHONE2}"
                      />
                    </div>
                    <div class="col-auto">-</div>
                    <div class="col">
                      <input
                        type="text"
                        class="form-control"
                        name="PHONE3"
                        value="${resultMap.PHONE3}"
                      />
                    </div>
                  </td>
                </tr>
                <tr>
                  <th>주소</th>
                  <td>
                    <input
                      type="text"
                      class="form-control"
                      name="ADDRESS"
                      value="${resultMap.ADDRESS}"
                    />
                    <div class="row d-flex flex-row align-items-center mt-1">
                      <div class="col">
                        <input
                          type="text"
                          class="col form-control"
                          name="ADDRESS_ADD"
                          value="${resultMap.ADDRESS_ADD}"
                        />
                      </div>
                      <div class="col-auto">[나머지주소입력]</div>
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            <div class="text-center">
              <button class="btn btn-lg btn-outline-dark fw-bold w-25 m-4" type="submit">저장</button>
            </div>
          </div>
        </div>
      </form>
    </main>
    <%@ include file= "footer.jsp" %>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
