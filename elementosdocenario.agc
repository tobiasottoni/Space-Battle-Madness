// File: elementosdocenario.agc
// Created: 22-03-13


global meteoro3 as integer
global meteoro3x as integer
global meteoro3y as integer

global meteoro4 as integer
global meteoro4x as integer
global meteoro4y as integer


function AnimacoesCenario()
				
	
	meteoro3 = CreateSprite (LoadImage("cenarios/meteoro1.png"))
		
	meteoro3x = random(100,2400)
	meteoro3y = random (100, 1080)
	
	SetSpritePosition (meteoro3, meteoro3x, meteoro3y)
	SetSpriteDepth (meteoro3, 998)
	SetSpriteVisible (meteoro3, FALSE)
	
	
	meteoro4 = CreateSprite (LoadImage("cenarios/meteoro2.png"))
		
	meteoro4x = random(100,2400)
	meteoro4y = random (100, 1080)
	
	SetSpritePosition (meteoro4, meteoro4x, meteoro4y)
	SetSpriteDepth (meteoro4, 998)
	SetSpriteVisible (meteoro4, FALSE)
	
	
endfunction


function ResetaAnimacoesCenario()
	
	
	meteoro3x = random(100,2400)
	meteoro3y = random (100, 1080)
	SetSpriteDepth (meteoro3, 998)
	SetSpriteVisible (meteoro3, FALSE)
	
	meteoro4x = random(100,2400)
	meteoro4y = random (100, 1080)
	SetSpriteDepth (meteoro4, 998)
	SetSpriteVisible (meteoro4, FALSE)
	
	
endfunction


function UpdateAnimacoesCenario()
	

	
	meteoro3x = meteoro3x + 1
	
	meteoro3y = meteoro3y + 1
	
	
	SetSpritePosition (meteoro3, meteoro3x, meteoro3y)	
	
	
	meteoro4x = meteoro4x + 1
	
	meteoro4y = meteoro4y + 1
	
	
	SetSpritePosition (meteoro4, meteoro4x, meteoro4y)		
	
	
	
	
endfunction