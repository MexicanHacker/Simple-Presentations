$(document).keydown(function(e){
    arrow = {left: 37, right: 39 };
    if (e.keyCode == arrow.left) {
         window.location = $('#previous').attr('value');;
    }
    else if (e.keyCode == arrow.right){
       window.location = $('#next').attr('value');
    }
});
