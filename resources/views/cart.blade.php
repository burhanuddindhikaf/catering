@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div class="asdasd">
    <br>
    @if(Session::has('wrong'))
    <div class="alert">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <strong>Oops!</strong> {{ Session::get('wrong') }}
    </div>
    @endif
    @if(Session::has('success'))
    <div class="success">
        <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
        <strong>Congrats!</strong> {{ Session::get('success') }}
    </div>
    @endif

    <table id="cart" class="table table-hover table-condensed container">
        <thead>
            <tr>
                <th style="width:50%">Menu</th>
                <th style="text-align:center;width:10%">Harga</th>
                <th style="width:8%">Jumlah</th>
                <th style="width:22%" class="text-center">Subtotal</th>
                <th style="width:10%"></th>
            </tr>
        </thead>
        <tbody>
            @php $total = 0 @endphp
            @foreach($carts as $product)
                @php $total += $product['price'] * $product['quantity'] @endphp
                <tr>
                    <td>{{ $product->name }}</td>
                    <td style="text-align:center">Rp.{{ number_format($product->price, 0, ',', '.') }}</td>
                    <td style="text-align:center">{{ $product->quantity }}</td>
                    <td style="text-align:center">Rp.{{ number_format($product['price'] * $product['quantity'], 0, ',', '.') }}</td>
                    <td>
                        <!-- Tabel untuk Tombol Update -->
                        <form method="post" action="{{ route('cart.update', $product) }}" class="update-form">
                            @csrf
                            @method('PUT')
                            <input type="number" name="quantity" value="{{ $product->quantity }}" min="1" 
                                   class="form-control text-center quantity-input d-none" 
                                   style="width:70px; display:inline-block;" disabled>
                            
                            <div class="button-group" style="display: flex; gap: 10px;">
                                <!-- Tombol Update -->
                                <button type="button" class="btn btn-warning btn-sm edit-btn">
                                    <i class="fa fa-pencil"></i> Update
                                </button>
                        
                                <!-- Tombol Confirm -->
                                <button type="submit" class="btn btn-success btn-sm confirm-btn d-none">
                                    <i class="fa fa-check"></i>
                                </button>
                        
                                <!-- Tombol Remove -->
                                <form method="post" action="{{ route('cart.destroy', $product) }}" onsubmit="return confirm('Anda Yakin?')">
                                    @csrf
                                    <button class="btn btn-danger btn-sm remove-from-cart"><i class="fa fa-trash"></i></button>
                                </form>
                            </div>
                        </form>
                        
                    </td>
                </tr>
            @endforeach
        </tbody>
        <tfoot>
            <tr>
                <td colspan="5" class="text-right">
                    <h5><strong>Total Rp.{{ number_format($total, 0, ',', '.') }}</strong></h5>
                </td>
            </tr>
            <tr>
                <td colspan="5" class="text-right">
                    <form style="display:inline" method="post" action="{{ route('cart.checkout', $total) }}">
                        @csrf
                        @if($total == 0)
                        <button class="btn btn-success" disabled>Checkout</button>
                        @else
                        <button class="btn btn-success">Checkout</button>
                        @endif
                    </form>
                </td>
            </tr>
        </tfoot>
    </table>
</div>
@endsection

<style>
.alert {
    padding: 20px;
    background-color: #f44336;
    color: white;
}

.success {
    padding: 20px;
    background-color: #4BB543;
    color: white;
}

.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

.closebtn:hover {
    color: black;
}

.asdasd{
    margin-top: 90px
}
</style>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Seleksi semua tombol Update
        const editButtons = document.querySelectorAll('.edit-btn');

        // Iterasi pada setiap tombol
        editButtons.forEach(button => {
            button.addEventListener('click', function () {
                // Temukan elemen form terdekat
                const form = button.closest('.update-form');
                if (!form) {
                    console.error('Form tidak ditemukan untuk tombol ini.');
                    return;
                }

                // Seleksi elemen input quantity dan tombol Confirm
                const input = form.querySelector('.quantity-input');
                const confirmButton = form.querySelector('.confirm-btn');

                if (input && confirmButton) {
                    // Aktifkan input untuk di-edit
                    input.removeAttribute('disabled');
                    input.classList.remove('d-none');

                    // Sembunyikan tombol Update
                    button.classList.add('d-none');

                    // Tampilkan tombol Confirm
                    confirmButton.classList.remove('d-none');
                } else {
                    console.error('Input atau tombol Confirm tidak ditemukan.');
                }
            });
        });
    });
</script>

