// File: contadordetempo.agc
// Created: 22-03-12

global Tempo

global PegaSegundos

global TempoBonus1

global TempoBonus2

global TempoBonus3

global TempoBonus4

global TempoBonus5

global TempoBonus6

global TempoBonus7

function ContadordeTempo()
	
	Tempo = GetSeconds ( )	
	
	PegaSegundos = GetSeconds()
	
		
	if Tempo = TempoBonus6
		
			StopSound(14)
					
			NovoTempoMovimentoInimigo = 0.15
			TempoMovimentoInimigo = timer()
			
	endif
	
		
	if Tempo = TempoBonus5					
			
	TravaMisseisAtivo = FALSE
	
	StopSound(13)
			
	endif	
		
	
	if Tempo = TempoBonus4				
			
	TravaDescida = FALSE
	
	StopSound(12)
			
	endif	
	
	
	
	if Tempo = TempoBonus3				
			
	MissilPerseguidorAtivo = FALSE
	
	StopSound(10)
			
	endif	
	
	
	if Tempo = TempoBonus1			
			
	EscudoProtetorAtivo = FALSE
	
	SetSpriteVisible( EscudoJogador, FALSE )
	
	StopSound(8)
			
	endif	
		
			
				
	
			
endfunction

