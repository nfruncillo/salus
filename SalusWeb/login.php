<?php
$n1=$_POST['nome'];
$n2=$_POST['password'];
$conn=mysqli_connect("localhost","root","","my_salusweb");
if(!$conn)
{ echo("Errore di connessione");
exit();
}
echo("Connessione al server Mysql effettuata con successo");
echo "<br>";
$nome='my_salusweb';
$x=mysqli_select_db($conn,$nome);
if(!$x)
{
echo("errore della connessione al database \n");
die('error'.mysqli_error($conn));
exit();
}
echo("Connessione al Database effettuata con successo");
echo "<br>";
echo "<table align='center' border=5 bgcolor=cyan>";
echo "<TD><B>NOME UTENTE INSERITO :</B> ". $n1 ."<br></TD>";
echo "<tr>";
echo " <TD> <B> PSWRD INSERITA :</B>".$n2 ."<br></TD>";
echo "</table>";
$query1="SELECT * from registrazione where nome='$n1' and password='$n2'";
$ris=mysqli_query($conn,$query1);
echo '<br>';
$numerorighe=mysqli_num_rows($ris);
echo "<br>";
echo('La tabella contiene:'.$numerorighe .'righe.');
echo "<br>";
if($numerorighe==0)
{
echo "<B>UTENTE NON RICONOSCIUTO </B>";
header("location:https://salusweb.altervista.org/errore.html");
exit();
}
else
{
echo "<b> COMPLIMENTI SEI STATO AUTENTICATO</b>";
header("location:autenticato.html");
}
