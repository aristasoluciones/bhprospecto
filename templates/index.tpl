<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
	{include file="{$DOC_ROOT}/templates/1-default-meta.tpl"}
	{include file="{$DOC_ROOT}/templates/2-default-css.tpl"}
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAnqTo73i_KpH32wfpQbFVZOTUPuSIZ1A&sensor=true"></script>
</head>
<body  class="page-container-bg-solid">
    <!-- BEGIN WRAPPER-->
	<div class="page-wrapper">
		<div class="page-wrapper-row">
			<div class="page-wrapper-top">
				<!-- BEGIN HEADER -->
				{include file="{$DOC_ROOT}/templates/header.tpl"}
				<!-- END HEADER -->
			</div>
		</div>
		<div class="page-wrapper-row full-height">
			<div class="page-wrapper-middle">
				<!-- BEGIN CONTAINER -->
				<div class="page-container">
					<!-- BEGIN CONTENT -->
					<div class="page-content-wrapper">
						<div id="modal_huerin" class="modal fade draggable-modal" tabindex="-1" role="dialog"  aria-hidden="true">
						</div>
						<div class="modal fade bs-modal-lg" id="large" tabindex="-1" role="dialog" aria-hidden="true">
						</div>
						<div class="page-content">
							<div class="container">
								{include file="{$DOC_ROOT}/templates/{$page}.tpl"}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
   </div> 
   <!-- END WRAPPER-->
	{include file="{$DOC_ROOT}/templates/3-default-js.tpl"}
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init(); // initlayout and core plugins
		});
	</script>
</body>
</html>