// File: iniciaelementosbonus.agc
// Created: 22-03-16


global EscudoBonus as integer
global EscudoBonusx as integer
global EscudoBonusy as integer
global ExplodeTodosBonus as integer
global ExplodeTodosBonusx as integer
global ExplodeTodosBonusy as integer
global MisseisPerseguidoresBonus as integer
global MisseisPerseguidoresBonusx as integer
global MisseisPerseguidoresBonusy as integer
global TravaDescidaBonus as integer
global TravaDescidaBonusx as integer
global TravaDescidaBonusy as integer
global TravaMisseisBonus as integer
global TravaMisseisBonusx as integer
global TravaMisseisBonusy as integer
global TravaMovimentoBonus as integer
global TravaMovimentoBonusx as integer
global TravaMovimentoBonusy as integer
global VidaBonus as integer
global VidaBonusx as integer
global VidaBonusy as integer		
global TravaMisseisAtivo as integer
global TravaDescida as integer
global MissilPerseguidorAtivo as integer
global EscudoProtetorAtivo as integer

function IniciaElementosBonus()	
				
	
	EscudoBonus = CreateSprite (LoadImage("bonus/escudo.png"))
		
	EscudoBonusx = random(100,2400)
	EscudoBonusy = -100
	
	SetSpritePosition (EscudoBonus, EscudoBonusx, EscudoBonusy)
	SetSpriteDepth (EscudoBonus, 995)
	SetSpriteSize(EscudoBonus,150,150)
	SetSpriteVisible (EscudoBonus, FALSE)
	
	ExplodeTodosBonus = CreateSprite (LoadImage("bonus/explodetodos.png"))
		
	ExplodeTodosBonusx = random(100,2400)
	ExplodeTodosBonusy = -100
	
	SetSpritePosition (ExplodeTodosBonus, ExplodeTodosBonusx, ExplodeTodosBonusy)
	SetSpriteDepth (ExplodeTodosBonus, 995)
	SetSpriteSize(ExplodeTodosBonus,150,150)
	SetSpriteVisible (ExplodeTodosBonus, FALSE)
	
	MisseisPerseguidoresBonus = CreateSprite (LoadImage("bonus/misseisperseguidores.png"))
		
	MisseisPerseguidoresBonusx = random(100,2400)
	MisseisPerseguidoresBonusy = -100
	
	SetSpritePosition (MisseisPerseguidoresBonus, MisseisPerseguidoresBonusx, MisseisPerseguidoresBonusy)
	SetSpriteDepth (MisseisPerseguidoresBonus, 995)
	SetSpriteSize(MisseisPerseguidoresBonus,150,150)
	SetSpriteVisible (MisseisPerseguidoresBonus, FALSE)
	
	TravaDescidaBonus = CreateSprite (LoadImage("bonus/travadescida.png"))
		
	TravaDescidaBonusx = random(100,2400)
	TravaDescidaBonusy = -100
	
	SetSpritePosition (TravaDescidaBonus, TravaDescidaBonusx, TravaDescidaBonusy)
	SetSpriteDepth (TravaDescidaBonus, 995)
	SetSpriteSize(TravaDescidaBonus,150,150)
	SetSpriteVisible (TravaDescidaBonus, FALSE)
	
	TravaDescidaBonus = CreateSprite (LoadImage("bonus/travadescida.png"))
		
	TravaDescidaBonusx = random(100,2400)
	TravaDescidaBonusy = -100
	
	SetSpritePosition (TravaDescidaBonus, TravaDescidaBonusx, TravaDescidaBonusy)
	SetSpriteDepth (TravaDescidaBonus, 995)
	SetSpriteSize(TravaDescidaBonus,150,150)
	SetSpriteVisible (TravaDescidaBonus, FALSE)
	
	TravaMisseisBonus = CreateSprite (LoadImage("bonus/travamisseis.png"))
		
	TravaMisseisBonusx = random(100,2400)
	TravaMisseisBonusy = -100
	
	SetSpritePosition (TravaMisseisBonus, TravaMisseisBonusx, TravaMisseisBonusy)
	SetSpriteDepth (TravaMisseisBonus, 995)
	SetSpriteSize(TravaMisseisBonus,150,150)
	SetSpriteVisible (TravaMisseisBonus, FALSE)
	
	TravaMovimentoBonus = CreateSprite (LoadImage("bonus/travamovimento.png"))
		
	TravaMovimentoBonusx = random(100,2400)
	TravaMovimentoBonusy = -100
	
	SetSpritePosition (TravaMovimentoBonus, TravaMovimentoBonusx, TravaMovimentoBonusy)
	SetSpriteDepth (TravaMovimentoBonus, 995)
	SetSpriteSize(TravaMovimentoBonus,150,150)
	SetSpriteVisible (TravaMovimentoBonus, FALSE)
	
	
	VidaBonus = CreateSprite (LoadImage("bonus/vidabonus.png"))
		
	VidaBonusx = random(100,2400)
	VidaBonusy = -100
	
	SetSpritePosition (VidaBonus, VidaBonusx, VidaBonusy)
	SetSpriteDepth (VidaBonus, 995)
	SetSpriteSize(VidaBonus,150,150)
	SetSpriteVisible (VidaBonus, FALSE)
		
	
