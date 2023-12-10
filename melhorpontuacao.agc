// File: melhorpontuacao.agc
// Created: 22-03-14

global textoAltaPontuacao as integer
global AltaPontuacao as integer
global VelhaPontuacao as integer


function IniciaAltaPontuacao()
		
	textoAltaPontuacao = CreateText("hiscore: "+str(AltaPontuacao))
	SetTextSize(textoAltaPontuacao, 60)
	SetTextFont(textoAltaPontuacao, 1)
	SetTextPosition(textoAltaPontuacao, LarguraTela-GetTextTotalWidth(textoAltaPontuacao)-180, 0)
	SetTextVisible(textoAltaPontuacao, FALSE)
			
	//DeleteFile("altapontuacao.dat")
	
	if GetFileExists("altapontuacao.dat")
		OpenToRead(1, "altapontuacao.dat")
			GravaAltaPontuacao( ReadInteger(1) )
			VelhaPontuacao = ReadInteger(1)
		CloseFile(1)
	else
		OpenToWrite ( 1, "altapontuacao.dat", 0 )
	     WriteInteger ( 1, 0 )
		    GravaAltaPontuacao(0)		    
		CloseFile (1)
				
	endif
	
endfunction


function GravaAltaPontuacao(NovaPontuacao)	
	
	if GetFileExists("altapontuacao.dat")
		OpenToRead(2, "altapontuacao.dat")			
			VelhaPontuacao = ReadInteger(2)
		CloseFile(2)
		endif
		
		
	if VelhaPontuacao < NovaPontuacao
	SetTextString(textoAltaPontuacao, "hiscore: "+ str(NovaPontuacao))
	else
	SetTextString(textoAltaPontuacao, "hiscore: "+ str(VelhaPontuacao))
	endif
	
endfunction


function AumentaAltaPontuacao(NovaPontuacao)
	inc VelhaPontuacao, NovaPontuacao	
	
	GravaAltaPontuacao(NovaPontuacao)
	
	if VelhaPontuacao < NovaPontuacao
	OpenToWrite ( 1, "altapontuacao.dat", 0 )
	WriteInteger ( 1, NovaPontuacao )
	CloseFile (1)
	endif	
	
endfunction


function ZeraAltaPontuacao()
	
	AltaPontuacao = 0
	
endfunction

