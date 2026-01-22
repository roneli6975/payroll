<div class="container-fluid">

  <div class="row">
    <div class="col-lg-10">
      <!-- Page Heading -->
      <h1 class="h3 mb-4 text-gray-800">Time Sheet Database</h1>
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
            <form action="<?= base_url('home/import_timesheet') ?>" method="post" enctype="multipart/form-data">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Import Time Sheet from Excel</h1>
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
          <?php
          $mPeriode = "2025-12-25";
          $mTimeStamp = strtotime($mPeriode);
          ?>
          <th colspan="32" class="text-center" style="font-size: 20px; background-color: #1a3752ff; color: white; border: 0.08rem solid #8d8d8dff;">
            Time Sheet for <?= date("F Y", $mTimeStamp); ?>
          </th>

        </tr>

        <div class="row">
          <div class="col-6">
            <th style="vertical-align: middle; padding: 0.3rem 0.5rem; font-size: 15px; background-color: #1a3752ff; color: white; border: 0.08rem solid #8d8d8dff;">Employee Name</th>
          </div>
          <div class="col-6 container">
            <?php for ($i = 1; $i <= 31; $i++): ?>
              <?php
              $warna = "#1a3752ff";
              $tgl = date("l", mktime(0, 0, 0, date("m", $mTimeStamp), $i, date("Y", $mTimeStamp)));

              if (substr($tgl, 0, 2) == "Su") {
                $warna = "#5f1010b3";
              } elseif (substr($tgl, 0, 2) == "Sa") {
                $warna = "#00158ab0";
              }

              ?>

              <th style="padding: 0.3rem 0.5rem; font-size: 10px; width:1%; background-color: <?= $warna ?>; color: white; border: 0.08rem solid #8d8d8dff;">
                <div style="font-size: 10px; text-align: center;">
                  <?= $i ?>
                </div>
                <div style="font-size: 10px; text-align: center;">
                  <?php
                  $warna = "#1d2645ff";
                  $tgl = date("l", mktime(0, 0, 0, date("m", $mTimeStamp), $i, date("Y", $mTimeStamp)));

                  echo substr($tgl, 0, 2);
                  ?>
                </div>
              </th>

            <?php endfor; ?>
          </div>
        </div>
      </thead>
      <tbody>
        <tr>
          <td style="padding: 0.3rem 0.2rem; font-size: 11px; width: 100%; border: 0.08rem solid #8d8d8dff; color: #202020ff">RONY SUHARINURDJAJA</td>

          <?php for ($i = 1; $i <= 31; $i++):

            $bgwarna = "";
            $txwarna = "#202020ff";
            $tgl = date("l", mktime(0, 0, 0, date("m", $mTimeStamp), $i, date("Y", $mTimeStamp)));
            if (substr($tgl, 0, 2) == "Su") {
              $bgwarna = "background-color: #5f1010b3";
              $txwarna = "white";
            } elseif (substr($tgl, 0, 2) == "Sa") {
              $bgwarna = "background-color: #00158ab0";
              $txwarna = "white";
            }

          ?>
            <td style="vertical-align: middle; padding: 0.3rem 0.2rem; font-size: 0.5rem; width: 0%; color: <?= $txwarna ?>; <?= $bgwarna ?>; border: 0.08rem solid #8d8d8dff;">ZDG12</td>
          <?php endfor; ?>
        </tr>

        <tr>
          <td style="padding: 0.3rem 0.2rem; font-size: 11px; width: 100%; border: 0.08rem solid #8d8d8dff; color: #202020ff">NURA SUHARMANTO</td>

          <?php for ($i = 1; $i <= 31; $i++):

            $bgwarna = "";
            $txwarna = "#202020ff";
            $tgl = date("l", mktime(0, 0, 0, date("m", $mTimeStamp), $i, date("Y", $mTimeStamp)));
            if (substr($tgl, 0, 2) == "Su") {
              $bgwarna = "background-color: #5f1010b3";
              $txwarna = "white";
            } elseif (substr($tgl, 0, 2) == "Sa") {
              $bgwarna = "background-color: #00158ab0";
              $txwarna = "white";
            }

          ?>
            <td style="vertical-align: middle; padding: 0.3rem 0.2rem; font-size: 0.5rem; width: 0%; color: <?= $txwarna ?>; <?= $bgwarna ?>; border: 0.08rem solid #8d8d8dff;">ZDG12</td>
          <?php endfor; ?>
        </tr>

        <tr>
          <td style="padding: 0.3rem 0.2rem; font-size: 11px; width: 100%; border: 0.08rem solid #8d8d8dff; color: #202020ff">ANDRY RAMADHANI</td>

          <?php for ($i = 1; $i <= 31; $i++):

            $bgwarna = "";
            $txwarna = "#202020ff";
            $tgl = date("l", mktime(0, 0, 0, date("m", $mTimeStamp), $i, date("Y", $mTimeStamp)));
            if (substr($tgl, 0, 2) == "Su") {
              $bgwarna = "background-color: #5f1010b3";
              $txwarna = "white";
            } elseif (substr($tgl, 0, 2) == "Sa") {
              $bgwarna = "background-color: #00158ab0";
              $txwarna = "white";
            }

          ?>
            <td style="vertical-align: middle; padding: 0.3rem 0.2rem; font-size: 0.5rem; width: 0%; color: <?= $txwarna ?>; <?= $bgwarna ?>; border: 0.08rem solid #8d8d8dff;">ZDG12</td>
          <?php endfor; ?>
        </tr>

      </tbody>
    </table>
  </div>



</div>
</div>