///@description Efeito piscante

// Alterna o aplha do jogador entre visível e pouco visível (1 e 0.3)
if(image_alpha == 1) image_alpha = 0.3; 
    
else if(image_alpha == 0.3) image_alpha = 1;

// Se estiver invencível, toca o alarme novamente para mudar, senão, define para 1 novamente
if(invencivel) alarm[1] = 4;
    
else image_alpha = 1;