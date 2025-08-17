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
 
  $con= mysqli_connect($host,$serverUser, $serverPass,$databaseName); 
  if(!$con) 
  { 
     die("Error " . mysqli_connect_error()); 
  } 

  $result=mysqli_query($con,"select songTitle from SongFile
  where artistID in(
          select artistID from artist
          where artistName like '%$search%')");

 while($row=mysqli_fetch_array($result))
{
    echo $row['songTitle'];
    echo "<br>";
}

  mysqli_close($con);

  ?>
