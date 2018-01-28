//DEPLACEMENT
//Déplaement à droite
if (keyboard_check(vk_right) && place_free(x+5,y))
{
    x+=5;    
    if !(keyboard_check(vk_space))
    {    
        sprite_index = dio_right;
        image_speed = 0.170;
    }
     if (keyboard_check(vk_control) && place_free(x+15,y) && global.dash == 1)
    {
        sprite_index = invisible;
        x = x + 15;
    }
}

// Déplacement à gauche
else if (keyboard_check(vk_left) && place_free(x-5,y))
{
    x-=5;
    if !(keyboard_check(vk_space))
    {
       sprite_index = dio_left;
       image_speed = 0.170;    
    }
        if (keyboard_check(vk_control) && place_free(x-15,y) && global.dash == 1)
    {
        sprite_index = invisible;    
        x = x - 15;
    }
}

// Aucun déplacement
else {
    if ((place_meeting(x, y+1, obj_ground) || place_meeting(x, y+1, obj_plate) || place_meeting(x, y+1, obj_plat3) || place_meeting(x, y+1, obj_plat2) || place_meeting(x, y+1, obj_plat1)) )
    {
        sprite_index = dio_idle;
        image_speed = 0.03;
    }
}


//GRAVITE & SAUT
if (place_free(x,y+1)){
    gravity = 1;
} else {
    gravity = 0;
    if (keyboard_check(vk_space) || (keyboard_check(vk_space) && keyboard_check(vk_left) || (keyboard_check(vk_space) && keyboard_check(vk_right))))
    {
    vspeed = -20;
        if(keyboard_check(vk_right) || keyboard_check(vk_space))
            sprite_index = dio_jump;
        if (keyboard_check(vk_left) || (keyboard_check(vk_left) && keyboard_check(vk_space)))
            sprite_index = dio_jump2;
    image_speed = 0.03;
    }
}

//MENU
//if (keyboard_check(vk_escape))
//{
  //  instance_destroy();
    //room_goto_next();
//}
