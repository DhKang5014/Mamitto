
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
	  console.log(email);
	  console.log('window',window.location.href);
	  var site = window.location.href.split('/')[2];
	  console.log('site',site);
	  var log = window.location.href.split('/')[3];
	  console.log('log',log);
	  var sign = log.split('?');
	  console.log('sign',sign)
	  console.log('sign0',sign[0]);
	  console.log('sign1',sign[1]);
	  var deep_sign = sign[1].split('=');
	  console.log('deep_sign',deep_sign);
	  if(deep_sign[1] == '0'){//주의
		  location.replace('index.jsp');
		  console.log();
	  }else if(deep_sign[1] == '1'){//위험
		  location.replace('index.jsp');
	  }
	  
	}