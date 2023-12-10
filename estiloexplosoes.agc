// File: estiloexplosoes.agc
// Created: 22-03-14

Global Explosao01 as integer
Global Explosao02 as integer

function DefineEstiloExplosoes()
	
	Explosao01 = 10
	
	CreateSprite (Explosao01, 0 )
	SetSpriteSize(Explosao01,160,280)
	
	
		
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_001.png" ))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_002.png"))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_003.png" ))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_004.png" ))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_005.png" ))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_006.png"))
		AddSpriteAnimationFrame ( Explosao01, LoadImage ( "level1/explosoes/explosao1_007.png" ))
		
     PlaySprite ( Explosao01, 10, 1, 1, 10 )
     
     
	SetSpriteSize(Explosao01, 85,85)
	SetSpriteVisible(Explosao01, FALSE)
	
	
	Explosao02 = 11
	
	CreateSprite (Explosao02, 0 )
	SetSpriteSize(Explosao02,160,280)
	
	
		
		AddSpriteAnimationFrame ( Explosao02, LoadImage ( "level1/explosoes/explosao2_001.png" ))
		AddSpriteAnimationFrame ( Explosao02, LoadImage ( "level1/explosoes/explosao2_002.png"))
		
     PlaySprite ( Explosao02, 10, 1, 1, 10 )
     
     
	SetSpriteSize(Explosao02, 85,85)
	SetSpriteVisible(Explosao02, FALSE)
		

	
	
endfunction