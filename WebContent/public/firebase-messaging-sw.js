import('https://www.gstatic.com/firebasejs/6.2.0/firebase-app.js')
import('https://www.gstatic.com/firebasejs/6.2.0/firebase-messaging.js')
var firebaseConfig = {
    apiKey: "AIzaSyABALGEjxe6qKFf8tmKmKtiDJggsO4Hvho",
    authDomain: "mamiddo-cebd2.firebaseapp.com",
    databaseURL: "https://mamiddo-cebd2.firebaseio.com",
    projectId: "mamiddo-cebd2",
    storageBucket: "mamiddo-cebd2.appspot.com",
    messagingSenderId: "228735732994",
    appId: "1:228735732994:web:bd0f5eeaaae5872951c61b",
    measurementId: "G-SY1N03SC7H"
};


firebase.initializeApp(firebaseConfig);
const messaging= firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload){
    console.log(payload);
})


function InitializeFireBaseMessaging(){
    messaging.requestPermission()
    .then(function(){
        console.log("Notification Permission");
        return messaging.getToken();
    })
    .then(function(token){
        console.log("Token : " + token);
        document.getElementById('token').innerHTML = token;
    }).catch(function(reason){
        console.log(reason);
    });
}




messaging.onMessage(function (payload){
    console.log(payload);
});


messaging.onTokenRefresh(function(){

    messaging.getToken().then(function(newtoken){

    console.log("New Token : " + newtoken);

})
    .catch(function(reason){
        console.log(reason);
    });

});


InitializeFireBaseMessaging();