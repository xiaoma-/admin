<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left image">
            <img src="img/avatar3.png" class="img-circle" alt="User Image" />
        </div>
        <div class="pull-left info">
            <p>Hello, ${session?.user?.nickname }</p>

            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
    </div>
    <!-- search form -->
    <!-- 
    <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
            <input type="text" name="q" class="form-control" placeholder="Search..."/>
            <span class="input-group-btn">
                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
            </span>
        </div>
    </form>
     -->
    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
        <li class="active">
            <a href="index.html">
                <i class="fa fa-dashboard"></i> <span>工作台</span>
            </a>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-bar-chart-o"></i>
                <span>权限设置</span><small class="badge pull-right bg-green">new</small>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
            	<li><a href="pages/charts/morris.html"><i class="fa fa-angle-double-right"></i> 用户</a></li>
                <li><a href="pages/charts/morris.html"><i class="fa fa-angle-double-right"></i> 角色</a></li>
                <li><a href="pages/charts/flot.html"><i class="fa fa-angle-double-right"></i> 模块</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-laptop"></i>
                <span>客户信息</span><small class="badge pull-right bg-yellow">12</small>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li><a href="pages/UI/general.html"><i class="fa fa-angle-double-right"></i> 客户列表</a></li>
            </ul>
        </li>
    </ul>
</section>