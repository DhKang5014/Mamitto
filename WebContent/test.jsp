<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<input type="text" id="bigOne">

<!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/7.23.0/firebase-analytics.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyCOFYjrVGZ0Kc8R_PvE0ttVQPVqY1QlhCE",
    authDomain: "mamitto-a19df.firebaseapp.com",
    databaseURL: "https://mamitto-a19df.firebaseio.com",
    projectId: "mamitto-a19df",
    storageBucket: "mamitto-a19df.appspot.com",
    messagingSenderId: "988301880834",
    appId: "1:988301880834:web:d4fbd84924abb7cef2c11b",
    measurementId: "G-EDCPD8H363"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  firebase.analytics();
  
  var bigOne = document.getElementById("bigOne");
  var dbRef = firebase.database().ref().child("text");
  dbRef.on("value", snap => bigOne.value = snap.val() );
</script>
 


<iframe src="baby.wav" allow="autoplay" id="audio" style="display:none"></iframe>

<audio id="audio" autoplay>

<source src="baby.wav">

</audio>

 

</body>
</html>