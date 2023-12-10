	// File: iniciainimigos.agc
	// Created: 22-03-13
	
	type oInimigo
		vivo as integer
		spr as integer
		pontos as integer
		x as float
		y as float
		iniciox as float
		inicioy as float
	endtype
	
	global inimigo as oInimigo[9,0]
	
	global TempoMovimentoInimigo as float
	
	global DirecaoMovimentoInimigo as integer
	
	global PassosInimigo as float
	
	global QuantidadeInimigos as integer
	
	global NovoIncioInimigo as integer
	
	global NovoTempoMovimentoInimigo as float
	
	
	
	function CriaInimigos()
		
		NovoTempoMovimentoInimigo = 0.15
		
		
		for x = 0 to 9
					
		if Pontuacao < 10000
		
		EstiloInimigo = Random(100,105)
		
		endif
		
		if Pontuacao > 10000 AND Pontuacao < 20000
		
		EstiloInimigo = Random(100,109)
		
		endif
		
		if Pontuacao > 20000
		
		EstiloInimigo = Random(100,114)
		
		endif
		
			Inimigo[x,0].spr =  CloneSprite (EstiloInimigo)		
			Inimigo[x,0].pontos = Random(25,45) // Pontos
				    pre_pos = Random(5,10)
				pos_random = Random(100,200)			
				Inimigo[x,0].iniciox = x + (pos_random * pre_pos)
				
				if Inimigo[x,0].x > LarguraTela-GetSpriteWidth(Inimigo[x,0].spr)
					
					Inimigo[x,0].iniciox = x + (pos_random * pre_pos) - 500
					
				endif
				
				pos_random = Random(10,100)
				Inimigo[x,0].inicioy = pos_random
				SetSpriteVisible(Inimigo[x,0].spr, FALSE)
			
		next x
		
		PassosInimigo = 1
		
		
	endfunction
	
	
	
	function NovaOndadeInimigos()	
		
		EfeitoFala = Random(27,36)
	
	    Fala()
		
		mudabg()  	
		
		MudarMusica()
		
		for x = 0 to 9
			
		if Pontuacao < 10000
		
		EstiloInimigo = Random(100,104)
		
		endif
		
		if Pontuacao > 10000 AND Pontuacao < 20000
		
		EstiloInimigo = Random(100,109)
		
		endif
		
		if Pontuacao > 20000
		
		EstiloInimigo = Random(100,114)
		
		endif
			
				pre_pos = Random(5,10)
				pos_random = Random(100,200)	
				
				inicioinimigox = pre_pos * pos_random
				
				inicioinimigoy = Random(10,100)	
			
			    Inimigo[x,0].spr = CloneSprite (EstiloInimigo)
			    Inimigo[x,0].vivo = TRUE
				Inimigo[x,0].x = inicioinimigox //Inimigo[x,0].iniciox 
				Inimigo[x,0].y = inicioinimigoy //Inimigo[x,0].inicioy
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x,Inimigo[x,0].y)
				SetSpriteVisible(Inimigo[x,0].spr, TRUE)		
		next x
		
		TempoMovimentoInimigo = timer()
		QuantidadeInimigos = 10
		
	endfunction
	
	
	function AtualizaMovimentoInimigos()
		
		if timer() < (TempoMovimentoInimigo + NovoTempoMovimentoInimigo)
			
			for x = 0 to 9
					if Inimigo[x,0].vivo = FALSE
						continue // This enemy is dead so no need for further processing
					endif
					
					//Check for collision between enemy and player bullet
					y = 0
					if AcertouoInimigo(x,y) = TRUE
						MataInimigos(x,y)
					endif
					
					
			next x
			
			exitfunction
			
		endif
		
		TempoMovimentoInimigo = Timer() //Reseta o Tempo
			
		for x = 0 to 9
				if Inimigo[x,0].vivo = FALSE
					continue // O inimigo está morto
				endif
				
				direcao = Random(1,4)
		
		select direcao	
			
			case 1
				
				DirecaoMovimentoInimigo = Random(25,50)
				Inimigo[x,0].x = Inimigo[x,0].x - DirecaoMovimentoInimigo*PassosInimigo
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)
							
			endcase
			
			case 2
				
				if TravaDescida = FALSE
				
				DirecaoMovimentoInimigo = Random(1,20)
				Inimigo[x,0].y = Inimigo[x,0].y + DirecaoMovimentoInimigo*PassosInimigo
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)						
									
				endif
						
			endcase
			
			case 3
				
				DirecaoMovimentoInimigo = Random(1,5)
				Inimigo[x,0].y = Inimigo[x,0].y - DirecaoMovimentoInimigo*PassosInimigo 
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)
															
													
			endcase
			
			case 4
				
				DirecaoMovimentoInimigo = Random(25,50)
				Inimigo[x,0].x = Inimigo[x,0].x + DirecaoMovimentoInimigo*PassosInimigo
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)
				
							
			endcase
		endselect	
		
				if TiroInimigoAtivo = FALSE AND TravaMisseisAtivo = FALSE
		
		        InimigoAtirou = Random(1,10)	
				
				
				if InimigoAtirou > 5 //2
					
				
				InimigoAtira(x, y) //Aqui
				
					
				
				InimigoAtirou = 0
				
				endif	
				
				endif
				
				
				if Inimigo[x,0].x >= LarguraTela
					
					DirecaoMovimentoInimigo = 50
				Inimigo[x,0].x = Inimigo[x,0].x - DirecaoMovimentoInimigo*PassosInimigo*5 
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)
				
					
				endif
				
				if Inimigo[x,0].x <= 0
					
					DirecaoMovimentoInimigo = 50
				Inimigo[x,0].x = Inimigo[x,0].x + DirecaoMovimentoInimigo*PassosInimigo*5 
				SetSpritePosition(Inimigo[x,0].spr, Inimigo[x,0].x, Inimigo[x,0].y)
				
					
					
				endif
				
							
				if Inimigo[x,0].y > AlturaTela - GetSpriteHeight(Inimigo[x,0].spr)
					GameOver()
				endif
				
				if GetSpriteCollision( Inimigo[x,0].spr, Jogador.spr )
					
					MataJogador()
					
				endif
						
		next x
		
		
	endfunction	
	
		
	
	
	function MataInimigos(x,y)
		SetSpriteVisible(Inimigo[x,y].spr, FALSE)
		//IncreaseScore(enemy[x,y].score) // Award Score
		//SpawnBoom(enemy[x,y].x, enemy[x,y].y) //Create an explosion
		Inimigo[x,y].vivo = FALSE 
		
		PlaySound(3,VolumeDosEfeitos,false)
		
		CriarExplosao(Inimigo[x,y].x,Inimigo[x,y].y)
		
		newEnemyMoveTimer = newEnemyMoveTimer - 0.01 //Aqui aumento a velocidade dos monstros a cada morte
		
		if newEnemyMoveTimer < 0.10
			newEnemyMoveTimer = 0.10
		endif
		
		dec QuantidadeInimigos // decrease the number of enemies left in the wave
		
		//Ver se todos os inimigos estão mortos
		if QuantidadeInimigos = 0
			//levelComplete = TRUE
			NovaOndadeInimigos()
		endif
		
	endfunction
	
	function LimpaInimigos() 
		for x = 0 to 9
				SetSpriteVisible(Inimigo[x,0].spr, FALSE)
				Inimigo[x,0].vivo = FALSE		
		next x
	endfunction