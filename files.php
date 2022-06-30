<!DOCTYPE html>
<html lang="fr" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>PolyTcham's-INPHB</title>
      
      <link rel="stylesheet" href="css/all.min.css">
      <!--<link rel="stylesheet" href="css/fontawesome.min.css">-->
      <link rel="stylesheet" href="css/style2.css">
      <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>

   <body>
      <input type="checkbox" id="click">
      <label for="click">
      <i class="fab fa-facebook-messenger"></i>
      <i class="fas fa-times"></i>
      </label>
      <div class="wrapper">
         <div class="head-text">
            Poly Tcham's | Envoyer fichier
         </div>
         <div class="chat-box">
            <div class="desc-text">
               Choisir un fichier. 
            </div>
            <form action="php/files.php?user_id=<?php echo $_GET['user_id']; ?>" method="POST" enctype="multipart/form-data">
               <div class="field">
                  <input type="file" name="image" required>
               <div class="field">
                  <button type="submit">Envoyer fichier</button>
               </div>
            </form>
         </div>
      </div>
   </body>
</html>