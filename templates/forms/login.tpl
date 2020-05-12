<form class="login-form" id="frmLogin" method="post">
<input type="hidden" name="type" value="doLogin">
    <h3 class="form-title">Iniciar Sesi&oacute;n</h3>
    <div class="alert alert-danger display-hide" id="txtErrMsg">
		<button class="close" data-close="alert"></button>
		<span id="txtErrMsg"></span>
    </div>	
    <div class="form-group">
        <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
        <label class="control-label visible-ie8 visible-ie9">Correo Electr&oacute;nico:</label>
        <div class="controls">
            <div class="input-icon">
                <i class="fa fa-user"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Usuario" name="username" id="username" autocomplete="off"/>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label visible-ie8 visible-ie9">Contrase&ntilde;a:</label>
        <div class="controls">
            <div class="input-icon">
                <i class="fa fa-lock"></i>
                <input class="form-control placeholder-no-fix" type="password" placeholder="Contrase&ntilde;a" name="password" id="password" autocomplete="off"/>
            </div>
        </div>
    </div>

    <div class="form-actions">
        <button type="button" class="btn green-dark pull-right mt-ladda-btn ladda-button"  data-style="expand-left" id="btn_login">
        Ingresar <i class="m-icon-swapright m-icon-white"></i>
        </button>            
    </div>
    <div class="create-account">
        <p> Necesitas una cotizacion ?&nbsp;
            <a href="{$WEB_ROOT}/leaflet">  Ir al siguiente formulario</a>
        </p>
    </div>
</form>