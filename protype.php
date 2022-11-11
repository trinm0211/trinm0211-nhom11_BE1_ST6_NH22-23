<?php
class Protype extends Db{
    public function getAllProducts(){
        $sql = self::$connection->prepare("SELECT * FROM protype 
        ORDER BY 'id' DESC ");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return  $items;
}
}