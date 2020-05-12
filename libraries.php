<?php
require 'vendor/autoload.php';
include_once(DOC_ROOT.'/properties/errors.es.php');
require(DOC_ROOT.'/libs/Smarty.class.php');
require(DOC_ROOT.'/libs/nusoap.php');
include_once(DOC_ROOT."/libs/qr/qrlib.php");
include_once(DOC_ROOT."/libs/PHPExcel/Classes/PHPExcel.php");

include_once(DOC_ROOT.'/classes/db.class.php');
$db = new DB;

include_once(DOC_ROOT.'/classes/error.class.php');
$error = new CustomError;

include_once(DOC_ROOT.'/classes/util.class.php');
$util = new Util;

include_once(DOC_ROOT.'/classes/main.class.php');
$main = new Main;

include_once(DOC_ROOT.'/classes/user.class.php');
$user = new User;

include_once(DOC_ROOT.'/classes/employee.class.php');
$employee = new Employee;

include_once(DOC_ROOT.'/classes/usuario.class.php');
$usuario = new Usuario;

include_once(DOC_ROOT.'/classes/role.class.php');
$role = new Role;

include_once(DOC_ROOT.'/classes/regimen.class.php');
$regimen = new Regimen;

include_once(DOC_ROOT.'/classes/leaflet.class.php');
$leaflet = new Leaflet;

include_once(DOC_ROOT.'/classes/class.phpmailer.php');
include_once(DOC_ROOT.'/classes/class.smtp.php');
include_once(DOC_ROOT.'/classes/sendmail.class.php');
$leaflet->getTest();

$smarty = new Smarty;
/*$role->setAdmin($Usr['admin']);

$role->setRolId($Usr['rol_id']);
$permissions = $role->getPermisosByRol();
$smarty->assign('privilegios', $permissions);*/
$smarty->assign('Usr',$_SESSION['Usuario']);
$smarty->assign('DOC_ROOT',DOC_ROOT);
$smarty->assign('WEB_ROOT',WEB_ROOT);
?>