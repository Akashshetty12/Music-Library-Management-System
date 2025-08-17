<?php 
  $search= $_POST["name"];
  if(!$search)
  {
    return;
  }
  
  $host = "localhost"; 
  $serverUser = "root"; 
  $serverPass = ""; 
  $databaseName = "music_db"; 
 
  $connection= mysqli_connect($host,$serverUser, $serverPass,$databaseName);  
  if(!$connection) 
  { 
     die("Error " . mysqli_connect_error()); 
  } 

  $result=mysqli_query($connection,"SELECT albumTitle 
FROM album
WHERE albumID IN(SELECT albumID
                 FROM album where genreName like '%$search%')");


while($row=mysqli_fetch_array($result))
{
  echo $row['albumTitle'];
  echo "<br>";
}


mysqli_close($connection);