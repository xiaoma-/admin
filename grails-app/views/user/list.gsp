<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>用户列表</title>
	</head>
	<body>
		 <div class="box box-primary ">
            	<div class="box-header">
                    <div class="box-tools">
	                	<form class="form form-inline" action="${request.getContextPath()}/user/userList" method="get"  name="searchForm" id="searchForm">
		            		<div class="input-group">
		                        <span class="input-group-addon">用户名</span>
		                     	<input type="text" class="form-control" id="username" name="username" placeholder="用户名" value="${params.username}" >
		                    </div>
		                    <div class="input-group">
		                        <span class="input-group-addon">姓名</span>
		                        <input type="text" class="form-control" id="name" name="name" placeholder="姓名" value="${params.name}" >
		                    </div>
		                    <div class="input-group">
		                        <span class="input-group-addon">角色</span>
		                        <select class="form-control" id="roleId" name="roleId">
		                           <option value="">--选择角色--</option>
		                           <g:each in="${roles}" var="role">
		                                <option value="${role.id}" <g:if test="${params.roleId == role.id}"> selected="selected" </g:if> >${role.authority}</option>
		                           </g:each>
		                        </select>
		                    </div>
		                    <button type="button" onclick="$('#searchForm').submit()" class="btn btn-default mg10">
		                        <i class="fa fa-search"></i> 查询
		                    </button>
		                    <a class="btn btn-default" href="${request.getContextPath()}/user/userEdit" title="新建微信息">
		                   		 <i class="fa fa-plus"></i> 新建
		                    </a>
	                	</form>
                	</div>
                </div>
                <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>用户名</th>
                                    <th>账号</th>
                                    <th>手机号</th>
                                    <th>状态</th>
                                    <th>操作</th>
                                </tr>
                        	</thead>
                        	<tbody>
                        		<g:each in="${result}" var="user">
	                                <tr>
		                                <td>${user.nickname}</td>
		                                <td>${user.username}</td>
		                                <td>${user.telephone}</td>
		                                <td>${user.status}</td>
		                                <td>1</td>
	                                </tr>
                                </g:each>
                        	</tbody>
                   		</table>
                   		
                </div>
                 <div class="box-footer clearfix">
                 	<g:render template="/common/page" model="[totalCount: result?.totalCount]" />
                 </div>
        </div>
	</body>
</html>