$(document).ready(function () { 
    $("#studentForm").validate({
        rules:{
            name:{
              required: true  
            }
        },
        submitHandler: function (form) { 
            alert('valid form submitted'); 
            return false; 
        }
    });

 }); 

//  function validation(){
//       var name = $("#studentname").val();
//       if(name.length > 1 && name.length < 15)
//       {
//       }else{
//         $("#studentname").after("<p>please enter name</p>");
//       }
//  }