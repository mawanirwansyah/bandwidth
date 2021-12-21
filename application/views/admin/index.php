  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Score
        <small></small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">

<!DOCTYPE html>
<html>
<head>
    <title>Import Excel KompiKaleng</title>
 
    <style type="text/css">
        table {
            border-collapse: collapse;
        }
        table,td,th {
            border: 1px solid black;
        }
        form {
            margin-top: 10px;   
        }
    </style>
</head>
<body>
<div class="box-body">
    <table id="example1" class="table table-striped" style="font-size:13px;">
    <thead>
        <tr>
            <th>No</th>
            <th>Download</th>
            <th>Upload</th>
            <th>Tanggal</th>
            <th>Nama</th>
        </tr>
    </thead>
    <tbody>
        <?php $no=0; foreach ($data as $key => $value): $no++; ?>
            <tr>
                <td><?= $no; ?></td>
                <td><?= $value['download'] ?></td>
                <td><?= $value['upload'] ?></td>
                <td><?= $value['tanggal'] ?></td>
                <td><?= $value['nama']; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>
 
<form method="post" action="<?php echo base_url('admin/import/importExcel') ?>" enctype="multipart/form-data">
    <input type="file" name="file">
    <button type="submit">Submit</button>
</form>
</body>
</html>
</section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="https://www.inalum.id/id">INALUM</a>.</strong> All rights reserved.
  </footer>
  

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url().'assets/plugins/datatables/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.min.js'?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>