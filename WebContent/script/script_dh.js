window.onload = function(){
  go();
}
function go(){
  const getCookieValue = (key) => {
      let cookieKey = key + "="; 
      let result = "";
      const cookieArr = document.cookie.split(";");
      
      for(let i = 0; i < cookieArr.length; i++) {
        if(cookieArr[i][0] === " ") {
          cookieArr[i] = cookieArr[i].substring(1);
        }
        
        if(cookieArr[i].indexOf(cookieKey) === 0) {
          result = cookieArr[i].slice(cookieKey.length, cookieArr[i].length);
          return result;
        }
      } 
      return result;
  }
  var email = getCookieValue('email');
  console.log(typeof(email));
  $('#email').val(email);
  console.log(window.location.href.split('/')[2]+'/'+'login_page.jsp');
}

