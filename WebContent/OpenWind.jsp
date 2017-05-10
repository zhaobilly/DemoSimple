<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">


/** 
* JS通过虚拟表单的方式POST方式提交数据 
* @param URL 
* @param PARAMS 
* @returns 
*/  
function jsPost(URL, PARAMS, TARGET) {  
     var temp = document.createElement("form");  
     temp.action = URL;  
      temp.method = "post";  
      temp.style.display = "none";  
      if(!TARGET){  
          TARGET="_self";  
      }  
      temp.target=TARGET;  
      for (var x in PARAMS) {  
        var opt = document.createElement("textarea");  
        opt.name = x;  
        opt.value = PARAMS[x];  
        temp.appendChild(opt);  
      }  
      document.body.appendChild(temp);  
      temp.submit();  
      return temp;  
    } 



//有人说这个函数要通过a的onclick调用才行。我没有测试按钮行不行。  
//如果想将window.open不放在当前页面，写在上面wallimn-util.js文件中，浏览器同样会阻止。  
function jsOpenWin(){  
  var title="js新窗口";  
  window.open("about:blank",title);  
  jsPost("wallimn.iteye.com",{name:"wallimn"},title);  
}



</script>
</head>
<body>

</body>
</html>