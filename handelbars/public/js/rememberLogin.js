/**
 * Created by Administrator on 2016/3/6 0006.
 */
<!-- 记住密码 -->
function getCookie(c_name)      //根据分隔符每个变量的值
{
    if (document.cookie.length > 0) {
       var c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1;
           var c_end = document.cookie.indexOf("^",c_start);
            if (c_end==-1)
                c_end=document.cookie.length;
            return unescape(document.cookie.substring(c_start,c_end));
        }
    }
    return "";
}

function setCookie(c_name, n_value, p_name, p_value, expiredays)        //设置cookie
{

    var exdate = new Date();
    exdate.setDate(exdate.getDate() + expiredays);
    document.cookie = c_name + "=" + escape(n_value) + "^" + p_name + "=" + escape(p_value) + ((expiredays == null) ? "" : "^;expires=" + exdate.toGMTString());
    console.log(document.cookie)
}

function checkCookie()      //检测cookie是否存在，如果存在则直接读取，否则创建新的cookie
{
    //alert(document.cookie)
    var username = getCookie('username');
    var password = getCookie('password');
    if (username != null && username != "") {
        if(password != null && password != "") {
            $("input[name='nickName']").val(username);
            $("input[name='passWord']").val(password);
        }
        else{
            $("input[name='nickName']").val(username);
            $("input[name='passWord']").focus();
        }
    }
    else {
        $("input[name='nickName']").focus();

    }
}
//清除cookie
function cleanCookie (c_name, p_name) {     //使cookie过期
    document.cookie = c_name + "=" + ";" + p_name + "=" + ";expires=Thu, 01-Jan-70 00:00:01 GMT";
}

//页面的ajax登录
function Login(){
    var nickName=$("input[name='nickName']").val();
    var password=$("input[name='passWord']").val();
    $.ajax({
        type:"post",
        url:"user/login",
        data:{nickname:nickName,password:password},
        datatype:"json",
        success:function(data){
            var user=data.user_nickName||"undefined";
            //alert(user);
            if(user=="undefined"){
                window.location.href="/user_login";
            }
            else{
                if($("input:checkbox:checked").val()=='checked') {
                    setCookie('username', nickName, 'password', password, 30);
                }
                else {

                    setCookie('username', nickName, 'password','', 90);
                }
                $("#login").hide();
                $("#user_name").load("/user_getNickName");
            }
        }
    })
}