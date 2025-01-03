@extends('admin/adminlayout')

@section('container')

<div class="row">
              
              </div>
              <div class="row">
                {{-- <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-9">
                          <div class="d-flex align-items-center align-self-start">
                            <h3 class="mb-0">Amount : {{  $pending_order }}</h3>
                            <p class="text-success ms-2 mb-0 font-weight-medium"></p>
                          </div>
                        </div>
                        <div class="col-3">
                          <div class="icon icon-box-success ">
                            <span class="mdi mdi-arrow-top-right icon-item"></span>
                          </div>
                        </div>
                      </div>
                      <h6 class="text-muted font-weight-normal">Pending Order</h6>
                    </div>
                  </div>
                </div> --}}
                <div class="col-xl-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-9">
                          <div class="d-flex align-items-center align-self-start">
                            <h3 class="mb-0">Amount : {{ $processing_order }}</h3>
                            <p class="text-success ms-2 mb-0 font-weight-medium"></p>
                          </div>
                        </div>
                        <div class="col-3">
                          <div class="icon icon-box-success">
                            <span class="mdi mdi-arrow-top-right icon-item"></span>
                          </div>
                        </div>
                      </div>
                      <h6 class="text-muted font-weight-normal">Processing Order</h6>
                    </div>
                  </div>
                </div>
                {{-- <div class="col-xl-3 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-9">
                          <div class="d-flex align-items-center align-self-start">
                            <h3 class="mb-0">Amount : {{  $cancel_order }}</h3>
                            <p class="text-danger ms-2 mb-0 font-weight-medium"></p>
                          </div>
                        </div>
                        <div class="col-3">
                          <div class="icon icon-box-danger">
                            <span class="mdi mdi-arrow-bottom-left icon-item"></span>
                          </div>
                        </div>
                      </div>
                      <h6 class="text-muted font-weight-normal">Cancel Order</h6>
                    </div>
                  </div>
                </div> --}}
                <div class="col-xl-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-9">
                          <div class="d-flex align-items-center align-self-start">
                            <h3 class="mb-0">Amount : {{    $complete_order }}</h3>
                            <p class="text-success ms-2 mb-0 font-weight-medium"></p>
                          </div>
                        </div>
                        <div class="col-3">
                          <div class="icon icon-box-success ">
                            <span class="mdi mdi-arrow-top-right icon-item"></span>
                          </div>
                        </div>
                      </div>
                      <h6 class="text-muted font-weight-normal">Complete Order</h6>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-5 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <h4 class="card-title">Transaction History</h4>


                      <div id="chartContainer" style="height: 170px; width: 100%; background-color: transparent !important;"></div>
                      <script src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script>

                      <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                        <div class="text-md-center text-xl-left">
                          <h6 class="mb-1">penjualan bulan {{ $currentMonthName }}</h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                          <h6 class="font-weight-bold mb-0">Rp. {{   $salesThisMonth }}</h6>
                        </div>
                      </div>
                      <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                        <div class="text-md-center text-xl-left">
                          <h6 class="mb-1">penjualan bulan {{ $lastMonthName }}</h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                          <h6 class="font-weight-bold mb-0">Rp. {{   $salesLastMonth }}</h6>
                        </div>
                      </div>
                      <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                        <div class="text-md-center text-xl-left">
                          <h6 class="mb-1">penjualan bulan {{ $twoMonthsAgoName }}</h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                          <h6 class="font-weight-bold mb-0">Rp. {{   $salesTwoMonthsAgo }}</h6>
                        </div>
                      </div>

                      <div class="bg-gray-dark d-flex d-md-block d-xl-flex flex-row py-3 px-4 px-md-3 px-xl-4 rounded mt-3">
                        <div class="text-md-center text-xl-left">
                          <h6 class="mb-1" >total</h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="align-self-center flex-grow text-right text-md-center text-xl-right py-md-2 py-xl-0">
                          <h6 class="font-weight-bold mb-0">Rp. {{   $salesThisMonth+$salesLastMonth+$salesTwoMonthsAgo   }}</h6>
                        </div>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="col-md-7 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body">
                      <div class="d-flex flex-row justify-content-between">
                        <h4 class="card-title mb-1">Best Rating</h4>
                        <p class="text-muted mb-1">Voters</p>
                      </div>
                      <div class="row">
                        <div class="col-12">
                          <div class="preview-list">


                          @php


                              $i=1;

                          @endphp
                          
                          @foreach($per_rate as $prod)

                          @if($i>6)


                          @break;

                          @endif
                          @php

                          $index_search = array_search($prod, $copy_product);




                          $product_get=DB::table('products')->where('id',$index_search)->first();




                          $copy_product[$index_search]=NULL;


                          $voter=DB::table('rates')->where('product_id',$index_search)->count();


                          //$per_rate=number_format($per_rate, 1);


                          // $whole = floor($per_rate);      // 1
                          //$fraction = $per_rate - $whole


                          $i++;



                          @endphp
                            <div class="preview-item border-bottom">
                              <div class="preview-thumbnail">
                                <div class="preview-icon bg-primary">

                                <img class="img-xs" src="{{asset('assets/images/'.$product_get->image)}}" alt="">

                                </div>
                              </div>
                      
                      



                              

                              <div class="preview-item-content d-sm-flex flex-grow">
                                <div class="flex-grow">
                                  <h6 class="preview-subject">{{  $product_get->name }}</h6>
                                  <p class="text-muted mb-0">Rating : {{  $prod }}</p>
                                </div>
                                <div class="me-auto text-sm-right pt-2 pt-sm-0">
                                  <p class="text-muted">{{  $voter }}</p>
                                
                                </div>
                              </div>
                            </div>
                            @endforeach
                           
                            
                         
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-6 grid-margin">
                  <div class="card">
                    <div class="card-body">
                      <h5>Total Customer</h5>
                      <div class="row">
                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                          <div class="d-flex d-sm-block d-md-flex align-items-center">
                            <h2 class="mb-0">{{ $customer }}</h2>
                            <p class="text-success ms-2 mb-0 font-weight-medium"></p>
                          </div>
                          <h6 class="text-muted font-weight-normal"></h6>
                        </div>
                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                          <i class="icon-lg mdi mdi-codepen text-primary ms-auto"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                {{-- <div class="col-sm-4 grid-margin">
                  <div class="card">
                    <div class="card-body">
                      <h5>Total Delivery Boy</h5>
                      <div class="row">
                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                          <div class="d-flex d-sm-block d-md-flex align-items-center">
                            <h2 class="mb-0">{{      $delivery_boy }}</h2>
                            <p class="text-success ms-2 mb-0 font-weight-medium"></p>
                          </div>
                          <h6 class="text-muted font-weight-normal"></h6>
                        </div>
                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                          <i class="icon-lg mdi mdi-wallet-travel text-danger ms-auto"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div> --}}
                <div class="col-sm-6 grid-margin">
                  <div class="card">
                    <div class="card-body">
                      <h5>Total Admin</h5>
                      <div class="row">
                        <div class="col-8 col-sm-12 col-xl-8 my-auto">
                          <div class="d-flex d-sm-block d-md-flex align-items-center">
                            <h2 class="mb-0">{{    $admin     }}</h2>
                            <p class="text-danger ms-2 mb-0 font-weight-medium"></p>
                          </div>
                          <h6 class="text-muted font-weight-normal"></h6>
                        </div>
                        <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                          <i class="icon-lg mdi mdi-monitor text-success ms-auto"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              
