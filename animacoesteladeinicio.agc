// File: animacoesteladeinicio.agc
// Created: 22-03-12

global nave1 as integer
global nave1x as integer
global nave1y as integer
global nave2 as integer
global nave2x as integer
global nave2y as integer
global nave3 as integer
global nave3x as integer
global nave3y as integer
global nave4 as integer
global nave4x as integer
global nave4y as integer


global meteoro1 as integer
global meteoro1x as integer
global meteoro1y as integer

global meteoro2 as integer
global meteoro2x as integer
global meteoro2y as integer


function AnimacoesTelaInicio()
	
	nave1 = CreateSprite (LoadImage("imgshome/navehome1.png"))
	nave1x = LarguraTela - LarguraTela - 320
	nave1y = 30
	
	SetSpritePosition (nave1, nave1x, nave1y)
	SetSpriteSize(nave1, 320, 320)
	SetSpriteDepth (nave1, 998)
	SetSpriteVisible (nave1, FALSE)
	
	
	nave2 = CreateSprite (LoadImage("imgshome/navehome2.png"))
	nave2x = LarguraTela + 320
	nave2y = 800
	
	SetSpritePosition (nave2, nave2x, nave2y)
	SetSpriteSize(nave2, 320, 320)
	SetSpriteDepth (nave2, 998)
	SetSpriteVisible (nave2, FALSE)
	
	
	nave3 = CreateSprite (LoadImage("imgshome/navehome3.png"))
	nave3x = 320
	nave3y = AlturaTela + 320
	
	SetSpritePosition (nave3, nave3x, nave3y)
	SetSpriteSize(nave3, 320, 320)
	SetSpriteDepth (nave3, 998)
	SetSpriteVisible (nave3, FALSE)
	
	
	nave4 = CreateSprite (LoadImage("imgshome/navehome4.png"))
	nave4x = 1600
	nave4y = AlturaTela - AlturaTela - 320
	
	SetSpritePosition (nave4, nave4x, nave4y)
	SetSpriteSize(nave4, 220, 320)
	SetSpriteDepth (nave4, 998)
	SetSpriteVisible (nave4, FALSE)
	
	
	
	meteoro1 = CreateSprite (LoadImage("cenarios/meteoro1.png"))
		
	meteoro1x = random(100,2400)
	meteoro1y = random (100, 1080)
	
	SetSpritePosition (meteoro1, meteoro1x, meteoro1y)
	SetSpriteDepth (meteoro1, 998)
	SetSpriteVisible (meteoro1, FALSE)
	
	
	meteoro2 = CreateSprite (LoadImage("cenarios/meteoro2.png"))
		
	meteoro2x = random(100,2400)
	meteoro2y = random (100, 1080)
	
	SetSpritePosition (meteoro2, meteoro2x, meteoro2y)
	SetSpriteDepth (meteoro2, 998)
	SetSpriteVisible (meteoro2, FALSE)
	
	
endfunction


function ResetaAnimacoesTelaInicio()
	
	nave1x = LarguraTela - LarguraTela - 320
	nave1y = 30
	
	SetSpritePosition (nave1, nave1x, nave1y)
	SetSpriteSize(nave1, 320, 320)
	SetSpriteDepth (nave1, 998)
	SetSpriteVisible (nave1, FALSE)
	
	
	nave2x = LarguraTela + 320
	nave2y = 800
	
	SetSpritePosition (nave2, nave2x, nave2y)
	SetSpriteSize(nave2, 320, 320)
	SetSpriteDepth (nave2, 998)
	SetSpriteVisible (nave2, FALSE)
	
	
	nave3x = 320
	nave3y = AlturaTela + 320
	
	SetSpritePosition (nave3, nave3x, nave3y)
	SetSpriteSize(nave3, 320, 320)
	SetSpriteDepth (nave3, 998)
	SetSpriteVisible (nave3, FALSE)
	
	
	nave4x = 1600
	nave4y = AlturaTela - AlturaTela - 320
	
	SetSpritePosition (nave4, nave4x, nave4y)
	SetSpriteSize(nave4, 220, 320)
	SetSpriteDepth (nave4, 998)
	SetSpriteVisible (nave4, FALSE)
	
	meteoro1x = random(100,2400)
	meteoro1y = random (100, 1080)
	SetSpriteDepth (meteoro1, 998)
	SetSpriteVisible (meteoro1, FALSE)
	
	meteoro2x = random(100,2400)
	meteoro2y = random (100, 1080)
	SetSpriteDepth (meteoro2, 998)
	SetSpriteVisible (meteoro2, FALSE)
	
	
endfunction


function UpdateAnimacoesTelaInicio()
	
	nave1x = nave1x + 5
	
	nave1y = nave1y
	
	SetSpritePosition (nave1, nave1x, nave1y)	
	
	
	nave2x = nave2x - 7
	
	nave2y = nave2y
	
	SetSpritePosition (nave2, nave2x, nave2y)
	
	
	nave3x = nave3x
	
	nave3y = nave3y - 5
	
	SetSpritePosition (nave3, nave3x, nave3y)
	
	
	nave4x = nave4x
	
	nave4y = nave4y + 7
	
	SetSpritePosition (nave4, nave4x, nave4y)
	
	
	meteoro1x = meteoro1x + 1
	
	meteoro1y = meteoro1y + 1
	
	
	SetSpritePosition (meteoro1, meteoro1x, meteoro1y)	
	
	
	meteoro2x = meteoro2x + 1
	
	meteoro2y = meteoro2y + 1
	
	
	SetSpritePosition (meteoro2, meteoro2x, meteoro2y)		
	
	
	
	
endfunction