
    $(document).ready(function(){
        
        /*Menu mobile*/
            /*Opcion 1*/
        /*$(".desplegable").hide();
        $(".mobile-menu").click(function(){
            $(".desplegable").toggle();
        });*/
        
            /*Opcion 2*/
        /*$(".desplegable").hide();
        $(".mobile-menu").click(function(){
            $(".desplegable").toggle();
         })
         $(".desplegable").mouseout(function(){
            $(".desplegable").toggle();
         })*/
        
            /*Opcion 3*/
        /*$(".desplegable").hide();
        $(".mobile-menu").click(function(){
            $(".desplegable").toggle();
         });
        $(".box").click(function(){
            $(".desplegable").toggle();
        });*/
         
        /***********************************/
        
        function myFunction(x) {
            var menu = $(".desplegable");
            if (x.matches) {
                menu.hide();
                $(".mobile-menu").click(function(){
                    menu.toggle();
                 });
                $(".box").click(function(){
                    menu.hide();
                });
            } else {
                menu.hide();
            }
        }
        var x = window.matchMedia("(max-width: 640px)");
        myFunction(x);
        x.addListener(myFunction);

        /**********************************/
        /*Menu desktop*/
        /*$(".desplegable-desktop").hide();
        $(".mobile-desktop").click(function(){
            $(".desplegable-desktop").toggle();
         })*/
         
         function funciondesktop(y) {
            var mimenu = $(".desplegable-desktop");
            if (y.matches) {
                mimenu.hide();
                $(".mobile-desktop").click(function(){
                    mimenu.toggle();
                 });
                $(".box").click(function(){
                    mimenu.hide();
                });
            } else {
                mimenu.hide();
            }
        }
        var y = window.matchMedia("(max-width: 2000px)");
        funciondesktop(y);
        y.addListener(funciondesktop);
        
    });