@endsection()


<script type="text/javascript">
  window.onload = function () {
      // Mendapatkan nilai penjualan untuk bulan ini, bulan lalu, dan dua bulan lalu
      var sales_this_month = "<?php echo $salesThisMonth; ?>";
      var sales_last_month = "<?php echo $salesLastMonth; ?>";
      var sales_two_months_ago = "<?php echo $salesTwoMonthsAgo; ?>";
  
      console.log(sales_this_month);
      console.log(sales_last_month);
      console.log(sales_two_months_ago);
  
      // Membuat chart dengan data yang telah disesuaikan
      var chart = new CanvasJS.Chart("chartContainer", {
          theme: "dark2", // "light2", "dark1", "dark2"
          animationEnabled: true, // Mengaktifkan animasi
          title: {
              text: ""
          },
          data: [
              {
                  type: "column", // Tipe chart kolom
                  dataPoints: [
                    { label: "<?php echo $currentMonthName; ?>", y: +sales_this_month },
                    { label: "<?php echo $lastMonthName; ?>", y: +sales_last_month },
                    { label: "<?php echo $twoMonthsAgoName; ?>", y: +sales_two_months_ago }
                  ]
              }
          ]
      });
  
      chart.render();
  }
</script>



<style>

canvas {
    background-color: ;
    color: ;

}​



</style>