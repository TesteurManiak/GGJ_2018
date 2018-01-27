//Variable
sprite_speed = .4;

//DEPLACEMENT
//Déplaement à droite
if (keyboard_check(vk_right) && place_free(x+5,y)){
    x+=5;
    sprite_index = santa_right;
    image_speed = sprite_speed;
}

// Déplacement à gauche
else if (keyboard_check(vk_left) && place_free(x-5,y)){
    x-=5;
    sprite_index = santa_idle;
    image_speed = sprite_speed;
}

// Aucun déplacement
else {
    sprite_index = santa_idle;
    image_speed = sprite_speed;
}


//GRAVITE & SAUT
if (place_free(x,y+1)){
    gravity = 1;
} else {
    gravity = 0;
    if (keyboard_check(vk_space)){
    vspeed = -15;
    sprite_index = santa_jump
    image_speed = sprite_speed;
    }
}
