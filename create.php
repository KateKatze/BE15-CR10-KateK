<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <?php require_once 'components/boot.php'?>
        <title>My Library - Add a book</title>
        <style>
            fieldset {
                margin: auto;
                width: 60% ;
            }       
        </style>
    </head>
    <body>
        <fieldset>
            <legend class='h1 mt-5 mb-5'>Add new book</legend>
            <form action="actions/a_create.php" method= "post" enctype="multipart/form-data">
                <table class='table'>
                <tr>
                        <th>Title</th>
                        <td><input class="form-control" type="text"  name="title" placeholder ="Book Title" /></td>
                    </tr>
                    <tr>
                        <th>ISBN</th>
                        <td><input class="form-control" type="number" name="isbn" placeholder="ISBN"/></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td><input class="form-control" type="text"  name="desc" placeholder ="Description" /></td>
                    </tr>
                    <tr>
                        <th>Book Type</th>
                        <td><input class="form-control" type="text"  name="btype" placeholder ="Book Type" /></td>
                    </tr>
                    <tr>
                        <th>Author Surname</th>
                        <td><input class="form-control" type="text"  name="authlast" placeholder ="Author Surname" /></td>
                    </tr>
                    <tr>
                        <th>Author Name</th>
                        <td><input class="form-control" type="text"  name="authfirst" placeholder ="Author Name" /></td>
                    </tr>
                    <tr>
                        <th>Publisher</th>
                        <td><input class="form-control" type="text"  name="pubname" placeholder ="Publisher" /></td>
                    </tr>
                    <tr>
                        <th>Publisher address</th>
                        <td><input class="form-control" type="text"  name="pubadd" placeholder ="Publisher address" /></td>
                    </tr>
                    <tr>
                        <th>Publish date</th>
                        <td><input class="form-control" type="date"  name="pubdate" placeholder ="Publish date" /></td>
                    </tr>
                    <tr>
                        <th>Book Status</th>
                        <td><input class="form-control" type="text"  name="bstatus" placeholder ="Book Status" /></td>
                    </tr>
                    <tr>
                        <th>Picture</th>
                        <td><input class="form-control" type="file" name="picture"/></td>
                    </tr>
                    <tr>
                        <td><button class='btn btn-success mt-3 mb-3' type="submit">Add new book</button></td>
                        <td><a href="index.php"><button class='btn btn-primary mt-3 mb-3' type="button">Home</button></a></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </body>
</html>