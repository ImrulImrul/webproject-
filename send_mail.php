<?php
//send_mail.php
include 'db_connect.php';

			use PHPMailer\PHPMailer\PHPMailer;
         use PHPMailer\PHPMailer\Exception;
          use PHPMailer\PHPMailer\SMTP;

 
			
			
require 'vendor/autoload.php';

if(isset($_POST['email_data']))
{
	
	$output = '';
	foreach($_POST['email_data'] as $row)
	{
		$mail = new PHPMailer;
		$mail->IsSMTP();								//Sets Mailer to send message using SMTP
		$mail->Host = 'smtp.gmail.com;';		//Sets the SMTP hosts of your Email hosting, this for Godaddy
		$mail->Port = 587;								//Sets the default SMTP server port
		$mail->SMTPAuth = true;							//Sets SMTP authentication. Utilizes the Username and Password variables
		$mail->Username = 'imrulemon1998@gmail.com';					//Sets SMTP username
		$mail->Password = 'im01770749700';					//Sets SMTP password
		$mail->SMTPSecure = 'tls';							//Sets connection prefix. Options are "", "ssl" or "tls"
		$mail->From = 'imrulemon1998@gmail.com';			//Sets the From email address for the message
		$mail->FromName = 'Poralekha';					//Sets the From name of the message
		$mail->AddAddress($row["email"], $row["name"]);	//Adds a "To" address
		//$mail->WordWrap = 50;							//Sets word wrapping on the body of the message to a given number of characters
		$mail->IsHTML(true);							//Sets message type to HTML
		$mail->Subject = 'Order Confirmation'; //Sets the Subject of the message
		//An HTML or plain text message body
		$mail->Body = '
		<p>We have confirmed your order. You will get soon your product.</p>
		<p>Thank you</p>
		';

		$mail->AltBody = '';

		$result = $mail->Send();						//Send an Email. Return true on success or false on error

		//if($result["code"] == '400')
		//{
		//	$output .= html_entity_decode($result['full_error']);
		//}

	}
	if($output == '')
	{
		echo 'ok';
	}
	else
	{
		echo $output;
	}
}

?>