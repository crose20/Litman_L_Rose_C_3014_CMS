<?php 
	require_once('scripts/config.php');
    confirm_logged_in();

    $tbl = 'tbl_user';
    $users = getAll($tbl);
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete User</title>
</head>
<body>

    <h2>DELETE</h2> 

    <table>
        <thead>
            <tr>
                <th>First Name</th>
                <th>User Name</th>
                <th>User Email</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <?php while($user = $users->fetch(PDO::FETCH_ASSOC)):?>
            <tr>
                <td><?php echo $user['user_fname'];?></td>
                <td><?php echo $user['user_name'];?></td>
                <td><?php echo $user['user_email'];?></td>
                <td><a href="./scripts/caller.php?caller_id=delete&id=<?php echo $user['user_id'];?>">Delete</a></td>
            </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
    
    
    
</body>
</html>