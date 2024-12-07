@extends('layout', ['title'=> 'Home'])

@section('page-content')
<div>
    <br>
    <br>
    <br>
    <br>
    <center>


    <h1>Pesanan Saya</h1>

    <br>
    <br>


    </center>
<table id="cart" class="table table-hover table-condensed container">
    <thead>
        <tr>
            <th style="width:10%">Tanggal</th>
            <th style="width:10%">Invoice</th>
            <th style="width:50%">Produk</th>
            {{-- <th style="width:20%">Payment Method</th> --}}
            <th style="text-align:center;width:10%">Harga</th>
            <th style="width:8%">Jumlah</th>
            <th style="width:22%" class="text-center">Subtotal</th>

        </tr>
    </thead>
    <tbody>
        @php $total = 0 @endphp
        @foreach($carts as $product)
            @php $total += $product['price'] * $product['quantity'] @endphp
            <tr>
                <td>{{$product->purchase_date}}</td>
                <td>{{$product->invoice_no}}</td>
                <td>{{$product->name}}</td>
                {{-- <td>{{$product->pay_method}}</td> --}}
                <td style="text-align:center">Rp.{{$product->price}}</td>
                <td style="text-align:center">{{$product->quantity}}</td>
                <td style="text-align:center">Rp.{{$product->subtotal}}</td>

            </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
        @php


        $total = $total_price;

        Session::put('total',$total_price);

        @endphp
            <td colspan="7" class="text-right"><h3><strong>Total Rp.{{ $total_price }}</strong></h3></td>
        </tr>
        <tr>
            <td colspan="7" class="text-right">
                <a href="{{ url('/menu') }}" class="btn btn-warning"><i class="fa fa-angle-left"></i> Lanjutkan Belanja</a>

            </td>
        </tr>
    </tfoot>
</table>
</div>
@endsection
