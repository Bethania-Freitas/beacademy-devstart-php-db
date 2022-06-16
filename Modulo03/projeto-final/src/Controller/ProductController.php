<?php

declare(strict_types=1);

namespace App\Controller;

use App\Connection\Connection;
use LDAP\Result;

class ProductController extends AbstractController
{
    public function listAction(): void
    {
        $con = Connection::getConnection();

        $result = $con->prepare('SELECT * FROM tb_product');
        $result->execute();


        
        parent::render('product/list', $result);

    }
    public function addAction(): void
    {
        $con = Connection::getConnection();

        if ($_POST){
            $name = $_POST['name'];
            $category_id = $_POST['category'];
            $description = $_POST['description'];
            $value = $_POST['value'];
            $quantity = $_POST['quantity'];
            $photo = $_POST['photo'];
            $createdAt = date('Y-m-d H:i:s');

            $query = "INSERT INTO tb_product 
            (name, description, value, photo, quantity, category_id, created_at) 
            VALUES ('{$name}', '{$description}', '{$value}', '{$photo}', '{$quantity}', '{$category_id}', '{$createdAt}')";

            $result = $con->prepare($query);
            $result->execute();

            echo 'Pronto, produto cadastrado!';
        };

        
        
        $result = $con->prepare('SELECT * FROM tb_category');
        $result->execute();

        parent::render('product/add', $result);
        
    }
    public function editAction(): void
    {
        parent::render('product/edit');
        
    }
}
