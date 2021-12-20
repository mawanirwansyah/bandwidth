  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Informasi 3 Pilar
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Pengguna</a></li>
        <li class="active">Data Pengguna</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
        <div class="col-xs-12">
            <div class="box">
            
            <div class="box">
            <div class="box-header">
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <table id="example1" class="table table-striped" style="font-size:12px;">
                <thead>
                    <tr>
                    <th scope="col">No</th>
                    <th scope="col">Image</th>
                    <th scope="col">Judul</th>
                    <th scope="col">isi</th>
                    <th scope="col">Link</th>
                    <th scope="col">Link Youtube</th>
                    <th style="text-align:center;">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                    $no=0;
                    foreach ($data->result_array() as $i) :
                    $id= $i['id'];
                    $no++;
                    $image= $i['image'];
                    $judul= $i['judul'];
                    $isi= $i['isi'];
                    $link= $i['link'];
                    $linky= $i['linky'];
                    ?>
                    <tr>
                        <td><?= $no; ?></td>
                        <td><img width="80" height="80" src="<?php echo base_url().'/assets/img/home/'.$image;?>" /></td>
                        <td><?= $judul; ?></td>
                        <td><?= $isi; ?></td>
                        <td><?= $link; ?></td>
                        <td><?= $linky; ?></td>
                        <td style="text-align:center;">
                            <a class="btn" data-toggle="modal" data-target="#ModalEdit<?php echo $id;?>"><span class="fa fa-pencil"></span></a>
                            <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $id;?>"><span class="fa fa-trash"></span></a>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
                </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="https://www.inalum.id/id">INALUM</a>.</strong> All rights reserved.
  </footer>

  
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
		
      <?php foreach ($data->result_array() as $i) :
                  $id= $i['id'];
                  $image= $i['image'];
                    $judul= $i['judul'];
                    $isi= $i['isi'];
                    $link= $i['link'];
                    $linky= $i['linky'];
                  ?>
	<!--Modal Edit Pengguna-->
        <div class="modal fade" id="ModalEdit<?php echo $id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Edit Informasi 3 Pilar</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'admin/home/update_informasi'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                                
                    <div class="form-group">
                        <label for="inputImage" class="col-sm-4 control-label">Gambar</label>
                        <div class="col-sm-3">
                            <input type="hidden" name="kode" value="<?php echo $id;?>"/>
                            <input type="file" name="filefoto"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputImage" class="col-sm-4 control-label">Judul</label>
                        <div class="col-sm-7">
                            <input type="text" name="judul" class="form-control" value="<?php echo $judul;?>" id="inputTitle" placeholder="Judul" required>   
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputTitle" class="col-sm-4 control-label">Isi</label>
                        <div class="col-sm-7">
                            <input type="text" name="isi" class="form-control" value="<?php echo $isi;?>" id="inputTitle" placeholder="isi" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputTitle" class="col-sm-4 control-label">Link</label>
                        <div class="col-sm-7">
                            <input type="text" name="link" class="form-control" value="<?php echo $link;?>" id="inputTitle" placeholder="link" required>
                        </div>
                    </div>  
                    <div class="form-group">
                        <label for="inputTitle" class="col-sm-4 control-label">Link Youtube</label>
                        <div class="col-sm-7">
                            <input type="text" name="linky" class="form-control" value="<?php echo $linky;?>" id="inputTitle" placeholder="link youtube" required>
                        </div>
                    </div>      
                               
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Update</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
	<?php endforeach;?>

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
<?php if($this->session->flashdata('msg')=='error'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Error',
                    text: "Password dan Ulangi Password yang Anda masukan tidak sama.",
                    showHideTransition: 'slide',
                    icon: 'error',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#FF4859'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='warning'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Warning',
                    text: "Gambar yang Anda masukan terlalu besar.",
                    showHideTransition: 'slide',
                    icon: 'warning',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#FFC017'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='success'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Informasi 3 Pilar Berhasil disimpan ke database.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='info'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Info',
                    text: "Informasi 3 Pilar berhasil di update",
                    showHideTransition: 'slide',
                    icon: 'info',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#00C9E6'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='success-hapus'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Informasi 3 Pilar Berhasil dihapus.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='show-modal'):?>
        <script type="text/javascript">
                $('#ModalResetPassword').modal('show');
        </script>
    <?php else:?>

    <?php endif;?>
</body>
</html>
