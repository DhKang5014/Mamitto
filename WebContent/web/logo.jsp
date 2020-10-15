<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
<meta charset="UTF-8">
<!-- PWA 매너페스트 파일 연결, 상태바 테마색상을 흰색으로 변경 -->
<link rel="manifest" href="../web/pwa/manifest.json">
<meta name="theme-color" content="#ffffff">

<!-- 모바일 기기 뷰포트, 브라우저 주소줄 파비콘 설정-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="../web/images/icons/favicon.ico">
<link rel="icon" type="image/png" sizes="16x16" href="../web/images/icons/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="../web/images/icons/favicon-32x32.png">

<title>안녕하세요! PWA by JS</title>
<style>
  html,
  body {
    /* html, body 모두 높이를 100%로 고정시켜야 flexbox 동작 */
    height: 100%;
    background-color: #F3A530;
    color: #ffffff;
  }

  .container {
    height: 100%;
    /* 높이를 100%로 고정시킴 */
    display: flex;
    /* 컨테이너를 flexbox 스타일로 변경 */
    align-items: center;
    /* 상하 가운데 정렬 */
    justify-content: center;
    /* 좌우 가운데 정렬*/
  }
</style>
</head>
<body>
    <div class="container">
        <h1>안녕하세요!</h1>
        <img src="../web/images/hello-pwa.png" alt=""></img>
        <p>by JS</p>
      </div>
      <!-- 1. 서비스 워커 등록 -->
      <script>
        if ('serviceWorker' in navigator) {
          navigator.serviceWorker
            .register('pwa/service_worker.js')
            .then(function () {
              console.log('서비스 워커가 등록됨!');
            })
        }
      </script>
</body>
</html>