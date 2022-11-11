<?php
class Manufature extends Db{
    public function getAllProducts(){
        $sql = self::$connection->prepare("SELECT * FROM manufature 
        ORDER BY 'id' DESC ");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return  $items;
}
}