<?php

namespace App\Models;

use CodeIgniter\Model;

class Karyawan extends Model
{
  protected $table = 'karyawan';          // Table name
  protected $primaryKey = 'id';           // Primary key column
  protected $allowedFields = ['nik', 'nama_karyawan', 'grup', 'tgl_masuk', 'tgl_resign', 'ket_resign', 'ektp', 'npwp', 'bpjs', 'jamsostek', 'sts_pajak', 'alamat', 'kota', 'telpon', 'email', 'tempat_lahir', 'tgl_lahir', 'kelamin', 'sts_kawin', 'anak', 'pendidikan', 'studi', 'lulusan', 'agama', 'bank', 'rek_no', 'rek_nama'];  // Fields you can insert/update (adjust as needed)
  protected $useTimestamps = true;        // Auto-manage created_at/updated_at if your table has them
  protected $returnType = 'array';        // Return data as array (or 'object')
}
