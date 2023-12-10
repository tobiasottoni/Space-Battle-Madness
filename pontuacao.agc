// File: pontuacao.agc
// Created: 22-03-13

global Pontuacao as integer
global TextoPontuacao as integer
global PontuacaoAumentaVidas as integer
global PontuacaoBonus as integer



function IniciaPontuacao()
	
	Pontuacao = 0
	TextoPontuacao = CreateText("Score: " + str(Pontuacao))
	SetTextSize(TextoPontuacao, 100)
	SetTextFont(TextoPontuacao, 1)
	SetTextPosition(TextoPontuacao, LarguraTela*0.5-GetTextTotalWidth(TextoPontuacao)*0.5, 0)
	SetTextVisible(TextoPontuacao, FALSE)
	
	PontuacaoAumentaVidas = 1
		
endfunction

function AtualizaPontuacao(NovaPontuacao)
		
	Pontuacao = NovaPontuacao
	SetTextString(TextoPontuacao, "Score: " + str(Pontuacao))
	AumentaAltaPontuacao(Pontuacao)
	ChecaVidasBonus()
	ChecaBonus()
		
endfunction

function ZeraPontuacao()
		
	Pontuacao = 0
	SetTextString(TextoPontuacao, "Score: " + str(Pontuacao))
	SetTextVisible(TextoPontuacao, TRUE)
	
		
endfunction


function ChecaVidasBonus()
	
	checaaumento = Pontuacao / 1000
	
	if checaaumento > PontuacaoAumentaVidas
		
		PontuacaoAumentaVidas = checaaumento
		
		Vidas = Vidas + 1
		
		PlaySound(16,VolumeDosEfeitos,FALSE)
		
		SetTextString(TextoVidas, "Lifes: " + str(Vidas))
		
	endif
	
endfunction


function ChecaBonus()	
		
	Checacolisao = 0
	
	checaaumento = Pontuacao / 1000
	
	if checaaumento > PontuacaoBonus 
		
		PontuacaoBonus = checaaumento
		
		meubonus = Random(1,7)
		
				
		select meubonus
			
			case 1
				SetSpriteVisible(EscudoBonus, TRUE)				
			endcase
			
			case 2
				SetSpriteVisible(ExplodeTodosBonus, TRUE)
			endcase
			
			case 3
				SetSpriteVisible(MisseisPerseguidoresBonus, TRUE)
			endcase
			
			case 4
				SetSpriteVisible(TravaDescidaBonus, TRUE)
			endcase
			
			case 5
				SetSpriteVisible(TravaMisseisBonus, TRUE)
			endcase
			
			case 6
				SetSpriteVisible(TravaMovimentoBonus, TRUE)
			endcase
			
			case 7
				SetSpriteVisible(VidaBonus, TRUE)
			endcase
			
		endselect
		
		
	endif
	
	
endfunction