endfunction


function ResetaElementosBonus()
    
    		
	EscudoBonusx = random(100,2400)
	EscudoBonusy = -100
	
	SetSpritePosition (EscudoBonus, EscudoBonusx, EscudoBonusy)
	SetSpriteDepth (EscudoBonus, 995)
	SetSpriteVisible (EscudoBonus, FALSE)
	
		
	ExplodeTodosBonusx = random(100,2400)
	ExplodeTodosBonusy = -100
	
	SetSpritePosition (ExplodeTodosBonus, ExplodeTodosBonusx, ExplodeTodosBonusy)
	SetSpriteDepth (ExplodeTodosBonus, 995)
	SetSpriteVisible (ExplodeTodosBonus, FALSE)
	
		
	MisseisPerseguidoresBonusx = random(100,2400)
	MisseisPerseguidoresBonusy = -100
	
	SetSpritePosition (MisseisPerseguidoresBonus, MisseisPerseguidoresBonusx, MisseisPerseguidoresBonusy)
	SetSpriteDepth (MisseisPerseguidoresBonus, 995)
	SetSpriteVisible (MisseisPerseguidoresBonus, FALSE)
		
	TravaDescidaBonusx = random(100,2400)
	TravaDescidaBonusy = -100
	
	SetSpritePosition (TravaDescidaBonus, TravaDescidaBonusx, TravaDescidaBonusy)
	SetSpriteDepth (TravaDescidaBonus, 995)
	SetSpriteVisible (TravaDescidaBonus, FALSE)
		
	TravaDescidaBonusx = random(100,2400)
	TravaDescidaBonusy = -100
	
	SetSpritePosition (TravaDescidaBonus, TravaDescidaBonusx, TravaDescidaBonusy)
	SetSpriteDepth (TravaDescidaBonus, 995)
	SetSpriteVisible (TravaDescidaBonus, FALSE)
	
		
	TravaMisseisBonusx = random(100,2400)
	TravaMisseisBonusy = -100
	
	SetSpritePosition (TravaMisseisBonus, TravaMisseisBonusx, TravaMisseisBonusy)
	SetSpriteDepth (TravaMisseisBonus, 995)
	SetSpriteVisible (TravaMisseisBonus, FALSE)
	
		
	TravaMovimentoBonusx = random(100,2400)
	TravaMovimentoBonusy = -100
	
	SetSpritePosition (TravaMovimentoBonus, TravaMovimentoBonusx, TravaMovimentoBonusy)
	SetSpriteDepth (TravaMovimentoBonus, 995)
	SetSpriteVisible (TravaMovimentoBonus, FALSE)
	
	
		
	VidaBonusx = random(100,2400)
	VidaBonusy = -100
	
	SetSpritePosition (VidaBonus, VidaBonusx, VidaBonusy)
	SetSpriteDepth (VidaBonus, 995)
	SetSpriteVisible (VidaBonus, FALSE)
		
	
endfunction


function UpdateElementosBonus()	
	
		 
	if GetSpriteExists(EscudoBonus) AND GetSpriteVisible(EscudoBonus)
	
	EscudoBonusy = EscudoBonusy + 5
	
	
	SetSpritePosition (EscudoBonus, EscudoBonusx, EscudoBonusy)
	
		
		if GetSpriteCollision(EscudoBonus, Jogador.spr) 
		
			
          EscudoProtetor()
          PlaySound(8,VolumeDosEfeitos,TRUE)
          ResetaElementosBonus()         			
				
	
	endif
		
	
	endif
	
	
	
	
	if GetSpriteExists(ExplodeTodosBonus) AND GetSpriteVisible(ExplodeTodosBonus)
	
	
	ExplodeTodosBonusy = ExplodeTodosBonusy + 5
	
	
	SetSpritePosition (ExplodeTodosBonus, ExplodeTodosBonusx, ExplodeTodosBonusy)
	
	
	if GetSpriteCollision(ExplodeTodosBonus, Jogador.spr) 
		
			
          
	for x = 0 to 9
		
		Pontuacao = Pontuacao + Inimigo[x,0].pontos
		AtualizaPontuacao(Pontuacao)
		SetSpriteVisible(Inimigo[x,0].spr, FALSE)
		Inimigo[x,0].vivo = FALSE		
