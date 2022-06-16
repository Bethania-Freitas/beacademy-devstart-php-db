<h1>Listar Produtos</h1>
    
<div class="mb-3 text-end">
    <a href="/produtos/novo" class= "btn btn-outline-primary"  >Novo Produto</a>
</div>


<table class="table table-hover tabçe-striped">
    <thead class="table-dark">
        <tr>
            <th>#id</th>
            <th>Produto</th>
            <th>Descrição</th>
            <th>Imagem</th>
            <th>Preço</th>
            <th>Saldo Estoque</th>
            <th>Data Cadastro</th>
            <th>Ações</th>
        </tr>
    </thead>
    <tbody>
        <?php
            while ($product = $data->fetch(\PDO::FETCH_ASSOC)){
            extract($product);
            echo "
                <tr>
                    <td>{$id}</td>
                    <td>{$name}</td>
                    <td>{$description}</td>
                    <td> <img width='100px' src='{$photo}'> </td>
                    <td>R$ {$value}</td>
                    <td>{$quantity}</td>
                    <td>{$created_at}</td>
                    <td>
                        Excluir - Editar
                    </td>
                </tr>
            ";
            }
        ?>
    </tbody>


</table>