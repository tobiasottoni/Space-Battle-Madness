// File: level1.agc
// Created: 22-03-13

global JogoEmCurso as integer

function Level1()
	
	DeleteAdvert()
			
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

function ReiniciaLevel1()
		
	JogoEmCurso = TRUE
	
	PontuacaoBonus = 0
	PontuacaoAumentaVidas = 0
	
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