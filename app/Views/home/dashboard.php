<?= $this->extend('home/index') ?>

<?= $this->section('content') ?>
<div class="container-fluid" style="min-height: 76vh;">
  <div class="row">
    <div class="col-lg-10">
      <!-- Page Heading -->
      <h1 class="h3 mb-4 text-gray-800">Employee Database</h1>
    </div>
    <div class="row">
      <div class="col-lg-10">

        <?php if (session()->getFlashdata('message')): ?>
          <div class="alert alert-success alert-dismissible fade show" role="alert" style="font-size: small; padding: 5px;">
            <?= session()->getFlashdata('message') ?>
            <button type="button" class="btn-close btn-close-sm" style="padding: 0.5rem 0.5rem;" data-bs-dismiss="alert" aria-label="Close (small)"></button>
          </div>
        <?php endif; ?>

      </div>
      <div class="col-lg-2 mb-4" style="text-align: right;">
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
          Import from Excel
        </button>
      </div>

      <!-- Modal -->
      <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class=" modal-content" style="background-color: rgba(98, 131, 161, 0.82);">
            <form action="<?= base_url('excel/import_karyawan') ?>" method="post" enctype="multipart/form-data">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Import Karyawan from Excel</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="mb-3" style="text-align: left;">
                  <label for="formFile" class="form-label">File Location</label>
                  <input class="form-control" type="file" id="formFile" name="excelFile" required>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Process</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="scrollable_area" style="width:100%; max-height: 400px; background-color: #25313d; border-radius: 10px; padding: 15px; overflow: auto;">

    <table class=" table-dark table-bordered table-striped" style="font-size: 0.7rem; background-color:transparent">
      <thead style="position: sticky; top: 0; z-index: 1; background-color: rgba(5, 24, 43, 0.8);">
        <tr>
          <th style="padding: 0.25rem 0.25rem;">No.</th>
          <th style="padding: 0.25rem 0.25rem;">NIK</th>
          <th style="padding: 0.25rem 0.25rem;">Employee Name</th>
          <th style="padding: 0.25rem 0.25rem;">Local/Expatriate</th>
          <th style="padding: 0.25rem 0.25rem;">Join Date</th>
          <th style="padding: 0.25rem 0.25rem;">Resigned Date</th>
          <th style="padding: 0.25rem 0.25rem;">Reason of Resigned</th>
          <th style="padding: 0.25rem 0.25rem;">KTP / Passport</th>
          <th style="padding: 0.25rem 0.25rem;">NPWP</th>
          <th style="padding: 0.25rem 0.25rem;">BPJS Kesehatan</th>
          <th style="padding: 0.25rem 0.25rem;">BPJS Ketenagakerjaan</th>
          <th style="padding: 0.25rem 0.25rem;">Tax Status</th>
          <th style="padding: 0.25rem 0.25rem;">Address</th>
          <th style="padding: 0.25rem 0.25rem;">City</th>
          <th style="padding: 0.25rem 0.25rem;">Phone Number</th>
          <th style="padding: 0.25rem 0.25rem;">Email</th>
          <th style="padding: 0.25rem 0.25rem;">Place of Birth</th>
          <th style="padding: 0.25rem 0.25rem;">Date of Birth</th>
          <th style="padding: 0.25rem 0.25rem;">Gender</th>
          <th style="padding: 0.25rem 0.25rem;">Marital Status</th>
          <th style="padding: 0.25rem 0.25rem;">No. of Children</th>
          <th style="padding: 0.25rem 0.25rem;">Highest Education</th>
          <th style="padding: 0.25rem 0.25rem;">Major</th>
          <th style="padding: 0.25rem 0.25rem;">Graduation Year</th>
          <th style="padding: 0.25rem 0.25rem;">Religion</th>
          <th style="padding: 0.25rem 0.25rem;">Bank Name</th>
          <th style="padding: 0.25rem 0.25rem;">Bank Account Number</th>
          <th style="padding: 0.25rem 0.25rem;">Bank Account Name</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($karyawan as $key => $value): ?>
          <tr style="font-size: 0.7rem; vertical-align: top;">
            <td style="padding: 0.25rem 0.25rem;"><?= $key + 1 ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['nik'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 200px;"><?= $value['nama_karyawan'] ?>
              <button class="btn badge text-bg-primary">Edit</button>
            </td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['grup'] ?></td>
            <td style="padding: 0.25rem 0.25rem;white-space: nowrap; min-width: 50px;"><?= $value['tgl_masuk'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 50px;"><?= $value['tgl_resign'] ?></td>
            <td style="padding: 0.25rem 0.25rem; min-width: 200px;"><?= $value['ket_resign'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['ektp'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['npwp'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['bpjs'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['jamsostek'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['sts_pajak'] ?></td>
            <td style="padding: 0.25rem 0.25rem; min-width: 200px;"><?= $value['alamat'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['kota'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['telpon'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['email'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['tempat_lahir'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 50px;"><?= $value['tgl_lahir'] ?></td>
            <td style="padding: 0.25rem 0.25rem; text-align: center;"><?= $value['kelamin'] ?></td>
            <td style="padding: 0.25rem 0.25rem; min-width: 100px;"><?= $value['sts_kawin'] ?></td>
            <td style="padding: 0.25rem 0.25rem; text-align: center;"><?= $value['anak'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['pendidikan'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['studi'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['lulusan'] ?></td>
            <td style="padding: 0.25rem 0.25rem;"><?= $value['agama'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 200px;"><?= $value['bank'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 200px;"><?= $value['rek_no'] ?></td>
            <td style="padding: 0.25rem 0.25rem; white-space: nowrap; min-width: 200px;"><?= $value['rek_nama'] ?></td>

          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </div>

</div>
<?= $this->endSection() ?>