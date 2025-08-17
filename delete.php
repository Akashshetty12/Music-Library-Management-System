<?php 
  $stitle= $_POST["title"];
  $sartist= $_POST["artist"];
  if(!$stitle)
  {
    return;
  }
  if(!$sartist)
  {
    return;
  }
  
  $host = "localhost"; 
  $serverUser = "root"; 
  $serverPass = ""; 
  $databaseName = "music_db"; 
 
  $con= mysqli_connect($host,$serverUser, $serverPass,$databaseName); 
  if(!$con) 
  { 
     die("Error " . mysqli_connect_error()); 
  } 

  $query="Delete from contents where artistName ='$sartist' and songName='$stitle'";
  $result= mysqli_query($con,$query);

if($result)
{
    echo "Song deleted successfully!";
    echo "<br>";
}
else{
    echo "Can not delete from playlist!";
}

  mysqli_close($con);

  ?>
