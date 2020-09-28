<?php require_once("head_form_commercant.inc.php") ?>

<?php 
    if($_POST)
    {
        // Get image name
        $image = $_FILES['image']['name'];

        executeRequete("INSERT INTO commerce (commerce_name, commerce_adresse, commerce_numero, commerce_mail, commerce_information, image) VALUES ('$_POST[nom_commerce]', '$_POST[rue]', '$_POST[telephone]', '$_POST[email]', '$id_user', '$image' )");




        // image file directory
        $target = "img/".basename($image);
        move_uploaded_file($_FILES['image']['tmp_name'], $target);
        


        // execute query
        //mysqli_query($mysqli, $sql);
    }
?>

<main class="page">
    <form method="POST">
        <div class="container_form_com">
            <div class="form-group">
                <label for="exampleInputEmail1">Nom du commerce</label>
                <input type="email" class="form-control" id="commerce_name" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Adresse du commerce</label>
                <input type="email" class="form-control" id="commerce_adresse" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Numéro de téléphone</label>
                <input type="password" class="form-control" id="commerce_numero">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Adresse e-mail</label>
                <input type="password" class="form-control" id="commerce_mail">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Information concernant le commerce</label>
                <input type="password" class="form-control" id="commerce_information">
            </div>
            <div class="form-group">
                <label for="exampleFormControlFile1">Photo</label>
                <input type="file" class="form-control-file" id="image">
            </div>
            <div class="bottom_but">
                <a href="???"><input type="button" id="return_but" class="btn btn-primary" value="Annuler"></a>
                <button type="submit" class="btn btn-primary" id="sub_but_com">Submit</button>
            </div>
        </div>
    </form>
</main>