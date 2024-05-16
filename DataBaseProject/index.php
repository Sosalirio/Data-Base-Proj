<?php include("DBLogin.php")?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>Data Base</title>
  <link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <div class="container">
      <h1 class="title">My SQL Database by Ariel Cruz</h1>
      <div class="sql-input">
          <input type="text" placeholder="Enter SQL queries...">
      </div>
      <button onclick="document.location = 'index.html'"> Home</button>
  </div>
  <script src="script.js"></script>
</body>
  
  <body>
    <section>
        <h1>Pokemon Tables</h1>
        
        <table>
            <tr>
                <th>PID</th>
                <th>Name</th>
                <th>Generation</th>
                <th>Pokedex_Number</th>
                <th>Region_ID</th>
                <th>Biome_ID</th>
                <th>Type_ID</th>
                <th>EggGroup_ID</th>
            </tr>
            
            <?php 
                
                while($rows=$result->fetch_assoc())
                {
            ?>
            <tr>
                
                <td><?php echo $rows['PID'];?></td>
                <td><?php echo $rows['Name'];?></td>
                <td><?php echo $rows['Generation'];?></td>
                <td><?php echo $rows['Pokedex_Number'];?></td>
                <td><?php echo $rows['Region_ID'];?></td>
                <td><?php echo $rows['Biome_ID'];?></td>
                <td><?php echo $rows['Type_ID'];?></td>
                <td><?php echo $rows['EggGroup_ID'];?></td>
            </tr>
            <?php
                }
            ?>
        </table>
    </section>
  </body>

  </html>
  

</html>