next x

          PlaySound(7,VolumeDosEfeitos,FALSE)
          ResetaElementosBonus() 
          NovaOndadeInimigos()        			
				
	
	endif
	
	
	endif
	
	
	
	
	if GetSpriteExists(MisseisPerseguidoresBonus) AND GetSpriteVisible(MisseisPerseguidoresBonus)
	
	MisseisPerseguidoresBonusy = MisseisPerseguidoresBonusy + 5
	
	
	SetSpritePosition (MisseisPerseguidoresBonus, MisseisPerseguidoresBonusx, MisseisPerseguidoresBonusy)
	
	
	if GetSpriteCollision(MisseisPerseguidoresBonus, Jogador.spr) 
		
			
      PlaySound(10,VolumeDosEfeitos,TRUE)    
	MisseisPerseguidores()
          ResetaElementosBonus()         			
				
	
	endif
	
	endif
	
	
	
	
	if GetSpriteExists(TravaDescidaBonus) AND GetSpriteVisible(TravaDescidaBonus)
	
	TravaDescidaBonusy = TravaDescidaBonusy + 5
	
	
	SetSpritePosition (TravaDescidaBonus, TravaDescidaBonusx, TravaDescidaBonusy)
	
	if GetSpriteCollision(TravaDescidaBonus, Jogador.spr) 
		
			
      PlaySound(12,VolumeDosEfeitos,TRUE)    
	TravaDescida()
          ResetaElementosBonus()         			
				
	
	endif
	
	
	endif
	
	
	
	
	
	if GetSpriteExists(TravaMisseisBonus) AND GetSpriteVisible(TravaMisseisBonus)
	
	TravaMisseisBonusy = TravaMisseisBonusy + 5
	
	
	SetSpritePosition (TravaMisseisBonus, TravaMisseisBonusx, TravaMisseisBonusy)
	
	if GetSpriteCollision(TravaMisseisBonus, Jogador.spr) 
		
			
      PlaySound(13,VolumeDosEfeitos,TRUE)    
	TravaMisseis()
          ResetaElementosBonus()         			
				
	
	endif
	
	
	endif
	
	
	
	
	if GetSpriteExists(TravaMovimentoBonus) AND GetSpriteVisible(TravaMovimentoBonus)
	
	TravaMovimentoBonusy = TravaMovimentoBonusy + 5
	
	
	SetSpritePosition (TravaMovimentoBonus, TravaMovimentoBonusx, TravaMovimentoBonusy)
	
	
	if GetSpriteCollision(TravaMovimentoBonus, Jogador.spr) 
		
			PlaySound(14,VolumeDosEfeitos,TRUE)
          TravaMovimento()
          ResetaElementosBonus()         			
				
	
	endif
	
	
	endif
	
	
	
	
	if GetSpriteExists(VidaBonus) AND GetSpriteVisible(VidaBonus)
	
	VidaBonusy = VidaBonusy + 5
	
	
	SetSpritePosition (VidaBonus, VidaBonusx, VidaBonusy)
	
	
	if GetSpriteCollision(VidaBonus, Jogador.spr) 
		
			PlaySound(16,VolumeDosEfeitos, FALSE)
          BonusVidas()
          ResetaElementosBonus()         			
				
	
	endif
	
	endif	
	
endfunction FALSE
	


function BonusVidas()
	
	Vidas = Vidas + 1
	SetTextString(TextoVidas, "Lifes: " + str(Vidas))
		exitfunction TRUE	
			
endfunction FALSE


function TravaMovimento()
	
	
	TempoBonus6 = Tempo + 10
	
							
	TempoMovimentoInimigo = 9999
		
	NovoTempoMovimentoInimigo = 9999					   		    	
							
	
	exitFunction TRUE
endfunction FALSE


function TravaMisseis()
	
	
	TempoBonus5 = Tempo + 10
										
						   		    	
		TravaMisseisAtivo = TRUE				
	
	exitFunction TRUE
endfunction FALSE

function TravaDescida()
	
	
	TempoBonus4 = Tempo + 10
										
						   		    	
		TravaDescida = TRUE				
	
	exitFunction TRUE
endfunction FALSE


function MisseisPerseguidores()
	
	
TempoBonus3 = Tempo + 10
										
						   		    	
		MissilPerseguidorAtivo = TRUE				
	
	exitFunction TRUE
endfunction FALSE


function EscudoProtetor()
	
	
TempoBonus1 = Tempo + 10
										
						   		    	
		EscudoProtetorAtivo = TRUE	
		
	SetSpriteVisible( EscudoJogador, TRUE )			
	
	exitFunction TRUE
endfunction FALSE
