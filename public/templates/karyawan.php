<div class="container-fluid">

	<div class="row">
		<div class="col-lg-10">
			<!-- Page Heading -->
			<h1 class="h3 mb-4 text-gray-800">Employees Database</h1>
		</div>
		<div class="col-lg-2 mb-4" style="text-align: right;">
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
				Import from Excel
			</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class=" modal-content" style="background-color: #ffffffff;">
						<form action="<?= base_url('home/import_karyawan') ?>" method="post" enctype="multipart/form-data">
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

	<div class="row">
		<table class="table table-bordered table-striped" style="border: 0.08rem solid #8d8d8dff; border-collapse: collapse; width: 100%;">
			<thead>
				<tr>
					<th>No.</th>
					<th>NIK</th>
					<th>Employee Name</th>
					<th>Local/Expatriate</th>
					<th>Join Date</th>
					<th>Resignation Date</th>
					<th>Reason of Resignation</th>
					<th>e-KTP</th>
					<th>NPWP</th>
					<th>BPJS Kesehatan</th>
					<th>BPJS Ketenagakerjaan</th>
					<th>Tax Status</th>
					<th>Address</th>
					<th>City</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Place of Birth</th>
					<th>Date of Birth</th>
					<th>Gender</th>
					<th>Marital Status</th>
					<th>No. of Children</th>
					<th>Highest Education</th>
					<th>Major</th>
					<th>Graduation Year</th>
					<th>Religion</th>
					<th>Bank Name</th>
					<th>Bank Account Number</th>
					<th>Bank Account Name</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<?php foreach ($karyawan as $key => $value): ?>
						<td><?= $key + 1 ?></td>
						<td><?= $value['nik'] ?></td>
						<td><?= $value['nama_karyawan'] ?></td>
						<td><?= $value['grup'] ?></td>
						<td><?= $value['tgl_masuk'] ?></td>
						<td><?= $value['tgl_resign'] ?></td>
						<td><?= $value['ket_resign'] ?></td>
						<td><?= $value['ektp'] ?></td>
						<td><?= $value['npwp'] ?></td>
						<td><?= $value['bpjs'] ?></td>
						<td><?= $value['jamsostek'] ?></td>
						<td><?= $value['sts_pajak'] ?></td>
						<td><?= $value['alamat'] ?></td>
						<td><?= $value['kota'] ?></td>
						<td><?= $value['telpon'] ?></td>
						<td><?= $value['email'] ?></td>
						<td><?= $value['tempat_lahir'] ?></td>
						<td><?= $value['tgl_lahir'] ?></td>
						<td><?= $value['kelamin'] ?></td>
						<td><?= $value['sts_kawin'] ?></td>
						<td><?= $value['anak'] ?></td>
						<td><?= $value['pendidikan'] ?></td>
						<td><?= $value['studi'] ?></td>
						<td><?= $value['lulusan'] ?></td>
						<td><?= $value['agama'] ?></td>
						<td><?= $value['bank'] ?></td>
						<td><?= $value['rek_no'] ?></td>
						<td><?= $value['rek_nama'] ?></td>
					<?php endforeach; ?>
				</tr>
			</tbody>
		</table>
	</div>




</div>