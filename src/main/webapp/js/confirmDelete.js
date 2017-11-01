$(document).ready(function(){
    $(".delete").click(function(e){
        var confirmDelete=confirm("Are you sure you want to delete this ad?"); //returns true or false
        if(!confirmDelete){
            e.preventDefault();
        }
    });
});