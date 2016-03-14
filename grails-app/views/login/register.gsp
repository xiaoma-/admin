<!DOCTYPE html>
<html class="bg-black">
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Registration Page</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        
        <link href="http://cdn.bootcss.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="http://cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="http://cdn.bootcss.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css">
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
            <div class="header">新用户注册</div>
            <form action="${request.contextPath}/login/doRegister" method="post">
                <div class="body bg-gray">
                    <div class="form-group">
                    	<label class="control-label hide"><small><i class="fa fa-times-circle-o"></i> 账号已存在</small></label>
                        <input type="text" name="username" class="form-control verify" placeholder="账号" value="${params.username }"/>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="password" class="form-control password" placeholder="密码" value="${params.password }"/>
                    </div>
                    <div class="form-group" id="passwordMessage">
                    	<label class="control-label hide"><small><i class="fa fa-times-circle-o"></i> 两次输入密码不一致</small></label>
                        <input type="password" name="password2" id="password2" class="form-control password" placeholder="确认密码" value="${params.password }"/>
                    </div>
                    <div class="form-group">
                        <input type="text" name="nickname" class="form-control" placeholder="姓名" value="${params.nickname }"/>
                    </div>
                    <div class="form-group">
                    	<label class="control-label hide"><small><i class="fa fa-times-circle-o"></i> 手机号码已存在</small></label>
                        <input type="text"  name="telephone" class="form-control verify" placeholder="手机号码" value="${params.telephone }"/>
                    </div>
                </div>
                <div class="footer">
                    <button type="submit" class="btn bg-olive btn-block">注册</button>
                    <a href="${request.contextPath }/login" class="text-center">直接登录</a>
                </div>
            </form>
        </div>

         <!-- jQuery 2.0.2 -->
        <script src="http://cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="http://cdn.bootcss.com/bootstrap/3.3.1/js/bootstrap.min.js" type="text/javascript"></script>   
		<script type="text/javascript">
		$(function($){
			$(".password").blur(function(){
				var _password = $("#password").val();
				var _password2 = $("#password2").val();
				if(_password && _password2 && _password!=_password2){
					 $("#passwordMessage").addClass("has-error").find("label").removeClass("hide");
				}else{
					$("#passwordMessage").removeClass("has-error").find("label").addClass("hide");
				}
			});
			$(".verify").blur(function(){
				var _obj = $(this).parent();
				var _name = $(this).attr("name");
				var _value = $(this).val();
				$.ajax({
					url:"${request.contextPath}/login/doVerify",
					type:"POST",
					data:{"name":_name,"value":_value},
					success:function(res){
						if("error"==res){
							 _obj.addClass("has-error").find("label").removeClass("hide");
						}else if("success"==res){
							 _obj.removeClass("has-error").find("label").addClass("hide");
						}
					}
				});
			});
		});
		
		</script>
    </body>
</html>
