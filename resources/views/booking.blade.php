<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Booking</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/16a0033af0.js" crossorigin="anonymous"></script>

        <!-- Styles -->
        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }
            .top-m-50{margin-top: 50px;}
            .capital-text{text-transform: uppercase;}
        </style>
    </head>
    <body class="antialiased">
        <div class="container text-center">
            <h5 class="top-m-50">Book Your Ticket Now</h5>
            <hr/>
            <div class="alert alert-success" role="alert" id="successMsg" style="display: none" >
              Thank you for booking! 
            </div>
            <div class="alert alert-danger print-error-msg" style="display:none">
                <span></span>
            </div>
            <form class="row g-3 justify-content-center" id="SubmitForm">
              <div class="col-md-3">
                <label for="seatNumber" class="form-label">Enter no of Seat</label><br/>
                <small>You can book max 7 seat at a time.</small>
                <input type="number" max="7" min="1" class="form-control" id="seatNumber" name="seat" required>
                <span class="text-danger" id="seatErrorMsg"></span> 
              </div>
              <div class="col-md-3" style="margin-top: 69px;">
                <button class="btn btn-success" type="submit">Book Now</button>
              </div>
            </form>
            <div class="row justify-content-center top-m-50">
                <div class="col-md-6">
                    <a class="btn btn-secondary float-right text-white" href="{{url('/')}}">Back to check availability of seat</a>
                </div>
            </div>
            <div class="row justify-content-center top-m-50" id="details" style="display: none" >
                <div class="col-md-6" style="border: 1px solid;">
                    <p><strong class="capital-text">Booking Details</strong></p>
                    <div id="data">

                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

        <script type="text/javascript">

        $('#SubmitForm').on('submit',function(e){
            e.preventDefault();

            let seatNumber = $('#seatNumber').val();
            // console.log(seatNumber);
            // return false;
            $.ajax({
              url: "/submit-form",
              type:"POST",
              data:{
                "_token": "{{ csrf_token() }}",
                qty:seatNumber,
              },
                  success:function(response){

                    if($.isEmptyObject(response.error)){
                        $('#successMsg').show();
                        $("#details").find("#data").empty();
                        $("#details").find("#data").append(
                        `<p>Booking Id: <span>${response.data.bookingId}</span></p>
                        <p>Booked Seat No: <span>${response.data.seats}</span></p>`
                        );
                        $('#details').show();
                        $('#seatNumber').val('');
                        setTimeout(function() {
                            $('#successMsg').hide();
                        },5000);

                        // setTimeout(function() {
                        //     window.location.reload(history.back());
                        // },10000);
                        // location.reload();
                    }else{
                        $(".print-error-msg").find("span").empty()
                        $(".print-error-msg").find("span").append('<p>'+response.error+'</p>');
                        $(".print-error-msg").css('display','block');
                        setTimeout(function() {
                            $('.print-error-msg').hide();
                        },5000);
                    }
                  },
              });
            });
          </script>
    </body>
</html>
