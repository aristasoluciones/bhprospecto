<ul class="page-breadcrumb breadcrumb">
	<li>
		<a href="{$WEB_ROOT}">Llenar formulario</a>
		<i class="fa fa-circle"></i>
	</li>
</ul>
<!-- BEGIN PAGE CONTENT-->
 <div class="page-content-inner">
	 <div class="mt-content-body">
		 <div class="row">
			 <div class="col-md-12">
				 <div id="message_success">
				 </div>
				 <div class="portlet light portlet-fit portlet-datatable bordered">
					 <div class="portlet-title">
						 <div class="caption">
							 <i class="icon-settings font-green"></i>
							 <span class="caption-subject font-yellow-gold bold uppercase">Ingrese la información solicitada</span>
						 </div>
					 </div>
					 <div class="portlet-body form">
						 <form name="frm-wizard"  id="frm-wizard"  method="post" onsubmit="return false" class="horizontal-form">
						 <div class="form-wizard">
							 <div class="form-body">
								 <ul class="nav nav-pills nav-justified steps">
									 <li>
										 <a href="#tab1"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">1</span>
											 <span class="desc">Datos generales</span>
										 </a>
									 </li>
									 <li>
										 <a href="#tab2"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">2</span>
											 <span class="desc">Información contable</span>
										 </a>
									 </li>
									 <li>
										 <a href="#tab3"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">3</span>
											 <span class="desc">Información de nominas</span>
										 </a>
									 </li>
									 <li>
										 <a href="#tab4"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">4</span>
											 <span class="desc">Información financiera</span>
										 </a>
									 </li>
									 <li>
										 <a href="#tab5"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">5</span>
											 <span class="desc">Información administrativa</span>
										 </a>
									 </li>
									 <li>
										 <a href="#tab6"
											data-toggle="tab"
											class="step"
										 >
											 <span class="number">6</span>
											 <span class="desc">Control y calidad</span>
										 </a>
									 </li>
								 </ul>
								 <div id="bar" class="progress progress-striped" role="progressbar">
									 <div class="progress-bar progress-bar-success"> </div>
								 </div>
								 <div class="tab-content">
									 <div class="alert alert-danger display-none" id="error_message">
										 <button class="close" data-dismiss="alert"></button> Error!!</div>
									 <div class="alert alert-success display-none" id="success_message">
										 <button class="close" data-dismiss="alert"></button> Enviado! </div>
									 <div class="tab-pane active" id="tab1">
										 {include file="{$DOC_ROOT}/templates/forms/general_information.tpl"}
									 </div>
									 <div class="tab-pane active" id="tab2">
										 {include file="{$DOC_ROOT}/templates/forms/account_information.tpl"}
									 </div>
									 <div class="tab-pane active" id="tab3">
										 {include file="{$DOC_ROOT}/templates/forms/payroll_information.tpl"}
									 </div>
									 <div class="tab-pane active" id="tab4">
										 {include file="{$DOC_ROOT}/templates/forms/financial_information.tpl"}
									 </div>
									 <div class="tab-pane active" id="tab5">
										 {include file="{$DOC_ROOT}/templates/forms/administrative_information.tpl"}
									 </div>
									 <div class="tab-pane active" id="tab6">
										 {include file="{$DOC_ROOT}/templates/forms/controlandquality_information.tpl"}
									 </div>
								 </div>
							 </div>
							 <div class="form-actions">
								 <div class="row">
									 <div class="col-md-offset-3 col-md-9">
										 <a href="javascript:;" class="btn default button-previous">
											 <i class="fa fa-angle-left"></i> Atras </a>
										 <a href="javascript:;" class="btn btn-outline green button-next"> Continuar
											 <i class="fa fa-angle-right"></i>
										 </a>
										 <a href="javascript:;" class="btn green button-submit"> Enviar
											 <i class="fa fa-check"></i>
										 </a>
									 </div>
								 </div>
							 </div>
						 </div>
						 </form>
					 </div>
				 </div>
			 </div>
		 </div>
	 </div>
 </div>