<?php 
	function createUser($fname,$username,$password,$email){
			include('connect.php');
	
		$create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)';
		$create_user_query .= ' VALUES(:fname,:username,:password,:email)';

		$create_user_set = $pdo->prepare($create_user_query);
		$create_user_set->execute(
			array(
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);

		if($create_user_set->rowCount()){
			redirect_to('admin_edituser.php');
		}else{
			$message = 'there has been an error with this user';
			return $message;
		}

}

function editUser($id, $fname, $username, $password, $email) {
include('connect.php');
	
		$update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username, user_pass=:password, user_email=:email WHERE user_id = :id';

		$update_user_set = $pdo->prepare($update_user_query);
		$update_user_set->execute(
			array(
				':id'=>$id,
				':fname'=>$fname,
				':username'=>$username,
				':password'=>$password,
				':email'=>$email
			)
		);

		if($update_user_set->rowCount()){
			redirect_to('admin_login.php');
			
		}else{
			$message = 'There has been an error';
			return $message;
		}

}

function deleteUser($id){


include('connect.php');
$delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';

		$delete_user_set = $pdo->prepare($delete_user_query);
		$delete_user_set->execute(
			array(
				':id'=>$id
			)
		);

		if($delete_user_set->rowCount()){
			redirect_to('../index.php');
		}else{
			$message = 'An error has occured... oh well!';
			return $message;
		}

}