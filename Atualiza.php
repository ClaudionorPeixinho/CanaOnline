<?php
if($_SERVER['REQUEST_METHOD']==='POST'){
// Use centralized database connection
$conexao = require_once 'conexao.php';

$id = $_POST['id'];
$matricula = $_POST['matricula'];
$nome = $_POST['nome'];
$funcao = $_POST['funcao'];
$telefone = $_POST['telefone'];
$apelido = $_POST['apelido'];
$turno = $_POST['turno'];

// Use prepared statement to prevent SQL injection
$sql = "UPDATE cad_colaborador SET
    matricula = ?,
    nome = ?,
    funcao = ?,
    telefone = ?,
    apelido = ?,
    turno = ?
    WHERE id = ?";

$stmt = mysqli_prepare($conexao, $sql);
mysqli_stmt_bind_param($stmt, 'ssssssi', $matricula, $nome, $funcao, $telefone, $apelido, $turno, $id);
$resultado = mysqli_stmt_execute($stmt);

if($resultado){
  echo "<hr>";
  echo"<h2> Dados Atualizados com Sucesso!!!</h2>";  
}
}
?>

<a href="Consultar_Colaborador.php">Voltar Pesquisar</a>
