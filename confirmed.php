<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script language="javascript" src="file:///C|/wamp/www/4thFeb/cal2.js">
</script>
<script language="javascript" src="file:///C|/wamp/www/4thFeb/cal_conf2.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SaiSuraj-Reservation confirmation</title>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {	color: #FFFFFF;
	font-size: 24px;
	font-style: italic;
}
.style3 {color: #33CC99}
.style10 {	color: #CC3366;
	font-style: italic;
	font-weight: bold;
	font-size: 36px;
}
.style4 {	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 36;
	color: #FF0099;
}
.style6 {color: #990066; }
.style7 {	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
body {
font-family: Verdana, Arial, Helvetica, sans-serif;
	background-image: url(img/divider.gif);
}
.style18 {font-size: 36px;
	color: #FFFF99;
}
.style20 {font-size: 14px;
	color: #CCCCCC;
}
.style34 {color: #FFFF99;
	font-size: 36px;
}
-->
</style>
</head>

<body>
<div align="center"><br />
    <span class="style20"><img src="images/logo4.png" alt="" width="60" height="50" /><span class="style34">HOTEL <strong> SAI SURAJ </strong></span> <span class="style18"> INTERNATIONAL</span></span><br />
  <br />
</div>
<table width="918" border="0" align="center" background="img/aa.png">
  <tr>
    <th width="912" height="95" scope="row"><img src="images/room2.jpg" alt="" width="900" height="258" border="10" style="border:thick; border-color:#000000" /></th>
  </tr>
  <tr>
    <th height="60" scope="row"><a href="index.html"><img src="img/home3.png" alt="" width="175" height="50"/></a><a href="aboutus.html"><img src="img/aboutus3.png" alt="" width="175" height="50" onclick="aboutus.html" /></a><a href="login.php"><img src="img/bk3.png" alt="" width="175" height="50" /></a><a href="tourplace.html"><img src="img/tplc3.png" alt="" width="175" height="50" /></a><a href="lmap.html"><img src="img/lmp3.png" alt="" width="175" height="50" /></a></th>
  </tr>
  <tr>
    <th height="95" scope="row"><marquee direction="left" behavior='alternate' onmouseover="this.stop()" onmouseout="this.start()" loop="-1" truespeed="truespeed">
          <img src="images/dine_3.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/dine.jpg" width="140" height="90" />&nbsp;<img src="images/lobby.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/dine_3.jpg" width="140" height="90" />&nbsp;<img src="images/lounge.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/suite_1.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/dine_2.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/hall.jpg" alt="" width="140" height="90" />&nbsp;<img src="images/restaurant.jpg" alt="" width="140" height="90" />
          </marquee></th>
  </tr>
  <tr>
    <th height="59" colspan="10" scope="row"><a href="changepass.php"><img src="img/changepassword.png" width="110" height="50" /></a><a href="changeprofile.php"><img src="img/changeprofile5.png" width="110" height="50" /></a><a href="viewprofile.php"><img src="img/viewprofile5.png" width="110" height="50" /></a><a href="viewbook.php"><img src="img/viewbooking51.png" alt="" width="110" height="50" /></a><a href="res.php"><img src="img/reservation5.png" width="110" height="50" /></a><a href="signout.php"><img src="img/logout5.png" width="100" height="50" /></a>
    </th>
  </tr>
  <tr>
    <th height="135" scope="row">
     <br /> <table border="0" align="center" cellpadding="5" cellspacing="5" background="img/bg1.jpg" style="color:#FFFFFF">
        <tr>
          <td>
            <div align="left">
              <?php
				session_start();
		    if ( $_SESSION['username'])
    {  
			 $user=$_SESSION['username'];
	  require('connect.php');
			$ex0=mysql_query("SELECT * FROM registration WHERE user='$user'") or die(mysql_error());
							$count=mysql_num_rows($ex0);
				if($count)
				{			    
    			 echo "<br><center><strong>Welcome ".$_SESSION['username'].".<br /></center></strong>";			 

		require('connect.php');
		if(isset($_POST['submit']))
		{	
			$username	=$_POST["username"];
			$bankname	=$_POST["bankname"];
			$cardno		=$_POST["cardno"];		
			$password	=$_POST["password"];
			$amount		=$_POST["amount"];
			$transid	=$_POST['transid'];
			$username	=$_POST['username'];
			$rooms	    =$_POST['roomno'];
			$cindate	=$_POST['cindate'];
			$coutdate	=$_POST['coutdate'];
			$ct			=$_POST['ct'];
				$ndays		=$_POST["ndays"];
			$type		=$_POST["type"];
			$optn		=$_POST["optn"];
						$perroom	=$_POST["perroom"];
			
			
			$check=mysql_query("SELECT * FROM bankdetails WHERE bankname='$bankname' AND cardno='$cardno' AND password='$password'")or die(mysql_error());
			
			if(($num=mysql_num_rows($check))==1)
			{
				$row=mysql_fetch_assoc($check);
				
				$balance = $row['balance'];
				
				if($balance>$amount)
				{
					$remaining_balance=$balance-$amount;
					
					mysql_query("UPDATE bankdetails SET balance='$remaining_balance' WHERE cardno='$cardno'")or die("Unable to do transaction from your account.");
					
					mysql_query("INSERT INTO payment VALUES('','$username','$transid','$bankname','$amount','$cardno','$password')")or die("Unable to do transaction.");
				
					if($ct=='Hall')
					{
						mysql_query("INSERT INTO hallbooking VALUES('','$username','$cindate','$coutdate','$ndays','$amount')")or die("Unable to do transaction.");
						echo "Hall";
					}
					else
					{
						$len=strlen($rooms);
						$i=0;
						while($i<$len)
						{
							$roomno=$rooms[$i]."".$rooms[$i+1]."".$rooms[$i+2];
							$daysamt=$perroom*$ndays;
							mysql_query("INSERT INTO roombooking VALUES('','$username','$roomno','$cindate','$coutdate','$ndays','$ct','$type','$optn','$daysamt')")or die("Unable to do transaction.");
							echo "<br>$roomno";
							$i=$i+4;
						}
					}
	
					echo "<br>Booking done successfully.";
					
					echo "<form>
							<table style='color:White' align='center'>
							<tr>
							<th><center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>BANK DETAIL</u></center><br><br></th>
							</tr>
							<tr>
							<td>Username</td><td><input type='text' name='username' value='$username' onFocus='this.blur()'></td></tr>
							<tr>&nbsp;</tr>
							<tr><td>Bank Name</td><td><input type='text' name='bankname' value='$bankname' onFocus='this.blur()'></td></tr>
							<tr>&nbsp;</tr>
							<tr><td>Transaction ID</td><td><input type='text' name='transid' value='$transid' onFocus='this.blur()'></td></tr>
														<tr>&nbsp;</tr>

							<tr><td>Deducted Amount</td><td><input type='text' name='amount' value='$amount' onFocus='this.blur()'></td></tr>
											<tr>&nbsp;</tr>
		<tr><td>Current Amount</td><td><input type='text' name='amnt' value='$remaining_balance' onFocus='this.blur()'></td></tr>
							</table></form>";
							}
				else
					echo "Sorry, You don't have enough balance.";
			}
			else
				echo "Sorry, The details you supplied doesn't exist.";
			
			}
		}
		 else
    {	
        header("Location:login.php");
    }
		}
		?>          
          </div></td>
    </tr>
        <tr>
          <th height="90" colspan="6" scope="row"><div align="left"></div></th>
    </tr>
    </table></th>
</table>
<div align="center"><a href="index.html"><font color="#FF0000">Home</font></a>&nbsp;&nbsp; &nbsp;| &nbsp; &nbsp;&nbsp;<a href="aboutus.html"><font color="#FF0000">About us</font></a>&nbsp;&nbsp; &nbsp;| &nbsp;&nbsp;&nbsp; <a href="login.php"><font color="#FF0000">Booking</font></a>&nbsp;&nbsp;&nbsp; | &nbsp; &nbsp;&nbsp;<a href="tourplace.html"><font color="#FF0000">Tourism places</font></a>&nbsp; &nbsp;&nbsp;| &nbsp;&nbsp; &nbsp;<a href="lmap.html"><font color="#FF0000">Location map</font></a>&nbsp;&nbsp; &nbsp;</div>
</body>
</html>