if not global.tutorial exit

draw_set_halign(fa_left)

if global.nextlevel = 1
{
draw_text(20, 704, "Aqui voce consegue comprar upgrades com os pontos permantentes adquiridos.")
draw_text(20, 744, "Se tiver os pontos, pise no botao e aperte F.")


draw_text(20, 784, "Cada inimigo que voce matar te dara pontos temporarios, inimigos mais fortes dao mais pontos.\nPontos temporarios se tornam em pontos permanentes ao terminar uma fase.")

draw_text(20, 824, "Entretanto, cada morte que voce teve naquela fase ira tirar 2 pontos de seus pontos temporarios.")

}

else if global.nextlevel = 2
draw_text(20, 704, "A quantidade de vezes que voce morreu importara no final,\n nao morra 15 vezes.")

else if global.nextlevel = 3
draw_text(20, 704, "Um inimigo novo foi adicionado,\nele so pode atacar voce enquanto voce estiver fazendo dash,\nvoce nao pode mata-lo.")

else if global.nextlevel = 4
draw_text(20, 704, "Mate pelo menos 28 inimigos,\nboa sorte.")

draw_set_halign(0)






