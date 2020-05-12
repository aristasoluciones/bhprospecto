<?php
include_once('../init.php');
include_once('../config.php');
include_once(DOC_ROOT . '/libraries.php');

switch ($_POST['type']) {
    case 'list':
        $list = $employee->enumerate();
        echo json_encode($list);
        break;
    case 'open-modal':
        $data['form'] = 'form_employee';
        $data['modal_title'] = 'Agregar empleado';
        $data['btn_name'] = "Guardar";
        $smarty->assign('data', $data);
        $dataResponse['content']  = $smarty->fetch(DOC_ROOT . "/templates/boxes/general_modal_boxe.tpl");
        echo json_encode($dataResponse);
        break;
}