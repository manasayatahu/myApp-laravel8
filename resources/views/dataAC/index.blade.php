@extends('layouts.main')


@section('content')
<style>
  .tb-ac tbody tr:hover{
    cursor: pointer;
    background-color: rgba(0,0,0,0.2);
  }
  html.dark-theme body .tb-ac tbody tr:hover{
    cursor: pointer;
    background-color: rgba(255,255,255,0.2);
  }
</style>
@php
 use Illuminate\Support\Carbon; 
//  $date = date('Y-m-d H:i:s');
@endphp

            <div class="flash-success" data-success="{{ session('success') }}"></div>
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">              
              <div class="ps-3">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-table" style="color:#7b378e"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Data AC</li>
                  </ol>
                </nav>
              </div>              
            </div>            
            @can('admin')              
            <a href="/ac/create" class="mb-0 text-uppercase btn btn-primary btn-sm">Tambah Data</a>
            @endcan

            <a href="/ac/export" class="mb-0 text-uppercase btn btn-secondary btn-sm">Export</a>

            <a href="/ac/trash" class="mb-0 text-uppercase btn btn-secondary btn-sm"><i class="bi bi-trash-fill"></i></a>

            <div class="col-md-4 mt-3">            
              <div class="input-group mb-3">
                  <button class="btn btn-info text-white" type="button" id="btnRangeAc">Search</button>
                  <input type="text" class="form-control input-range-ac" name="rangeQueryAc" placeholder="Cari data yang telah di update">
              </div>            
          </div>

        <hr/>
        <div class="card">
          <div class="card-body">
            <div class="table-responsive">
              <table id="example" class="table table-striped table-bordered tb-ac" style="width:100%">
                @can('admin')                  
                <a href="javascript:;" class="btn btn-danger btn-sm mb-3" id="selectDeleteRecord">Delete All</a>
                @endcan
                <thead>
                  <tr>
                    @can('admin')                      
                    <th><input type="checkbox" class="form-check-input" id="checkAll" /></th>
                    @endcan
                    <th>No.</th>
                    <th>Assets</th>
                    <th>Label</th>
                    <th>Wing</th>
                    <th>Lantai</th>
                    <th>Ruangan</th>
                    <th>Merk</th>
                    <th>Type</th>                    
                    <th>Status</th>
                    <th>Tgl Maint</th>
                    <th>Opsi</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $ac)                                      
                  <tr id="sid{{ $ac->id }}" style="text-transform: capitalize">
                    @can('admin')                      
                    <td><input class="form-check-input checkBoxClass" type="checkbox" name="ids" value="{{ $ac->id }}" /></td>
                    @endcan
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $ac->assets }}</td>
                    <td>{{ $ac->label }}</td>
                    <td>{{ $ac->wing }}</td>
                    <td>{{ $ac->lantai }}</td>
                    <td>{{ $ac->ruangan }}</td>
                    <td>{{ $ac->merk }}</td>
                    <td>{{ $ac->type }}</td>
                    @if ($ac->status == 'Rusak')
                    <td class="bg-danger text-white">{{ $ac->status }}</td>
                    @else
                    <td class="bg-info text-white">{{ $ac->status }}</td>
                    @endif
                    @if ($ac->tgl_maintenance == NULL)
                    <td></td>
                    @else
                    <td>{{ Carbon::parse($ac->tgl_maintenance)->diffForHumans() }}</td>
                    @endif
                    <td>
                        <div class="table-actions d-flex align-items-center gap-3 fs-6">

                            <button id="btnDetailAC" class="text-primary border-0 bg-transparent btnku" data-bs-toggle="modal" data-bs-target="#exampleScrollableModal" 
                            data-id="{{ $ac->id }}"
                            data-labelac="{{ $ac->label }}"
                            data-assetsac="{{ $ac->assets }}"
                            data-wingac="{{ $ac->wing }}"
                            data-lantaiac="{{ $ac->lantai }}"
                            data-ruanganac="{{ $ac->ruangan }}"
                            data-merkac="{{ $ac->merk }}"
                            data-typeac="{{ $ac->type }}"
                            data-jenisac="{{ $ac->jenis }}"
                            data-kapasitasac="{{ $ac->kapasitas }}" data-refrigerantac="{{ $ac->refrigerant }}" data-productac="{{ $ac->product }}"
                            data-currentac="{{ $ac->current }}"
                            data-voltageac="{{ $ac->voltage }}"
                            data-btuac="{{ $ac->btu }}"
                            data-pipaac="{{ $ac->pipa }}"
                            data-statusac="{{ $ac->status }}"
                            data-catatanac="{{ $ac->catatan }}"
                            data-kerusakanac="{{ $ac->kerusakan }}"
                            data-tglpemasanganac="{{ $ac->tgl_pemasangan }}" data-petugaspemasanganac="{{ $ac->petugas_pemasangan }}"
                            data-tanggalmaintenanceac="{{ Carbon::parse($ac->tgl_maintenance)->locale('id')->diffForHumans() }}" data-updatedtimeac="{{ $ac->user_updated }}/{{ Carbon::parse($ac->user_updated_time)->diffForHumans() }}">
                            <i class="bi bi-eye-fill"></i>
                            </button>
                            
                            <a href="/ac/update/{{ $ac->id }}" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit"><i class="bi bi-pencil-fill"></i>
                            </a>        

                            @can('admin')                              
                            <a id="btnDeleteAc" href="/ac/delete/{{ $ac->id }}" class="text-danger btn-delete" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-circle-fill"></i></a>
                            @endcan
                          </div>
                    </td>
                  </tr>
                  @endforeach                 
                </tbody>
                <tfoot>
                  <tr>
                    @can('admin')                      
                    <th></th>
                    @endcan
                    <th>No.</th>
                    <th>Assets</th>
                    <th>Label</th>
                    <th>Wing</th>
                    <th>Lantai</th>
                    <th>Ruangan</th>
                    <th>Merk</th>
                    <th>Type</th>                    
                    <th>Status</th>
                    <th>Opsi</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>

        <h6 class="mb-0 text-uppercase">Karakteristik jenis-jenis freon</h6>
            <hr/>
            <div class="card">
              <div class="card-body">
                <p class="mt-2">Masing-masing dari tiga jenis freon tersebut memiliki perbedaan pendinginan yang diukur dengan istilah cooling index. Semakin tinggi angka cooling index-nya, semakin cepat proses pendinginannya.</p>
                <table class="table table-bordered mb-0">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Jenis Freon</th>
                      <th>ODP</th>
                      <th>GWP</th>
                      <th>Cooling Index</th>
                      <th>Flammability</th>
                      <th>Standar PSi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>R22</td>
                      <td>0.05</td>
                      <td>1810</td>
                      <td>100</td>
                      <td><i class="bi bi-x"></i></td>
                      <td>70 - 80</td>
                    </tr>
                    <tr>
                      <th scope="row">2</th>
                      <td>R32</td>
                      <td>-</td>
                      <td>675</td>
                      <td>150</td>
                      <td><i class="bi bi-check"></i></td>
                      <td>150 - 160</td>
                    </tr> 
                    <tr>
                      <th scope="row">3</th>
                      <td>R410</td>
                      <td>-</td>
                      <td>2090</td>
                      <td>92</td>
                      <td><i class="bi bi-x"></i></td>
                      <td>140 - 150</td>
                    </tr> 
                  </tbody>
                </table>                
              </div>
              <div class="row">
              <div class="col-md-6">
              <ul>
                <h6>Keterangan : </h6>
                <li>ODP merupakan Ozone Depletion Potential atau potensi perusakan ozon</li>
                <li>GWP merupakan Global Warming Potential atau potensi global warming</li>
                <li>Cooling index merupakan tingkat pendinginan freon</li>
                <li>Flammability merupakan tingkat kemudahan terbakar freonnya</li>
              </ul>
            </div>
            <div class="col-md-6">
              <ul>
                <h6>Kesimpulan : </h6>
                <li>Freon R32 jauh lebih ramah lingkungan dibanding freon R410a karena tingkat GWP-nya lebih rendah dibandingkan freon R22 dan freon R410a</li>
                <li>Freon R32 memiliki cooling index yang lebih tinggi dibandingkan dengan freon R22 dan freon R410a</li>
                <li>Freon R32 memiliki potensi mudah terbakar dibandingkan dengan freon R22 dan freon R410a, namun untuk tingkat flammability-nya sedikit rendah</li>
              </ul>
            </div>
          </div>
            </div>

        <div class="row">
          <div class="col-md-6">
            <h6 class="mb-0 text-uppercase">Ukuran Pipa AC Daikin</h6>
        <hr/>
        <div class="card">
          <div class="card-body">
            <table class="table table-sm mb-0">
              <thead>
                <tr>                                  
                  <th scope="col">PK(Paard Kracht)</th>
                  <th scope="col">Ukuran Pipa(Liquid & Gas)</th>
                </tr>
              </thead>
              <tbody class="ukuran-daikin-body">
                               
              </tbody>
            </table>
          </div>
        </div>
        </div>
        <div class="col-md-6">
          <h6 class="mb-0 text-uppercase">Ukuran Pipa AC Umum</h6>
      <hr/>
      <div class="card">
        <div class="card-body">
          <table class="table table-sm mb-0">
            <thead>
              <tr>                                  
                <th scope="col">PK(Paard Kracht)</th>
                <th scope="col">Ukuran Pipa(Liquid & Gas)</th>
              </tr>
            </thead>
            <tbody class="ukuran-umum-body">
              <tr>                 
                <td></td>                
                <td></td>                
              </tr>               
            </tbody>
          </table>
        </div>
      </div>
      </div>
        </div>

        <div class="row">
          <div class="col-md-6">
            <h6 class="mb-0 text-uppercase">Ukuran Capasitor AC</h6>
        <hr/>
        <div class="card">
          <div class="card-body">
            <table class="table table-sm mb-0">
              <thead>
                <tr>                                  
                  <th scope="col">PK(Paard Kracht)</th>
                  <th scope="col">uF(Micro Farad)</th>
                </tr>
              </thead>
              <tbody class="kapasitor-body">
                               
              </tbody>
            </table>
          </div>
        </div>
        </div>
        <div class="col-md-6">          
      <div class="card">
        <div class="card-body">
          <div>
            <h5 class="card-title">Penyebab Kapasitor AC Rusak</h5>
          </div>
          <ol>
            <li>Sirkuit sistem yang terlalu panas</li>
            <li>Korsleting dalam sistem pendingin</li>
            <li>Lonjakan daya</li>
            <li>Sambaran petir</li>
            <li>Suhu luar ruangan yang sangat tinggi</li>
            <li>umur dari kapasitor tersebut</li>
          </ol>
        </div>
      </div>
      </div>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="card">
              <div class="card-body">
                <div>
                  <h5 class="card-title">Cara Memeriksa Kondisi Kapasitor AC</h5>
                </div>
                <ol>
                  <li>Konsletkan terlebih dulu untuk membuang sisa muatan listrik. Caranya, hubungkan kedua socket kapasitor menggunakan obeng.</li>&nbsp
                  <li>Selanjutnya, periksa menggunakan muliti tester. Caranya, posisikan multi tester pada satuan oHm. lalu hubungkan kabel merah pada socket kapasitor, dan juga kabel yang berwarna hitam pada socket satunya.</li>&nbsp
                  <li>Jika jarum pada multi tester jika menunjukan pergerakan ke atas kemudian balik lagi ke bawah, itu berarti kapasitor bagus. Namun jika jarum multitester tidak ada tanda pergerakan sama sekali, bisa jadi kapasitor rusak atau lemah.</li>
                </ol>
              </div>
            </div>
          </div>
          <div class="col-md-6">
            <div class="card">              
              <div class="card-body">
                <div>
                  <h5 class="card-title">Cara Mencari Socket CSR pada kompresor AC</h5>
                </div>
                <ol>
                  <li>Posisikan selector multitester pada posisi 1 kilo ohm. Terminal pertama yang akan kita cari adalah terminal <strong class="text-danger">C</strong>, dengan cara mencari hambatan yang paling besar dari ketiga terminal yang ada pada kompresor. Setelah hambatan yang paling besar sudah di temukan maka terminal yang tidak diukur adalah terminal <strong class="text-danger">C</strong></li>&nbsp
                  <li>Selanjutnya, cari hambatan yang sedang dengan cara tempatkan salah satu jack di terminal <strong class="text-danger">C</strong>. Kemudian tempatkan jack yang satunya lagi ke salah satu terminal pada kompresor dan cari hambatan yang sedang. Setelah hambatan yang sedang ditemukan maka terminal tersebut adalah <strong class="text-danger">S</strong></li>&nbsp
                  <li>Sekarang tempatkan salah satu jack ke terminal <strong class="text-danger">C</strong> dan jack yang satunya lagi ke terminal yang belum kita temukan, harusnya hambatannya paling kecil dari terminal <strong class="text-danger">C</strong> ke <strong class="text-danger">S</strong></li>
                </ol>
                <img style="width: 185px;" src="/assets/images/csr.png" class="card-img-top">
                <img style="width: 185px;" src="/assets/images/csr1.png" class="card-img-top">
                <img style="width: 185px;" src="/assets/images/csr2.png" class="card-img-top">
              </div>
            </div>
          </div>
        </div>
        


        {{-- Modal Detail --}}

        <div class="col">          
          <div class="modal fade" id="exampleScrollableModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Detail Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <div class="card">                    
                    {{-- <div class="card-body"> --}}
                      <ul class="list-group">                        
                        <li class="list-group-item d-flex justify-content-between align-items-center">Di ubah <i class="bi bi-arrow-right"></i> <strong id="detailUpdatedAC"></strong>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Pemasangan <i class="bi bi-arrow-right"></i> <strong id="detailTanggaPemasanganAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Petugas Pemasangan <i class="bi bi-arrow-right"></i> <strong id="detailPetugasPemasanganAC" class="text-capitalize"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Maintenance <i class="bi bi-arrow-right"></i> <strong id="detailTglMaintenanceAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Label <i class="bi bi-arrow-right"></i> <strong id="detailLabelAC" class="text-capitalize"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Assets <i class="bi bi-arrow-right"></i> <strong id="detailAssetsAC" class="text-capitalize"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Wing <i class="bi bi-arrow-right"></i> <strong id="detailWingAC"></strong>
                        </li>                        
                        <li class="list-group-item d-flex justify-content-between align-items-center">Lantai <i class="bi bi-arrow-right"></i> <strong id="detailLantaiAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Ruangan <i class="bi bi-arrow-right"></i> <strong id="detailRuanganAC" class="text-capitalize"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Merk <i class="bi bi-arrow-right"></i> <strong id="detailMerkAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Type <i class="bi bi-arrow-right"></i> <strong id="detailTypeAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Jenis <i class="bi bi-arrow-right"></i> <strong id="detailJenisAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Kapasitas <i class="bi bi-arrow-right"></i> <strong id="detailKapasitasAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Refrigerant <i class="bi bi-arrow-right"></i> <strong id="detailRefrigerantAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Product <i class="bi bi-arrow-right"></i> <strong id="detailProductAC" class="text-capitalize"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Amper <i class="bi bi-arrow-right"></i> <strong id="detailAmperAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Voltage <i class="bi bi-arrow-right"></i> <strong id="detailVoltageAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Btu <i class="bi bi-arrow-right"></i> <strong id="detailBtuAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Pipa Liquid + Gas <i class="bi bi-arrow-right"></i> <strong id="detailPipaAC"></strong>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Status <i class="bi bi-arrow-right"></i> <strong id="detailStatusAC"></strong>
                        </li>
                        <div class="accordion-item detail-kerusakan">
                          <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                              Kerusakan
                            </button>
                          </h2>
                          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                            <div class="accordion-body" id="detailKerusakanAC">
                            </div>
                          </div>
                        </div>
                        <div class="accordion-item">
                          <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              Catatan
                            </button>
                          </h2>
                          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                            <div class="accordion-body" id="detailCatatanAC">
                              
                            </div>
                          </div>
                        </div>
                        <div id="btn-ac-error">
                          <li class="list-group-item d-flex justify-content-center align-items-center">
                            <a href="/ac/koderror" class="btn btn-danger btn-sm">Lihat Data Error</a>
                          </li>
                        </div>                        
                      </ul>
                    {{-- </div> --}}
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>                 
                </div>
              </div>
            </div>
          </div>
        </div>

        {{-- end modal detail --}}

        {{-- modal range data --}}
        <div class="modal fade" id="modalRangeDataAc" tabindex="-1" aria-hidden="true">
          <div class="modal-dialog modal-xl">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="rangeTitleAc">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <div class="card-body">
                  <table class="table table-bordered mb-0">
                    <thead>
                      <tr>                  
                        <th scope="col">Label</th>
                        <th scope="col">Lantai</th>
                        <th scope="col">Wing</th>                  
                        <th scope="col">Ruangan</th>
                        <th scope="col">Merk</th>
                        <th scope="col">Type</th>
                        <th scope="col">Status</th>
                        <th scope="col">Diperbarui pada</th>
                        <th scope="col">By</th>
                      </tr>
                    </thead>
                    <tbody id="rangeDataAc">
                                      
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              </div>
            </div>
          </div>
        </div>
      </div>
        {{-- end modal range data --}}



        <script src="/assets/js/jquery.min.js"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
          const flashSuccess = document.querySelector('.flash-success');
          const flashNotif = flashSuccess.dataset.success;          
          if(flashNotif){
            Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: flashNotif,
            showConfirmButton: false,
            timer: 4000
            });
          }

                  
          $(document).on('click', '#btnDeleteAc', function(e){
            const href = $(this).attr('href');
            e.preventDefault();          
            Swal.fire({
              title: 'Are you sure?',
              text: "You won't be able to revert this!",
              icon: 'warning',
              showCancelButton: true,
              confirmButtonColor: '#3085d6',
              cancelButtonColor: '#d33',
              confirmButtonText: 'Yes, delete it!'
            }).then((result) => {
              if (result.isConfirmed) {
                window.location.href = href;
                Swal.fire(
                  'Deleted!',
                  'Your file has been deleted.',
                  'success'
                )
              }
            })
          });
                              
        </script>
        <script>          
        
          $(document).on('click', '#btnDetailAC', function() {
            
              const label = $(this).data('labelac');
              const assets = $(this).data('assetsac');
              const wingac = $(this).data('wingac');
              const lantaiac = $(this).data('lantaiac');
              const ruanganac = $(this).data('ruanganac');
              const merkac = $(this).data('merkac');
              const typeac = $(this).data('typeac');
              const jenisac = $(this).data('jenisac');
              const kapasitasac = $(this).data('kapasitasac');
              const refrigerantac = $(this).data('refrigerantac');
              const productac = $(this).data('productac');
              const currentac = $(this).data('currentac');
              const voltageac = $(this).data('voltageac');
              const btuac = $(this).data('btuac');
              const pipaac = $(this).data('pipaac');
              const statusac = $(this).data('statusac');
              const catatanac = $(this).data('catatanac');
              const kerusakanac = $(this).data('kerusakanac');
              const tanggalpemasanganac = $(this).data('tglpemasanganac');
              const petugaspemsanganac = $(this).data('petugaspemasanganac');
              const tanggalmaint = $(this).data('tanggalmaintenanceac');
              const updatedtimeac = $(this).data('updatedtimeac');
            
              if(updatedtimeac == '/1 detik yang lalu'){
                
                $('#detailUpdatedAC').html('');
                

              }else{

                $('#detailUpdatedAC').html(updatedtimeac);
                
                
              }

              if(tanggalmaint == '1 detik yang lalu'){
                                
                $('#detailTglMaintenanceAC').html('');

              }else{

                
                $('#detailTglMaintenanceAC').html(tanggalmaint);
                
              }
              
              
              $('#detailTanggaPemasanganAC').html(tanggalpemasanganac);
              $('#detailPetugasPemasanganAC').html(petugaspemsanganac);
              $('#detailLabelAC').html(label);
              $('#detailAssetsAC').html(assets);
              $('#detailWingAC').html(wingac);
              $('#detailLantaiAC').html(lantaiac);
              $('#detailRuanganAC').html(ruanganac);
              $('#detailMerkAC').html(merkac);
              $('#detailTypeAC').html(typeac);
              $('#detailJenisAC').html(jenisac);
              $('#detailKapasitasAC').html(kapasitasac);
              $('#detailRefrigerantAC').html(refrigerantac);
              $('#detailProductAC').html(productac);
              $('#detailAmperAC').html(currentac);
              $('#detailVoltageAC').html(voltageac);
              $('#detailBtuAC').html(btuac);
              $('#detailPipaAC').html(pipaac);
              $('#detailStatusAC').html(statusac);           
              $('#detailCatatanAC').html(catatanac); 
              $('#detailKerusakanAC').html(kerusakanac); 
          });
           
        </script>
        <script>

          $(function(e) {            
            
            $("#checkAll").click(function() {
              $(".checkBoxClass").prop('checked', $(this).prop('checked'));
            });
            $("#selectDeleteRecord").click(function(e) {              
              var checkBox = $('.checkBoxClass:checked');                
              if(checkBox.length > 0) {                  
                  e.preventDefault();                  
                  Swal.fire({
                  title: 'Are you sure?',
                  text: "Some data will be deleted!",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                  // $('input[type=checkbox]').prop('checked', false);
                  if (result.isConfirmed) {
                    var allids = [];
                  $("input:checkbox[name=ids]:checked").each(function() {
                    allids.push($(this).val());
                  });                  
                  
                  $.ajax({
                    url: "{{ route('ac.deleteSelected') }}",
                    type: "DELETE",
                    data : {
                      _token : $("input[name=_token]").val(),
                      ids:allids
                    },
                    success : response => {
                      $.each(allids, (key, val) => {
                        $("#sid"+val).remove();                        
                      })
                    },
                    error : e => {
                      Swal.fire({
                        icon: 'error',
                        title: 'Oops...'
                      })
                    }
                  });
                    
                  }
                })
              }else{
                  Swal.fire({
                  icon: 'error',
                  title: 'Oops...',
                  text: 'Choose at least one data!'  
                })
              }                       
            })
                              
          });
        </script>
        <script type="text/javascript">
          $(function() {
          
            $('input[name="rangeQueryAc"]').daterangepicker({
                autoUpdateInput: false,
                locale: {
                    cancelLabel: 'Clear'
                }
            });
          
            $('input[name="rangeQueryAc"]').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(picker.startDate.format('YYYY-MM-DD') + ' - ' + picker.endDate.format('YYYY-MM-DD'));
            });
          
            $('input[name="rangeQueryAc"]').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('');
            });
          
          });
          </script>
          <script>
            $(document).on('click', '#btnRangeAc', function() {
              const nilai = $('.input-range-ac').val();              
              const start = nilai.slice(0,11).split('-').join('/');
              const end = nilai.slice(13,23).split('-').join('/');
              
              $.ajax({
                url: "/dashboard/range/ac/" + nilai,
                type: "GET",               
                success : result => {                  
                  let card = '';
                  result.forEach(e => {
                    $('#modalRangeDataAc').modal('show');
                    $("#rangeTitleAc").text(`Data : ${start} sampai ${end}`);
                    card += updateCardAc(e);
                  });
                  $("#rangeDataAc").html(card);
                }
              });
            });


            function updateCardAc(e){
              
              let date = Date.parse(e.updated_at);
              // let newD = date.setFullYear(e.created_at);
              let newD = new Date(date);
              let year = newD.getFullYear();
              let month = newD.getMonth() + 1;
              let day = newD.getUTCDate();
              
              return `<tr>                      
                      <td>${e.label == null ? '' : e.label}</td>
                      <td>${e.lantai}</td>
                      <td>${e.wing}</td>
                      <td>${e.ruangan}</td>
                      <td>${e.merk}</td>                      
                      <td>${e.type}</td>
                      ${e.status == "Rusak" ? `<td style="background:#E72E2E;color:white">${e.status}</td>` : `<td style="background:#2FB5F2;color:white">${e.status}</td>`}                      
                      <td>${year}-${month}-${day}</td>
                      <td>${e.user_updated}</td>
                      </tr>`;
            }
          </script>
          <script>
            fetch('/assets/kapasitor-ac.json')
              .then(success => success.json())
              .then(result => {
                let cardKap = '';
                result.forEach(e => {
                  cardKap += `<tr>                 
                                <td>${e.pk}</td>
                                <td>${e.uf}</td>
                              </tr>`;
                });
                document.querySelector('.kapasitor-body').innerHTML = cardKap;
              });
          </script>
          <script>
            fetch('/assets/ukuran-pipa-ac.json')
              .then(success => success.json())
              .then(result => {
                let cardUmum = '';
                result.umum.forEach(p => {
                  cardUmum += `<tr>                 
                                <td>${p.pk}</td>
                                <td>${p.pipa}</td>
                              </tr>`;
                });
                document.querySelector('.ukuran-umum-body').innerHTML = cardUmum;

                let cardDaikin = '';
                result.daikin.forEach(d => {
                  cardDaikin += `<tr>                 
                                <td>${d.pk}</td>
                                <td>${d.pipa}</td>
                              </tr>`;
                });
                document.querySelector('.ukuran-daikin-body').innerHTML = cardDaikin;
              });
          </script>

         

@endsection       