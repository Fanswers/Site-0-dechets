<?php require_once("head.inc.php") ?>

<?php 
    if($_POST)
    {
        // Get image name
        $image = $_FILES['image']['name'];

        executeRequete("INSERT INTO ?????? (commerce_name, commerce_adresse, commerce_information, image) VALUES ('$_POST[commerce_name]', '$_POST[commerce_adresse]', '$_POST[commerce_information]', '$id_user', '$image' )");




        // image file directory
        $target = "img/".basename($image);
        move_uploaded_file($_FILES['image']['tmp_name'], $target);
        


        // execute query
        //mysqli_query($mysqli, $sql);
    }
?>

<main>
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