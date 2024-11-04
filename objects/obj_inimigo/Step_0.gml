var _jogador_x = obj_mario.x;

if (x < _jogador_x) {
    x += _velocidade;
} else if (x > _jogador_x) {
    x -= _velocidade;
}

