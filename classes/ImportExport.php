<?php
require_once __DIR__.'/DB.php';

class ImportExport{
    public $db;

    public function __construct($db)
    {
        $this->db = $db->getDB();
    }

    public function Import(){
        try {
            echo "<b>Import:</b>\n <pre class='text-import'>";
            $items = array();
            if(($file = fopen(__DIR__.'/items.csv', 'r')) !== false){
            while (($data = fgetcsv($file, 1000, ';')) !== false) {
                $items[] = $data;
            }
            fclose($file);
            print_r($items);
            echo "</pre>";
            echo "<script>alert('Добавлено: ". count($items) . " / Изменено: 0 ')</script>";
        } else{
            echo "Файл с расширением .csv не существует!";
        }

        } catch (\Throwable $th) {
            throw "Импорт не удался: ".$th->getMessage();
        }
    } 

    public function Export(){
        try {
            $fields = $this->db->prepare("SELECT DISTINCT * FROM `product`");
            $fields->setFetchMode(PDO::FETCH_ASSOC);
            $fields->execute();
            $file = fopen(__DIR__.'/items.csv', 'w');
            fputs($file, "\xEF\xBB\xBF"); // UTF-8
            foreach($fields as $item){
                if(empty($item['small_text'])){
                    $cut = array(substr($item['big_text'], 0, 30));
                    fputcsv($file, $cut, ';');
                }
                fputcsv($file, $item, ';');
            }
            fclose($file);
            echo "Данные заполнены! Добавлено " .count($item)."шт.";
        } catch (\Throwable $th) {
            throw "Данные не заполнены: ".$th->getMessage();
        }
  }
}