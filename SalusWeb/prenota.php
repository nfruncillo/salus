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
$Codice=$_POST['ID'];
$orario=$_POST['Orario'];
$codice_p=$_POST['Codice_Paziente'];
$Tipologia=$_POST['Tipologia'];
echo "<br>";
//Impostare la query
$Query= "INSERT INTO visite values ('$Codice',
'$orario','$codice_p','$Tipologia')";
$Res= mysqli_query($con,$Query); //Eseguire la query
if(!$Res){
print("<h2> Prenotazione Non Effettuata</h2>");
header("location:http://salusweb.altervista.org/errore1.html");
}
else{
print("<h2>Prenotazione Effettuata</h2>");
header("location:http://salusweb.altervista.org/ok.html");
}
mysqli_close($con); //Chiudere la connessione
?>
