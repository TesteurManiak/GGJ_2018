//Variable

//DEPLACEMENT
//Déplaement à droite
if (keyboard_check(vk_right) && place_free(x+5,y)){
    x+=5;
    sprite_index = dio_right;
    image_speed = 0.170;
}

// Déplacement à gauche
else if (keyboard_check(vk_left) && place_free(x-5,y)){
    x-=5;
    sprite_index = dio_left;
    image_speed = 0.170;    
}

// Aucun déplacement
else {
    if ((place_meeting(x, y+1, obj_ground) || place_meeting(x, y+1, obj_plate)))
        sprite_index = dio_idle;
    else if (keyboard_check(vk_right) || keyboard_check(vk_right) || (keyboard_check(vk_right) && keyboard_check(vk_space)))
        sprite_index = dio_jump;
    else if (keyboard_check(vk_left) || keyboard_check(vk_left) || (keyboard_check(vk_left) && keyboard_check(vk_space)))
        sprite_index = dio_jump2;
    image_speed = 0.03;
}


//GRAVITE & SAUT
if (place_free(x,y+1)){
    gravity = 1;
    if(keyboard_check(vk_right))
        sprite_index = dio_jump;
    if (keyboard_check(vk_left))
    sprite_index = dio_jump2;
    image_speed = 0.03;
} else {
    gravity = 0;
    if (keyboard_check(vk_space))
    {
    vspeed = -15;
        if(keyboard_check(vk_right) || keyboard_check(vk_space))
            sprite_index = dio_jump;
        if (keyboard_check(vk_left) || (keyboard_check(vk_left) && keyboard_check(vk_space)))
            sprite_index = dio_jump2;
    }
    image_speed = 0.03;
}
