<div class="page-header-top">
    <div class="container">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="{$WEB_ROOT}">
                <img src="{$WEB_ROOT}/assets/global/img/logo.svg" alt="logo" class="logo-default" width="90"  height="30px"/>
            </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler">
        </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                {if $Usr.isLogged}
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" src="{$WEB_ROOT}/assets/layouts/layout/img/avatar.png" class="img-circle" />
                            <span class="username username-hide-on-mobile">{$Usr.usuario}</span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default">
                            <li><a href="{$WEB_ROOT}/logout"><i class="icon-key"></i> Salir</a></li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-quick-sidebar-toggler">
                        <a href="javascript:;" class="dropdown-toggle">
                            <i class="icon-logout"></i>
                        </a>
                    </li>
                {/if}

            </ul>
        </div>
    </div>
</div>