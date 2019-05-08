
    $(document).ready(function(){
        $(".desplegable").hide();
        $(".mobile-menu").click(function(){
            $(".desplegable").toggle();
        })

        $(".desplegable-desktop").hide();
        $(".mobile-desktop").click(function(){
            $(".desplegable-desktop").toggle();
         })
        
    });