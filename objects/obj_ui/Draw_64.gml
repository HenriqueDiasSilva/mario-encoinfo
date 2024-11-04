draw_text(90,0, "Vida do Mario: " + string(obj_mario._vida))
draw_text(90,30, "Inimigos Mortos: " + string(obj_mario._inimigos_matados))

if (obj_mario._inimigos_matados == 10) {
	draw_text(700, 350, "VITORIA: PRESSIONE ESPACO PARA JOGAR NOVAMENTE")
}