<?php

    require_once "actions/db_connect.php";

    $sql = "SELECT * FROM books";
    $result = mysqli_query($connect, $sql);
    $tbody = '';
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
            $tbody .= "<tr>
                <td><img class='img-thumbnail' src='pictures/" .$row['picture']."'</td>
                <td>" .$row['title']."</td>
                <td>" .$row['ISBN']."</td>
                <td>" .$row['short_description']."</td>
                <td>" .$row['book_type']."</td>
                <td>" .$row['author_last_name']." <a href='author_bonus.php?author_last_name=".$row['author_last_name']."'><button class='btn btn-primary btn-sm mb-2' type='button'>More books from this author</button></a></td>
                <td>" .$row['author_first_name']."</td>
                <td>" .$row['publisher_name']."</td>
                <td>" .$row['publisher_address']."</td>
                <td>" .$row['publish_date']."</td>
                <td>" .$row['book_status']."</td>
                <td><a href='details.php?bookID=".$row['bookID']."'><button class='btn btn-primary btn-sm mb-2' type='button'>Show media</button></a>
                <a href='update.php?bookID=".$row['bookID']."'><button class='btn btn-warning btn-sm ps-3 pe-3 mb-2' type='button'>Edit</button></a>
                <a href='delete.php?bookID=".$row['bookID']."'><button class='btn btn-danger btn-sm' type='button'>Delete</button></a></td>
                </tr>";
        }
    }
    else{
        $tbody = "<tr><td colspan='5'><center>No Data Available</center></td></tr>";
    }

    mysqli_close($connect);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CR10-KateK</title>
        <?php require_once 'components/boot.php'?>
        <style type="text/css">
            .manageProduct {           
                margin: auto;
            }
            .img-thumbnail {
                width: 70px !important;
                height: 100px !important;
            }
            td {          
                text-align: center;
                vertical-align: middle;
            }
            tr {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="manageProduct w-75 mt-3">    
            <p class='mt-5 mb-5 display-6'>My big library - KateK</p>
            <table class='table table-striped'>
                <thead class='table-secondary'>
                    <tr>
                        <th class='h5'>Picture</th>
                        <th class='h5'>Title</th>
                        <th class='h5'>ISBN</th>
                        <th class='h5'>Short description</th>
                        <th class='h5'>Book Type</th>
                        <th class='h5'>Author Surname</th>
                        <th class='h5'>Author Name</th>
                        <th class='h5'>Publisher</th>
                        <th class='h5'>Publisher address</th>
                        <th class='h5'>Publish date</th>
                        <th class='h5'>Book Status</th>
                        <th class='h5'>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <?= $tbody;?>
                </tbody>
            </table>
            <div class='p-4'>
                <a href= "create.php"><button class='btn btn-lg btn-secondary' type="button" >Add books</button></a>
            </div>
        </div>
    </body>
</html>