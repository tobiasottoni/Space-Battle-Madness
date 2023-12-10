// File: level2.agc
// Created: 22-03-16


global JogoEmCurso as integer

function Level2()
	
	JogoEmCurso = TRUE
	
	mudabg()
	
	DefineEstiloPlayer()
	
	IniciaJogador()
	
	AjustaPosicaoInicialJogador()
	
	DefineMissilJogador()	
	
	DefineMissilInimigo()
	
	IniciaTirosInimigos()
		
	CriaInimigos()
	
	NovaOndadeInimigos()
	
	ResetaAnimacoesCenario()
	
	IniciaVidas()
	
	MudarMusica()
	
	ExibeBotoes()
	
		
	
		
	SetTextVisible(textopontuacao, TRUE)	
	SetTextVisible(textoAltaPontuacao, TRUE)
	SetTextVisible(TextoVidas, TRUE)	
	SetSpriteVisible (meteoro3, TRUE)
	SetSpriteVisible (meteoro4, TRUE)
	
	
endfunction

function ReiniciaLevel2()
		
	JogoEmCurso = TRUE
	
	mudabg()
		
	IniciaJogador()
	
	ReiniciaTiroJogador()
	
	AjustaPosicaoInicialJogador()	
			
	NovaOndadeInimigos()
	
	ResetaAnimacoesCenario()
	
	IniciaVidas()
	
	MudarMusica()
	
	ExibeBotoes()
	
	ZeraPontuacao()
	
			
	SetTextVisible(textopontuacao, TRUE)
	SetTextVisible(textoAltaPontuacao, TRUE)
	SetTextVisible(TextoVidas, TRUE)	
	SetSpriteVisible (meteoro3, TRUE)
	SetSpriteVisible (meteoro4, TRUE)
	
	
endfunction