 <?php
    require '../../backend/config/Conexion.php';
    echo '<option value="0">Seleccione</option>';
    $stmt = $connect->prepare('SELECT * FROM `marca` ORDER BY idmar  ASC');

    $stmt->execute();


    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
    ?>
     <option value="<?php echo $idmar; ?>"><?php echo $nomarc; ?></option>

 <?php
    }

    ?>