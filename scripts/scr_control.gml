for(device=0;device <=4; device++){
    if (device_mouse_check_button_pressed(device,mb_left)){
        x0 = device_mouse_x(device);
        y0 = device_mouse_y(device);
        if !collision_circle(x0,y0,30,obj_up,false,false) && !collision_circle(x0,y0,30,obj_down,false,false){
            //He pulsado el resto de la pantalla
            with(obj_xoxe){
                event_user(0);
            }
        }
    }
    if (device_mouse_check_button(device,mb_left)){
        x0 = device_mouse_x(device);
        y0 = device_mouse_y(device);
        if collision_circle(x0,y0,30,obj_up,false,false){
            //Estoy pulsando flecha arriba
            with(obj_up){
                event_user(0);
            }
        }
        if collision_circle(x0,y0,30,obj_down,false,false){
            //Estoy pulsando flecha abajo
            with(obj_down){
                event_user(0);
            }
        }
    }
}
