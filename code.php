<?php
session_start();
require 'dbcon.php';
if(isset($_POST['delete_team'])){
   $team_id = mysqli_real_escape_string($con, $_POST['delete_team']);
   $query = "DELETE FROM tbtime WHERE id='$team_id' ";
   $query_run = mysqli_query($con, $query);
   if($query_run) {
       $_SESSION['message'] = "Time excluido com sucesso";
       header("Location: index.php");
       exit(0);
   }   else   {
       $_SESSION['message'] = "Não foi possivel excluir o time";
       header("Location: index.php");
       exit(0);
   }
}
if(isset($_POST['update_team'])){
   $team_id = mysqli_real_escape_string($con, $_POST['team_id']);
   $teamname = mysqli_real_escape_string($con, $_POST['teamname']);
   $teamcountry = mysqli_real_escape_string($con, $_POST['teamcountry']);
   $teamtitles = mysqli_real_escape_string($con, $_POST['teamtitles']);
   $teamunicolor = mysqli_real_escape_string($con, $_POST['teamunicolor']);
   $query = "UPDATE tbtime SET time='$teamname', pais='$teamcountry', numtitulos='$teamtitles', coruniforme='$teamunicolor' WHERE id='$team_id' ";
   $query_run = mysqli_query($con, $query);
  if($query_run) {
       $_SESSION['message'] = "Time atualizado com sucesso";
       header("Location: index.php");
       exit(0);
   }   else   {
       $_SESSION['message'] = "Time não atualizado";
       header("Location: index.php");
       exit(0);
   }
}

 if(isset($_POST['save_team'])){
   $teamname = mysqli_real_escape_string($con, $_POST['teamname']);
   $teamcountry = mysqli_real_escape_string($con, $_POST['teamcountry']);
   $teamtitles = mysqli_real_escape_string($con, $_POST['teamtitles']);
   $teamunicolor = mysqli_real_escape_string($con, $_POST['teamunicolor']);
   $query = "INSERT INTO tbtime (time,pais,numtitulos,coruniforme) VALUES ('$teamname','$teamcountry','$teamtitles','$teamunicolor')";
   $query_run = mysqli_query($con, $query);
   if($query_run)  {
       $_SESSION['message'] = "Time cadastrado com sucesso!";
       header("Location: team-create.php");
       exit(0);
   }  else  {
       $_SESSION['message'] = "Time não cadastrado";
       header("Location: team-create.php");
       exit(0);
   }
}
