// File: sonsdefundo.agc
// Created: 22-03-13

function IniciaMusicas()
	
LoadSound(21, "musicas/bgmusic.wav" ) 

LoadSound(22, "musicas/bgmusic1.wav" ) 

LoadSound(23, "musicas/bgmusic2.wav" ) 

LoadSound(24, "musicas/bgmusic3.wav" ) 

LoadSound(25, "musicas/bgmusic4.wav" ) 

LoadSound(26, "musicas/bgmusic5.wav" ) 



endfunction

function MudarMusica()
	
	Musica = Random(2,6)
			
			if Musica = 1
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(21 ,VolumeDoSom,true )				
				
			endif
			
			if Musica = 2
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(22 ,VolumeDoSom,true )
				
			endif
			
			if Musica = 3				
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(23 ,VolumeDoSom,true )
				
			endif
			
			if Musica = 4
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(24 ,VolumeDoSom,true )
				
			endif
			
			if Musica = 5				
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(25 ,VolumeDoSom,true )
				
			endif
			
			if Musica = 6
				
				StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				PlaySound(26 ,VolumeDoSom,true )
				
			endif
			
		
			
	
	endfunction
	
	
	function PararMusica()
		
		StopSound(21)
				StopSound(22)
				StopSound(23)
				StopSound(24)
				StopSound(25)
				StopSound(26)
				StopSound(27)
				StopSound(21)		
		
		endfunction