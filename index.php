<?php
	include_once('init.php');
	include_once('config.php');
	include_once(DOC_ROOT.'/libraries.php');
	
	if (!isset($_SESSION))
	  session_start();

	$pages = array(
	    #inicio de session y configuracion	
		'login',
		'logout', 
        'homepage',		
		'config',
		'rol',
		#catalogos
        'employee',
		#encuestasrealizadas
        #modules not required login user
        'leaflet',
	);
	
	$page = $_GET['page'];
	$section = $_GET['section'];
	if(!in_array($page, $pages))
		$page = 'leaflet';
	
	include_once(DOC_ROOT.'/modules/user.php');
	include_once(DOC_ROOT.'/modules/'.$page.'.php');
	
	$smarty->assign('page', $page);
	$smarty->assign('section', $section);
	$smarty->assign('time', time());
		
	$pageTpl = ($section == '') ? $page : $page.'_'.$section;
	
	$smarty->assign('pageTpl', $pageTpl);
	$smarty->assign('lang', $lang);

	$smarty->assign('miColor',$miColor);
	$smarty->assign('FOOTER', FOOTER);

	if($page == 'login'){
		$smarty->display(DOC_ROOT.'/templates/login.tpl');
	}
	else{
		$_SESSION['Usr']['page'] = $page;
		$smarty->display(DOC_ROOT.'/templates/index.tpl');
	}
?>