<?php 
include 'server.php';
$sql=("SELECT user.email, subscriber.email FROM user, subscriber WHERE user.email = subscriber.email");
$result = mysqli_query($con,$sql);header("Refresh: 1800; url = login.php");
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Post Notification</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>


<body>
<div class="container">

<!-- New Blog Post - START -->
<div class="container">
    <div class="row" id="row_style">
        <h4 class="text-center">Submit new post</h4>
        <div class="col-md-4   col-md-offset-4">
		<form action="post.php" method="post">
            <div class="form-group">
                <input type="text" name="title" class="form-control" placeholder="Title">
            </div>
			 <div>
            <textarea id="editor" cols="30" rows="10"  name="body">Submit your text post here...</textarea>
			 </div>
            <br>
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Tags......Optional">
            </div>
            <div class="form-group">
                <button class="btn btn-primary" type="submit" name="point">Submit</button>
            </div>
          </form>
		<?php
                 if(isset($_POST['point'])){
               	 $title = $_POST['title']; $body= $_POST['body'];
	  		     $query = "insert into post (title,body) VALUES ('$title','$body') ";
				 $query1 = "insert into notify (title,body,read_n) VALUES ('$title','$body','1')";
			     $query_run = mysqli_query($con,$query);$query_run1 = mysqli_query($con,$query1);
			
			    
	            }
 ?>
        </div>
    </div>
</div>


<style>

    
    #row_style {
        margin-top: 60px;
    }

    #submit {
        display: block;
        margin: auto;
    }
</style>

<!-- you need to include the shieldui css and js assets in order for the charts to work -->
<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

<script>
    $(function () {
        $("#editor").shieldEditor({
            height: 260
        });
    })
</script>
<!-- New Blog Post - END -->

</div>

</body>
</html>