@extends('layouts.dashboard')
@section('title', 'Tambah Data Mobil')

@section('content')

<div class="page-heading">
    <h3>Tambah Data Mobil</h3>
</div>
<div class="page-content">
    <section class="row">
        <div class="col-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <a href="{{ route('cars.index') }}">
                        <button class="btn btn-danger rounded-pill">Kembali</button>
                    </a>
                </div>
                <div class="card-body">
                    
                    <form class="form" action="{{ route('cars.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        <div class="row">
                            
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="merk">Merk Mobil</label>
                                    <input type="text" id="merk_mobil" class="form-control" placeholder="Masukkan Merk Mobil" name="merk_mobil" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="nama_mobil">Nama Mobil</label>
                                    <input type="text" id="nama_mobil" class="form-control" placeholder="Masukkan Nama Mobil" name="nama_mobil" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="no_polisi">No Polisi</label>
                                    <input type="text" id="no_polisi" class="form-control" placeholder="Masukkan No Polisi" name="no_polisi" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="harga_sewa">Harga Sewa</label>
                                    <input type="text" id="harga_sewa" class="form-control" placeholder="Masukkan Harga Sewa" name="harga_sewa" required>
                                </div>
                            </div>
                            <!-- <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="tahun_pembuatan">Tahun Pembuatan Mobil</label>
                                    <input type="text" id="tahun_pembuatan" class="form-control" placeholder="Masukkan Tahun Pembuatan Mobil" name="tahun_pembuatan" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="bbm">Bbm</label>
                                    <input type="text" id="bbm" class="form-control" placeholder="Masukkan Bahan Bakar" name="bbm" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="tenaga">Tenaga Mobil</label>
                                    <input type="text" id="tenaga" class="form-control" placeholder="Masukkan Tenaga Mobil" name="tenaga" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="warna_mobil">Warna Mobil</label>
                                    <input type="text" id="warna_mobil" class="form-control" placeholder="Masukkan Warna Mobil" name="warna_mobil" required>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="kapasitas">Kapasitas Penumpang</label>
                                    <input type="text" id="kapasitas" class="form-control" placeholder="Masukkan Nama Mobil" name="kapasitas" required>
                                </div>
                            </div>

                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label for="fasilitas">Fasilitas Mobil</label>
                                    <textarea class="form-control" id="fasilitas" name="fasilitas" rows="3" required></textarea>
                                </div>
                            </div>
                            <div class="col-md-12 col-12">
                                <div class="form-group">
                                    <label for="keterangan">Keterangan Mobil</label>
                                    <textarea class="form-control" id="keterangan" name="keterangan" rows="3" required></textarea>
                                </div>
                            </div>

                            <div class="col-md-6" id="previewMobil">
                                Preview Gambar Mobil
                                <img class="card-img-top img-fluid" id="previewGambar" src="{{ asset('assets/images/samples/origami.jpg') }}" alt="Card image cap" style="height: 20rem" />
                            </div>

                            <div class="col-md-12 col-12">
                                <div class="form-group">
                                    <label for="gambar_mobil">Gambar Mobil</label>
                                    <input class="form-control" type="file" id="gambar_mobil" name="gambar_mobil" onchange="img(this)">
                                </div>
                            </div> -->

                            <div class="col-12 d-flex justify-content-end">
                                <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                                <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </section>
</div>

@endsection

@push('after-script')

<script>
    $('#previewMobil').hide()

    // Preview Gambar Mobil
    function img(input){
        $('#previewGambar')[0].src = (window.URL ? URL : webkitURL).createObjectURL(input.files[0]);
        $('#previewMobil').show()
    }

</script>

@endpush