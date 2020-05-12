<?php

include_once('../init.php');
include_once('../config.php');
include_once(DOC_ROOT . '/libraries.php');

session_start();
switch ($_POST['type']) {
    case 'doLogin':
        $username = strip_tags($_POST['username']);
        $passwd = strip_tags($_POST['password']);

        $user->setUsername($username);
        $user->setPasswd($passwd);

        if ($user->DoLogin())
            $response['status'] = true;
        else
            $response['status'] = false;

        $response['message'] = $smarty->fetch(DOC_ROOT . "/templates/boxes/messages_no_format.tpl");
        echo json_encode($response);
        break;
}//switch

?>