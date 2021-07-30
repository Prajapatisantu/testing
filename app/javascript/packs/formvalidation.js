$(document).ready(function () { 
    questionvalidate();
    questionpaper_validate();
    $("form#studentForm").validate({
        rules:{
            'student[name]':{
               required: true,
               minlength: 4  
            }
        },
        messages: {
            'student[name]':{
                required: "Name is Required",
                minlength: "Enter at least 4 character"
            }
        }
        
    });

 }); 


 function questionvalidate(){
    $("form#question_form").validate({
        rules:{
            'question[question_paper_id]':{
               required: true
            },
            'question[title]':{
               required: true,
               minlength: 8  
            },
            'question[option1]':{
                required: true,
                minlength: 4  
             },
             'question[option2]':{
                required: true,
                minlength: 4  
             },
             'question[option3]':{
                required: true,
                minlength: 4  
             },
             'question[option4]':{
                required: true,
                minlength: 4  
             }
        },
        messages: {
            'question[title]':{
                required: "Title is Required",
                minlength: "Enter at least 8 character"
            },
            'question[option1]':{
                required: "Option is Required",
                minlength: "Enter at least 4 character"
            },
            'question[option2]':{
                required: "Option is Required",
                minlength: "Enter at least 4 character"
            },
            'question[option3]':{
                required: "Option is Required",
                minlength: "Enter at least 4 character"
            },
            'question[option4]':{
                required: "Option is Required",
                minlength: "Enter at least 4 character"
            }
        }

 });
}


function questionpaper_validate(){
    $("form#questionpaperForm").validate({
        rules:{
            'question_paper[name]':{
               required: true,
               minlength: 4  
            }
        },
        messages: {
            'question_paper[name]':{
                required: "Name is Required",
                minlength: "Enter at least 4 character"
            }
        }
        
    });

}
 