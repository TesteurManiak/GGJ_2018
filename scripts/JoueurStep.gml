//Variable
image_speed = 0.2;

//DEPLACEMENT
//Déplaement à droite
if (keyboard_check(vk_right) && place_free(x+5,y)){
    x+=5;
    sprite_index = dio_right;
}

// Déplacement à gauche
else if (keyboard_check(vk_left) && place_free(x-5,y)){
    x-=5;
    sprite_index = dio_left;
}

// Aucun déplacement
else {
    sprite_index = dio_idle;
}


//GRAVITE & SAUT
if (place_free(x,y+1)){
    gravity = 1;
} else {
    gravity = 0;
    if (keyboard_check(vk_space)){
    vspeed = -15;
    sprite_index = dio_jump;
    }
}
