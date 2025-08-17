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
 
  /*$query = "INSERT INTO genre VALUES('Pop','Describes all music that is popular and includes many styles')";  
  $performQuery = mysqli_query($connection,$query); 
  $query = "INSERT INTO genre VALUES('Indie Rock','independent record labels, used interchangeably with alternative rock')";  
  $performQuery = mysqli_query($connection,$query); 
  $query = "INSERT INTO genre VALUES('DANCE','broad range of electronic music made for nightclubs, and festivals')";  
  $performQuery = mysqli_query($connection,$query); 
  $query = "INSERT INTO genre VALUES('Rock','music centered on the electric guitar, with electric bass and drums')";  
  $performQuery = mysqli_query($connection,$query); 
  $query = "INSERT INTO genre VALUES('R&B','soul and funk-influenced pop music originated as disco music')";  
  $performQuery = mysqli_query($connection,$query); 


 $query= "INSERT INTO Playlist VALUES(1,'PL1',0,0)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Playlist VALUES(2,'PL2',0,0)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Playlist VALUES(3,'PL3',0,0)";
 $performQuery = mysqli_query($connection,$query); */


 /*$query="INSERT INTO Artist VALUES(1,'Weeknd','Abel Makkonen Tesfaye, aka Weeknd, is a Canadian singer and songwriter')";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Artist VALUES(2,'Green Day','Green Day is an American band formed in California in 1987')";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Artist VALUES(3,'R3HAB','Fadil El Ghoul, aka R3hab, is a Moroccan Dutch DJ')";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Artist VALUES(4,'Coldplay','Coldplay are a British rock band formed in London in 1996.')";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Artist VALUES(5,'Porter Robinson','Porter Weston Robinson is an American DJ, musician, and singer')";
 $performQuery = mysqli_query($connection,$query); 

 $query="INSERT INTO Album VALUES(201,'Whatever',1,'DANCE',13,3750,2014)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(202,'1977-10-29 - Evans Field House',2,'Rock',15,2784,2018)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(203,'Nostalgia, Ultra.',3,'R&B',14,2207,2011)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(204,'SOME OTHER ONES',4,'Indie Rock',14,3992,2015)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(205,'Shelter',5,'Pop',15,5771,2010)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(206,'Midnight',1,'Pop',15,5771,2022)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(207,'Miss Matched',2,'Dance',14,5771,2020)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(208,'Proof',3,'Dance',13,5771,2021)";
 $performQuery = mysqli_query($connection,$query); 
 $query="INSERT INTO Album VALUES(209,'ABCD2',4,'Dance',14,5771,2021)";
 $performQuery = mysqli_query($connection,$query); 
 


 /*$query="INSERT INTO SongFile VALUES(1001,'On My Way',2,202,15,336,'mp3','Rock')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1002,'Faded',5,205,8,332,'mp3','Pop')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1003,'On and On',5,205,15,328,'flac','Pop')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1004,'The Power',5,205,9,350,'ogg','Pop')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1005,'Ertugrul',2,202,2,100,'mp3','Rock')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1006,'My Heart',3,203,10,427,'mp3','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1007,'Agar Tum Saath Ho',3,203,11,541,'mp3','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1008,'Suna Hai',3,203,14,313,'ogg','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1009,'Dilbar',3,203,12,304,'mp3','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1010,'Duniya',3,203,13,342,'flac','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1011,'Lag Di Lahore Di',3,203,6,335,'mp3','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1012,'Putt Jatt Da',1,201,13,244,'mp3','DANCE')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1013,'Baarishein',3,203,3,410,'mp3','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1014,'Vaaste',3,203,4,316,'ogg','R&B')";
 $performQuery = mysqli_query($connection,$query);
 $query="INSERT INTO SongFile VALUES(1015,'Lut Gate',5,205,3,457,'mp3','Pop')";
 $performQuery = mysqli_query($connection,$query);*/



$result=mysqli_query($connection,"select songTitle from SongFile
	where songID in(
			select songID from SongFile
			where songTitle like '%$search%')");


while($row=mysqli_fetch_array($result))
{
    echo $row['songTitle'];
    echo "<br>";
}


mysqli_close($connection);

?> 