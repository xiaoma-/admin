<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>管理系统 | 登录</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

        <link href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- Theme style -->
        <asset:stylesheet src="AdminLTE/AdminLTE.css" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bg-black">

        <div class="form-box" id="login-box">
            <div class="header">登 录</div>
            <form action="${request.contextPath}/login/doLogin" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                        <input type="text" name="username" class="form-control" placeholder="账号"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" class="form-control" placeholder="密码"/>
                    </div>          
                    <div class="form-group">
                        <input type="checkbox" name="remember_me"/> 下次自动登录
                    </div>
                </div>
                <div class="footer">                                                               
                    <button type="submit" class="btn bg-olive btn-block">登 录</button>  
                    
                    <p><a href="#">忘记密码</a></p>
                    
                    <a href="${request.contextPath }/register" class="text-center">注册</a>
                </div>
            </form>
        </div>


        <!-- jQuery 2.0.2 -->
        <script src="http://cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="http://cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript"></script>    

    </body>
</html>