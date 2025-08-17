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

  $query="INSERT INTO contents VALUES('$stitle','$sartist')";
  $result= mysqli_query($con,$query);

if($result)
{
    echo "Song added successfully!";
    echo "<br>";
}
else{
    echo "Can not insert into playlist!";
}

  mysqli_close($con);

  ?>
