<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
  $unique_id = $_SESSION['unique_id'];
  $user_id = mysqli_real_escape_string($conn, $_GET['user_id']);
  $sql = "SELECT * FROM document WHERE unique_id = {$user_id} AND user_id = {$unique_id}";
    $query = mysqli_query($conn, $sql);
    $output = "";
    if(mysqli_num_rows($query) == 0){
        $output .= "Aucun fichier disponible";
    }elseif(mysqli_num_rows($query) > 0){
        while($row = mysqli_fetch_assoc($query)){
        $sql3 = "SELECT * FROM users WHERE unique_id = {$row['user_id']}";
        $query3 = mysqli_query($conn, $sql3);
        $row3 = mysqli_fetch_assoc($query3);
        $output .= '<a href="php/documents/'. $row['file'] .'">
                    <div class="content">
                    <img src="php/images/'. $row3['img'] .'" alt="">
                    <div class="details">
                        <span>'. $row3['fname']. " " . $row3['lname'] .'</span>
                        <p>' . $row['file'] .'</p>
                    </div>
                    </div>
                </a>';
    }
    }
?>
<?php include_once "header.php"; ?>
<body>
  <div class="wrapper">
    <section class="chat-area">
      <header>
        <?php 

          $sql2 = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$user_id}");
          if(mysqli_num_rows($sql2) > 0){
            $row2 = mysqli_fetch_assoc($sql2);
          }else{
            header("location: users.php?user_id=".$user_id);
          }
        ?>
        <a href="javascript:history.go(-1)" class="back-icon"><i class="fas fa-arrow-left"></i></a>
        <img src="php/images/<?php echo $row2['img']; ?>" alt="">
        <div class="details">
          <span><?php echo $row2['fname']. " " . $row2['lname'] ?></span>
          <p><?php echo $row2['status']; ?></p>
        </div>
      </header>
      <div class="users-list">
        <p><?php echo $output; ?></p>
      </div>

      </section>
  </div>
  <script src="javascript/files-view.js"></script>
</body>
</html>