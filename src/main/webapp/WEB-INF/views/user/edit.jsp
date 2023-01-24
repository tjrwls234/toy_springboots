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
  <body style="font-family: 'IBM Plex Sans KR', cursive" >
    <%@ include file= "navbar.jsp" %>
    <!-- ----------여기부터 main시작---------------- -->
    <main>
      <div class="container" style="margin-top: 50px; margin-bottom: 120px">
        <div
          class="d-flex justify-content-center p-5 border-bottom border-2 border-dark"
        >
          <div class="row">
            <div class="col fw-bold bg-dark bg-opacity-10 p-1 ps-5 pe-5 me-2">
              약관동의
            </div>
            <div
              class="col fw-bold bg-dark bg-opacity-50 text-white p-1 ps-5 pe-5 me-2"
            >
              정보입력
            </div>
            <div class="col fw-bold bg-dark bg-opacity-10 p-1 ps-5 pe-5">
              가입완료
            </div>
          </div>
        </div>

        <div>
          <table class="table align-middle">
            <form action="/user/edit" method="post">
              <tr>
                <th>이름 *</th>
                <td>
                  <input
                    type="text"
                    class="form-control w-50"
                    name="NAME"
                    id="userName"
                    required
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
                    id="userId"
                    required
                  />
                </td>
              </tr>
              <tr>
                <th>비밀번호 *</th>
                <td>
                  <input
                    type="password"
                    class="form-control w-50"
                    name="PASSWORD"
                    id="userPassword"
                    required
                  />
                </td>
              </tr>
              <tr>
                <th>비밀번호확인 *</th>
                <td>
                  <input
                    type="password"
                    class="form-control w-50"
                    id="PASSWORD_CHECK"
                    name="userPasswordCheck"
                    required
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
                      id="emailId"
                      name="EMAIL1"
                    />
                  </div>
                  @
                  <div class="col">
                    <input
                      type="text"
                      class="form-control"
                      id="emailPlatform"
                      name="EMAIL2"
                    />
                  </div>
                  <div class="col-auto">
                    <select class="form-select" name="emailPlatform_s" id="emailPlatform_s">
                      <option value="choice_email">직접입력</option>
                      <option value="@naver.com">naver.com</option>
                      <option value="@gmail.com">gmail.com</option>
                      <option value="@daum.net">daum.net</option>
                    </select>
                  </div>
                </td>
              </tr>
              <tr>
                <th>연락처 *</th>
                <td class="row">
                  <div class="col-auto">
                    <select
                      class="form-select"
                      name="PHONE"
                      id="phoneFirst"
                      required
                    >
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                  </div>
                  <div class="col-auto">-</div>
                  <div class="col-auto">
                    <input
                      type="text"
                      class="form-control"
                      id="phoneSecond"
                      name="PHONE2"
                    />
                  </div>
                  <div class="col-auto">-</div>
                  <div class="col-auto">
                    <input
                      type="text"
                      class="form-control"
                      id="phoneThird"
                      name="PHONE3"
                    />
                  </div>
                </td>
              </tr>
              <tr>
                <th>주소</th>
                <td>
                  <input type="text" class="form-control" id="addressId" name="ADDRESS"/>
                  <div class="row d-flex flex-row align-items-center">
                    <div class="col">
                      <input
                        type="text"
                        class="col form-control"
                        id="addressAddId"
                        name="ADDRESS_ADD"
                      />
                    </div>
                    <div class="col-auto">[나머지주소입력]</div>
                  </div>
                  
                </td>
              </tr>
            </table>
          </div>
          <div class="text-center">
            <button
            type="submit"
            class="btn btn-lg btn-outline-dark fw-bold w-25 m-4"
            
            >
            확인
          </button>
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
