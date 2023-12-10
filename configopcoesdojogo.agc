// File: configopcoesdojogo.agc
// Created: 22-03-15

global TipoJoystick as integer
global VolumeDoSom as integer
global VolumeDosEfeitos as integer

function AjustaConfiguracoesOriginais()
	
	if GetFileExists("opcoes.dat") = FALSE
	
	TipoJoystick = 0
	
	VolumeDoSom = 100
	
	VolumeDosEfeitos = 100
	
	OpenToWrite ( 3, "opcoes.dat", 0 )
	     WriteInteger ( 3, TipoJoystick ) 
	     WriteInteger ( 3,  VolumeDoSom)  
	     WriteInteger ( 3,  VolumeDosEfeitos)     
		CloseFile (3)
		
	endif
	
endfunction


function IniciaOpcoes()
		
			
	//DeleteFile("opcoes.dat")
	
	if GetFileExists("opcoes.dat")
		OpenToRead(3, "opcoes.dat")
			TipoJoystick = ReadInteger(3)
			VolumeDoSom = ReadInteger(3)
			VolumeDosEfeitos = ReadInteger(3)			
		CloseFile(3)			
	endif
	
endfunction

function AtualizaOpcoes()

	if GetFileExists("opcoes.dat")
		OpenToWrite ( 3, "opcoes.dat", 0 )
	     WriteInteger ( 3, TipoJoystick ) 
	     WriteInteger ( 3,  VolumeDoSom)  
	     WriteInteger ( 3,  VolumeDosEfeitos)     
		CloseFile (3)			
	endif	
	
	
		OcultaBotoeseOpcoes()

endfunction