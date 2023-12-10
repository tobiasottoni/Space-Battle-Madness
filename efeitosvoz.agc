// File: efeitosvoz.agc
// Created: 22-03-18

global EfeitoFala as integer

function EfeitosVoz()

LoadSound(27, "efeitosvoz/1.wav")

LoadSound(28, "efeitosvoz/2.wav")

LoadSound(29, "efeitosvoz/3.wav")

LoadSound(30, "efeitosvoz/4.wav")

LoadSound(31, "efeitosvoz/5.wav")

LoadSound(32, "efeitosvoz/6.wav")

LoadSound(33, "efeitosvoz/7.wav")

LoadSound(34, "efeitosvoz/8.wav")

LoadSound(35, "efeitosvoz/9.wav")

LoadSound(36, "efeitosvoz/10.wav")


endfunction


function Fala()
	
	if EfeitoFala = 27
		
		PlaySound(27,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 28
		
		PlaySound(28,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 29 
		
		PlaySound(29,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 30
		
		PlaySound(30,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 31
		
		PlaySound(31,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 32
		
		PlaySound(32,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 33
		
		PlaySound(33,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 34
		
		PlaySound(34,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 35
		
		PlaySound(35,VolumeDosEfeitos,FALSE)
		
	endif
	
	if EfeitoFala = 36
		
		PlaySound(36,VolumeDosEfeitos,FALSE)
		
	endif
	
endfunction