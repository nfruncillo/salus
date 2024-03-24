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
$codice=$_POST['IDPaziente'];
$Name=$_POST['nome'];
$Cognome=$_POST['cognome'];
$eta=$_POST['eta'];
$datan=$_POST['DataNascita'];
echo "<br>";
//Impostare la query
$Query= "INSERT INTO pazienti values ('$codice','$Name',
'$Cognome','$eta','$datan')";
$Res= mysqli_query($con,$Query); //Eseguire la query
if(!$Res){
print("<h2>Registrazione Paziente NON Effettuata</h2>");
header("location:http://salusweb.altervista.org/errore3.html");
}
else{
print("<h2> Registrazione Paziente Effettuata</h2>");
header("location:http://salusweb.altervista.org/ok2.html");
}
mysqli_close($con); //Chiudere la connessione
?>
