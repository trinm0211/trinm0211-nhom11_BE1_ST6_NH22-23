<?php
class Product extends Db{
    public function getAllProducts(){
        $sql = self::$connection->prepare("SELECT * FROM products 
        ORDER BY 'id' DESC ");
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return  $items;
    }
    public function getProductById($id){
        $sql = self::$connection->prepare("SELECT * FROM products WHERE id = ?");
        $sql->bind_param("i",$id);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return  $items;
    }
    public function getNewProducts($id){
        $sql = self::$connection->prepare("SELECT * FROM products 
        ORDER BY 'id' DESC LIMIT 0,10 ");
        $sql->bind_param("i",$id);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return  $items;
    }
}