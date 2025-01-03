@extends('admin/adminlayout')

@section('container')


@foreach($admin as $user)

<div class="col-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Edit Admin</h4>
                    <br>

                    @if(Session::has('wrong'))
              
                        <div class="alert">
                      <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                      <strong>Opps !</strong> {{Session::get('wrong')}}
                    </div>
                    <br>
                        @endif
                        @if(Session::has('success'))
                  
                        <div class="success">
                      <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
                      <strong>Congrats !</strong> {{Session::get('success')}}
                    </div>
                        <br>
                        @endif

                    <form class="forms-sample" action="{{ asset('/admin-edit-process/'.$user->id) }}" method="post" enctype="multipart/form-data">

                       @csrf

                      <div class="form-group">
                        <label for="exampleInputName1">Name</label>
                        <input type="text" name="name" value="{{ $user->name }}" class="form-control" id="exampleInputName1">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Email</label>
                        <input type="text" name="email" value="{{ $user->email }}" class="form-control" id="exampleInputName1">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName1">Phone</label>
                        <input type="number" name="phone" value="{{ $user->phone }}" class="form-control" id="exampleInputName1">
                      </div>

                

                      <div class="form-group d-none">
                        <label for="exampleSelectGender">Type</label>
                        <select class="form-control" name="type" id="exampleSelectGender">
                          <option value="1" @php if($user->usertype=="1"){ echo"selected"; } @endphp>Super Admin</option>
                          <option value="3"  @php if($user->usertype=="3"){ echo"selected"; } @endphp>Sub Admin</option>
                        </select>
                      </div>


                      <div class="form-group">
                        <label for="exampleInputName1">Salary</label>
                        <input type="number" value="{{ $user->salary }}" name="salary" class="form-control" id="exampleInputName1">
                      </div>


                  
                      <div class="form-group">
                        <label for="exampleFormControlFile1">Image</label>
                        <input type="file" name="image" class="form-control-file" id="exampleFormControlFile1">
                      </div>
                  
                    
                      <button type="submit" class="btn btn-primary me-2">Update</button>
                      <a href="/admin/show" class="btn btn-dark">Cancel</a>
                    </form>
                  </div>
                </div>

            </div>


@endforeach

@endsection()




<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
}

.success {
  padding: 20px;
  background-color: #4BB543 ;
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
</style>