var oldTimer = null;

function slideSwitch(){
    
    
 var $classeAtiva = $ ('#slideshow img.active');   
    
    
    if ($classeAtiva.length == 0)
        $classeAtiva = $ ('#slideshow img:last');
    
    var $next = $classeAtiva.next().length ? $classeAtiva.next(): $('#slideshow img:first');
    var $sibs = $classeAtiva.siblings();
    
    $classeAtiva.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity:1.0}, 1000, function() {
        $classeAtiva.removeClass('active last-active');
        });
}

function setTimer (){
    oldTimer = setInterval ('slideSwitch()', 1000);
}

function stopTimer(){
   clearInterval (oldTimer);
   oldTimer = null;
}
    
$(document).ready(function(){
    setTimer();
});    


function validarSenha() {
senha1 = document.f1.senha1.value
senha2 = document.f1.senha2.value

if (senha1 == senha2)
alert("SENHAS IGUAIS")
else
alert("SENHAS DIFERENTES")
}

