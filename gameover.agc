// File: gameover.agc
// Created: 22-03-13

global GameOverImage as integer

function GameOver()
	
	ResetaElementosBonus()
	
	JogoEmCurso = FALSE
	
	SetSpriteVisible(Jogador.spr, FALSE)
	
	LimpaInimigos()
	LimpaTirosInimigos()
	MataTiroJogador()
	ZeraPontuacao()
	LimpaExplosoes()
	
	SetTextVisible(TextoVidas, FALSE)
	SetTextVisible(TextoPontuacao, FALSE)
	SetTextVisible(textoAltaPontuacao, FALSE)
	
	SetVirtualButtonVisible(btnAtirar, FALSE) 
	SetVirtualButtonActive(btnAtirar, FALSE)		
	SetVirtualButtonVisible(btnPause, FALSE) 
	SetVirtualButtonActive(btnPause, FALSE)
	SetVirtualButtonVisible(btnResume, FALSE) 
	SetVirtualButtonActive(btnResume, FALSE)	
	SetVirtualButtonVisible(btnDireita, FALSE) 
	SetVirtualButtonActive(btnDireita, FALSE)
	SetVirtualButtonVisible(btnEsquerda, FALSE) 
	SetVirtualButtonActive(btnEsquerda, FALSE)
	
	
	SetSpriteImage(BgMenu,LoadImage("gameover/bggameover.png"))
	
	GameOverImage = CreateSprite(LoadImage("gameover/gameover.png")) 
	SetSpriteSize(GameOverImage, LarguraTela/2, AlturaTela/2) 
	SetSpritePositionByOffset(GameOverImage, LarguraTela*0.5, AlturaTela*0.4)
	
	SetSpriteVisible(GameOverImage, TRUE) 
	
	ChamaAnuncioIntersticial() 
	
	ChamaAnuncioBanner()	
	
	SetVirtualButtonVisible(btnPlayAgain, TRUE) 
	SetVirtualButtonActive(btnPlayAgain, TRUE)
	
 	SetVirtualButtonVisible(btnExit, TRUE) 
	SetVirtualButtonActive(btnExit, TRUE)
	
	PlaySound(9,VolumeDosEfeitos,false)
	
				
	
endfunction