<?php 
  session_start();
  if(isset($_SESSION['unique_id'])){
    header("location: users.php");
  }
?>

<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="signup form">
      <img class="logo" src="log1.jpg" alt="">
      <!--<header>PolyTcham's</header>-->
      <form action="#" method="POST" enctype="multipart/form-data" autocomplete="off">
        <div class="error-text"></div>
        <div class="name-details">
          <div class="field input">
            <label>Prénom</label>
            <input type="text" name="fname" placeholder="ex:Jean-Marc" required>
          </div>
          <div class="field input">
            <label>Nom</label>
            <input type="text" name="lname" placeholder="ex:Konan" required>
          </div>
        </div>
        <div class="field input">
          <label>Courriel</label>
          <input type="text" name="email" placeholder="ex:konan@gmail.com" required>
        </div>
        <div class="field input">
          <label>Mot de passe</label>
          <input type="password" name="password" placeholder="Entrer votre mot de passe" required>
          <i class="fas fa-eye"></i>
        </div>
        <div class="field image">
          <label>Selectionner image</label>
          <input type="file" name="image" accept="image/x-png,image/gif,image/jpeg,image/jpg,image/JPG" required>
        </div>
        <div class="field button">
          <input type="submit" name="submit" value="S'inscrire">
        </div>
      </form>
      <div class="link">Déjà inscrit? <a href="login.php">Se connecter maintenant</a></div>
    </section>
  </div>

  <script src="javascript/pass-show-hide.js"></script>
  <script src="javascript/signup.js"></script>

</body>
</html>
