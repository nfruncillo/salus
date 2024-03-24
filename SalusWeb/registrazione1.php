<?php
$con = mysqli_connect("localhost","root","","my_salusweb");
//$Connessione=mysqli_connect("localhost", "root", " ");
//Stabilire una connessione con il server MySQL
if(!$con)
{
print("<h1>Connessione al server Mysql fallita</h1>");
exit;
}
$Db=mysqli_select_db($con, "my_salusweb");
//Selezionare il database che vogliamo utilizzare
if(!$Db)
{
print("<h1>Connessione al database data fallita</h1>");
exit;
}
$Nome=$_POST['nome'];
$Cognome=$_POST['cognome'];
$Password=$_POST['password'];
echo "<br>";
//Impostare la query
$Query= "INSERT INTO registrazione values ('$Nome',
'$Cognome','$Password')";
$Res= mysqli_query($con,$Query); //Eseguire la query
if(!$Res){
print("<h2>Registrazione NON Effettuata</h2>");
header("location:http://salusweb.altervista.org/errore2.html");
}
else{
print("<h2> Registrazione Effettuata</h2>");
header("location:http://salusweb.altervista.org/ok1.html");
}
mysqli_close($con); //Chiudere la connessione
?>
