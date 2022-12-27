<?php

class DB{
    public $dbinfo = [
        'dbname' => 'intec',
        'login' => 'root',
        'password' => 'd@fYjyvdq-8fAMOP'
    ];

    public $db;

    public function __construct()
    {   
        try {
            $this->db = new PDO("mysql:host=localhost;dbname=".$this->dbinfo['dbname'],
            $this->dbinfo["login"], $this->dbinfo["password"],
            [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
        );
        } catch (Exception $ex){
            echo "Исключение: ", $ex->getMessage(), (int)$ex->getCode(). "\n";
        }
        return $this->db;
    }

    public function getDB(){
        if($this->db instanceof PDO){
            return $this->db;
        } else{
            echo "db is not instanceof PDO";
        }
    }
}