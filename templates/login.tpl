<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]--><head>
	{include file="{$DOC_ROOT}/templates/1-default-meta.tpl"}
    {include file="{$DOC_ROOT}/templates/2-default-css.tpl"}
	
    {if $page == "login"}
     <!-- END PAGE LEVEL PLUGINS -->
	   <link href="assets/pages/css/login-3.min.css" rel="stylesheet" type="text/css" />
    {/if}
</head>
<body class="login">
	<div class="logo">
	</div>
	<div class="content">
		{include file="{$DOC_ROOT}/templates/forms/login.tpl"}
	</div>
    {include file="{$DOC_ROOT}/templates/3-default-js.tpl"}
</body>
</html>