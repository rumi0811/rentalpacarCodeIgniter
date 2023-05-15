<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Perancangan Website Rental Pacar</title>
    <link rel="stylesheet" type="text/css" href="<?php echo base_url() . 'assets/css/bootstrap.css' ?>">
    <script type="text/javascript" src="<?php echo base_url() . 'assets/js/jquery.js' ; ?>"></script>
    <script type="text/javascript" src="<?php echo base_url() . 'assets/js/botstrap.js' ; ?>"></script>
</head>
<body>
    <div class="col-md-4 col-md-offset-4" style="margin-top: 50px">
    <center>
        <h2>Website Rental Pacar</h2>
        <h3>by. Sekar Puspita Arum</h3>
    </center>
    <br/>
    <?php
    if(isset($_GET['pesan'])){
        if($_GET['pesan'] == "gagal"){
            echo "<div class = 'alert alert-danger'> Login Gagal! Username dan Password salah!!!</div>";

        }else if($_GET['pesan'] == "logout"){
            echo "<div class = 'alert alert-danger'> Anda telah logout!!! </div>";
        }else if($_GET['pesan'] == "belumlogin"){
            echo "<div class = 'alert alert-success'> Silahkan login dulu!!! </div>";
        }
    }

    ?>
    <br/>

    <div class="panel panel-default">
        <div class="panel-body">
            <br/>
            <br/>
            <form method = "post" action="<?php echo base_url() . 'welcome/v_login' ?>">
                <div class="form-group">
                    <input type="text" name="username" placeholder="Username" class="form-control">
                    <?php echo form_error('username'); ?>
                </div>

                <div class="form-group">
                    <input type="password" name="password" placeholder="Password" class="form-control">
                    <?php echo form_error('password'); ?>
                </div>

                <div class="form-group">
                    <input type="submit" value="login" class="btn btn-primary">
                    <!-- <?php echo form_error('username'); ?> -->
                </div>        
        </form>

        <br/>
        <br/>
        </div>
    </div>

    </div>
    
</body>
</html>