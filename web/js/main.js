
    $(document).ready(function(){
        $(".desplegable").hide();
        $(".mobile-menu").click(function(){
            $(".desplegable").toggle("medium");
        })

        $(".desplegable-desktop").hide();
        $(".mobile-desktop").click(function(){
            $(".desplegable-desktop").toggle();
         })
        
    });