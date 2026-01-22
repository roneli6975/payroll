<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\Karyawan;
use CodeIgniter\HTTP\ResponseInterface;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class Excel extends BaseController
{
    public function index(): string
    {
        $data['title'] = "Import Karyawan from Excel";
        $data['mSubHome'] = "show";
        $data['mSelectHome'] = "active";
        $karyawanModel = new Karyawan();
        $data['karyawan'] = $karyawanModel->findAll();

        return view('home/dashboard', $data);
    }

    public function import_karyawan()
    {
        $input = $this->request->getFile('excelFile');

        if ($input->isValid() && ! $input->hasMoved()) {
            $filePath = $input->getTempName();
            $fileExtension = $input->getClientMimeType() === 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ? 'Xlsx' : 'Xls';

            // Read the Excel file
            $reader = IOFactory::createReader($fileExtension);
            $spreadsheet = $reader->load($filePath);
            $sheetData = $spreadsheet->getActiveSheet()->toArray();

            // Prepare data for database insertion (skip header row)
            if (!empty($sheetData)) {
                $model = new Karyawan(); // Replace YourDataModel with your actual model name

                for ($i = 2; $i < count($sheetData); $i++) {
                    $data = [
                        'nik' => $sheetData[$i][0], // Adjust column names and indices
                        'nama_karyawan' => $sheetData[$i][1],
                        'grup' => $sheetData[$i][2],
                        'tgl_masuk' => $sheetData[$i][4],
                        'tgl_resign' => $sheetData[$i][5],
                        'ket_resign' => $sheetData[$i][6],
                        'ektp' => $sheetData[$i][7],
                        'npwp' => $sheetData[$i][17],
                        'bpjs' => $sheetData[$i][19],
                        'jamsostek' => $sheetData[$i][18],
                        'sts_pajak' => $sheetData[$i][16],
                        'alamat' => $sheetData[$i][8],
                        'kota' => $sheetData[$i][9],
                        'telpon' => null,
                        'email' => $sheetData[$i][24],
                        'tempat_lahir' => $sheetData[$i][11],
                        'tgl_lahir' => $sheetData[$i][10],
                        'kelamin' => $sheetData[$i][13],
                        'sts_kawin' => $sheetData[$i][14],
                        'anak' => $sheetData[$i][15],
                        'pendidikan' => null,
                        'studi' => null,
                        'lulusan' => null,
                        'agama' => $sheetData[$i][12],
                        'bank' => $sheetData[$i][20],
                        'rek_no' => $sheetData[$i][21],
                        'rek_nama' => null,
                    ];
                    $model->save($data); // Insert data into the database
                }
                return redirect()->back()->with('message', 'Excel data imported successfully!');
            }
        }

        return redirect()->back()->with('message', 'Failed to import Excel data.');
    }
}
