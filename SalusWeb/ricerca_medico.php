<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "my_salusweb";

$n1=$_POST['descrizione'];

// Create connection
$conn = new mysqli($servername,$username,$password,$dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT descrizione,indirizzo,citta,nome,cognome from luogo,medici 
where luogo.codice_medico=medici.id and descrizione='$n1'";
$result = $conn->query($sql);
$tabella="";
if ($result->num_rows > 0) {
  
  // output data of each row
  while($row = $result->fetch_assoc()) {
    $tabella.= 
"<tr><td>".$row["descrizione"]."</td><td>".$row["indirizzo"]."</td><td>".$row["citta"]."</tr></td>";
  }

} else {
  echo "0 results";
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Tabella Studi Medici</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" 
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script 
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script 
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script 
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<style>
    body{background-color:violet}
</style>


<div class="container">
  <h2>Tabella Studi Medici</h2> 
  <br>          
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>Descrizione</th>
        <th>Indirizzo</th>
        <th>Città</th>
        
      </tr>
    </thead>
    <tbody>
      <?php echo $tabella;?>
    </tbody>
  </table>

  <a href="dottore.html" class="btn btn-primary">Torna Alla Pagina 
Precedente</a>
  <a href="./ricerca_medico.html" class="btn btn-primary">Torna Alla 
Ricerca</a>
</div>

</body>
</html>
