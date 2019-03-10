{{-- Login Modal --}}
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title" id="exampleModalLongTitle">Login Form</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           {{-- <form action="../logindata.php" method="post"> --}}
               {{-- {!! Form::open(['method'=>'POST', 'action'=>'LoginController@store','files'=>true]) !!} --}}
             <div class="form-group">
               {{-- <label for="exampleInputEmail" class="col-form-label">Email Id:</label>
               <input type="email" class="form-control" name="email" id="exampleInputEmail" placeholder="Enter Email ID" required/> --}}
               {!! Form::label('email', 'Enter Email ID :') !!}
               {!! Form::text('email', null, ['class' => 'form-control']) !!}
             </div>
             <div class="form-group">
               {{-- <label for="exampleInputPassword" class="col-form-label">Password:</label>
             <input type="password" class="form-control" name="password" id="exampleInputPassword" placeholder="Enter Password" required/> --}}
             {!! Form::label('password', 'Enter Password :') !!}
             {!! Form::text('password', null, ['class' => 'form-control']) !!}
             </div>

            {{-- <input type="hidden" id="productid" name="productid" value=""/> --}}

             <div class="modal-footer" style='width:80px;margin:0 50%;position:relative;border-top: 0px;'>
             {{-- <button type="login" name="login" style="background-color:#ff084e;color:white;" class="btn">Login</button> --}}
               {!! Form::submit('Login', ['class' => 'btn btn-primary']) !!}
             <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
               {!! Form::close('Close', ['class' => 'btn btn-primary']) !!}
             </div>
           </form>
         </div>
         <center><h6 style="color:black;">New Customer? <a href="" data-toggle="modal" data-target="#exampleModalLong1" data-dismiss="modal" style="color:#ff084e;">Sign-up</h6></a></center>
         <br>
       </div>
     </div>
   </div>


   {{-- Register Modal --}}
<div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle1" aria-hidden="true">
<div class="modal-dialog" role="document">
  <div class="modal-content">
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLongTitle1">Signup Form</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      {{-- <form action="../signupdata.php" method="post"> --}}
         {{-- {!! Form::open(['method'=>'POST', 'action'=>'LoginController@store','files'=>true]) !!} --}}
        <div class="form-group">
          {{-- <label for="exampleInputName" class="col-form-label">Name:</label>
          <input type="text" class="form-control" name="name" id="exampleInputName" placeholder="Enter Name" pattern="[a-zA-Z ]{2,}" title="Only Characters are Allowed" required /> --}}
          {!! Form::label('name', 'Enter Name :') !!}
          {!! Form::text('name', null, ['class' => 'form-control']) !!}
        </div>
        <div class="form-group">
          {{-- <label for="exampleInputEmail" class="col-form-label">Email Id:</label>
          <input type="email" class="form-control" name="email" id="exampleInputEmail" placeholder="Enter Email ID" required /> --}}
          {!! Form::label('email', 'Enter Email ID :') !!}
          {!! Form::text('email', null, ['class' => 'form-control']) !!}
        </div>
        <div class="form-group">
          {{-- <label for="exampleInputNumber" class="col-form-label">Contact Number:</label>
          <input type="text" class="form-control" name="number" id="exampleInputNumber" placeholder="Enter contact number " pattern="[789][0-9]{9}" title="Characters are Not Allowed and Only 10 digit Numbers are allowed" required /> --}}
          {!! Form::label('email', 'Enter Phone Number :') !!}
          {!! Form::number('email', null, ['class' => 'form-control']) !!}
        </div>
        <div class="form-group">
          {{-- <label for="exampleInputPassword" class="col-form-label">Password:</label>
        <input type="password" class="form-control" name="password" id="exampleInputPassword" placeholder="Enter Password" required /> --}}
        {!! Form::label('password', 'Enter Password :') !!}
        {!! Form::text('password', null, ['class' => 'form-control']) !!}
        </div>
        <div class="modal-footer" style='width:80px;margin:0 50%;position:relative;border-top: 0px;'>
          <button type="submit" name="submit" style="background-color:#ff084e;color:white;" class="btn">Signup</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </form>
    </div>

    <center><h6 style="color:black;">Already Register? <a href="" data-toggle="modal" data-target="#exampleModal" data-dismiss="modal" style="color:#ff084e;">Login</h6></a></center>
    <br>
  </div>
</div>
</div>
