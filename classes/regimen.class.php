<?php

class Regimen extends Main
{
    public function enumerate() {
        $sql =  "SELECT * FROM tipoRegimen ORDER BY claveRegimen DESC";
        $this->Util()->DB()->setQuery($sql);
        return $this->Util()->DB()->GetResult();
    }

}