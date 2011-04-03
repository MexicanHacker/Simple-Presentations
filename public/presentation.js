$(document).keydown(function(e){
    arrow = {left: 37, right: 39 };
    if (e.keyCode == arrow.left) { 
       alert( "left pressed" );
    }
    else if (e.keyCode == arrow.right){
        alert( "right pressed" );
    }
});
