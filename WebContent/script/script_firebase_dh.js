import '@firebase/messaging';

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
messaging.usePublicVapidKey("Your Web push key");


Notification.requestPermission().then(function(permission) {
    if (permission === 'granted') {
        console.log('Notification permission granted.');
    } else {
        console.log('Unable to get permission to notify.');
    }
});


