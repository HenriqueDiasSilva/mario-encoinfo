if (keyboard_check(ord("A"))) {
    x -= _velocidade;
    sprite_index = spr_mario_correndo;
    image_xscale = -1;
} else if (keyboard_check(ord("D"))) {
    x += _velocidade;
    sprite_index = spr_mario_correndo;
    image_xscale = 1;
} else {
    sprite_index = spr_mario_parado;
}

if (_vida == 0) {
    _tempo_morte--;
    sprite_index = spr_mario_morte;

    if (_tempo_morte > 75) {
        y -= 2;
    } else {
        y += 5;
    }

    if (_tempo_morte <= 0) {
        room_restart();
    }
}

if (keyboard_check(ord("E")) && _espera_municao <= 0) {
	var _moeda = instance_create_layer(x, y, "Instances", obj_moeda);

	if (image_xscale > 0) {
		_moeda.direction = 0;
	} else {
		_moeda.direction = 180;
	}

	_moeda.speed = 5;
	_espera_municao = 20;
}

_espera_municao--;