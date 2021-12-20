
<table class="table table-bordered">
  <thead class="bg-primary">
    <tr>
      <th scope="col">Nama Singkat Perusahaan</th>
      <th scope="col">Alamat Perusahaan</th>
      <th scope="col">Negara</th>
      <th scope="col">P.O BOX</th>
      <th scope="col">Kode Pos</th>
      <th scope="col">Telepon</th>
      <th scope="col">Email</th>
      <th scope="col">Twitter</th>
      <th scope="col">Facebook</th>      
      <th scope="col">Instagram</th>
      <th scope="col">Youtube</th>      
      <th scope="col">Linkedin</th>
      <th scope="col">Nama Lengkap Perusahaan</th>
    </tr>
  </thead>
  <tbody>
    <?php foreach ($allFooter as $s) : ?>
    <tr class="bg-info">
        <td><?= $s['namasingkatan']; ?></td>
        <td><?= $s['alamat'];; ?></td>
        <td><?= $s['negara']; ?></td>
        <td><?= $s['pobox'];; ?></td>
        <td><?= $s['kodepos']; ?></td>
        <td><?= $s['telepon'];; ?></td>
        <td><?= $s['email']; ?></td>
        <td><?= $s['twitter'];; ?></td>
        <td><?= $s['facebook']; ?></td>
        <td><?= $s['instagram'];; ?></td>
        <td><?= $s['youtube']; ?></td>
        <td><?= $s['linkedin'];; ?></td>
        <td><?= $s['namapenuh']; ?></td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>