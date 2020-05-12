<?php

class User extends Main
{
    private $usuarioId = 0;
    private $username;
    private $email;
    private $password;

    public function setUsuarioId($value)
    {
        $this->Util()->ValidateInteger($value);
        $this->usuarioId = $value;
    }

    public function setEmail($value, $validate = false)
    {
        if ($this->Util()->ValidateRequireField($value, 'Correo Electr&oacute;nico')) {
            if ($validate)
                $this->Util()->ValidateMail($value);
            $this->Util()->ValidateString($value, 100, 1, '');
            $this->email = $value;
        }
    }

    public function setUsername($value)
    {
        if ($this->Util()->ValidateRequireField($value, 'Usuario')) {
            $this->Util()->ValidateString($value, 100, 1, '');
            $this->username = $value;
        }
    }

    public function setPasswd($value)
    {
        if ($this->Util()->ValidateRequireField($value, 'Contrase&ntilde;a')) {
            $this->Util()->ValidateString($value, 100, 1, 'Password');
            $this->password = $value;
        }
    }

    public function Info()
    {

        $this->Util()->DB()->setQuery('SELECT * FROM personal WHERE personalId = "' . $this->usuarioId . '"');
        $user = $this->Util()->DB()->GetRow();

        $user['version'] = 'v3';

        return $user;
    }

    public function AllowAccess($page = '')
    {
        $User = $_SESSION['Usr'];

        if (!$User['isLogged']) {
            header('Location: ' . WEB_ROOT . '/login');
            exit;
        }
        if ($page != '' && !$User['rol_Id'] && !$User['admin']) {
            if (!$this->allow_access_module($page)) {
                header('Location: ' . WEB_ROOT);
                exit;
            }
        }

    }//AllowAccess

    public function allow_access_module($page)
    {
        $this->Util()->Rol()->setRolId($_SESSION['Usr']["rol_id"]);
        $allowPages = $this->Util()->Rol()->getPermisosByRol();
        if (in_array($page, $allowPages))
            return true;
        else
            return false;
    }//AllowAccessModule

    public function DoLoginCheck()
    {

        if ($this->Util()->PrintErrors()) {
            return false;
        }

        return true;
    }

    public function DoLogin()
    {
        if ($this->Util()->PrintErrors()) {
            return false;
        }
        $sql = 'SELECT * 
                FROM 
                    user 
                WHERE 
                    username = "' . $this->username . '"
                AND 
                    password = "' . md5($this->password) . '"';

        $this->Util()->DB()->setQuery($sql);
        $row = $this->Util()->DB()->GetRow();
        if ($row) {
            $card =  $row;
            $card['isLogged'] = true;;
            $_SESSION['Usr'] = $card;
            return true;
        } else {
            $this->Util()->setError(10006, 'error', '');
            $this->Util()->PrintErrors();
        }
        return false;
    }

    public function DoLogout()
    {

        $_SESSION['User'] = '';
        unset($_SESSION['User']);
        session_destroy();

    }//DoLogout

}//User

?>