// File: acoesbotoes.agc
// Created: 22-03-12


function EntradasdoUsuario()
	
	if GetVirtualButtonPressed(btnJogar) = TRUE
		ResetaBotoes()
		FechaTelaInicio()
		TelaSelecaoNave()			
	endif
	
	if GetVirtualButtonPressed(btnOpcoes) = TRUE
		ResetaBotoes()
		FechaTelaInicio()
		TelaOpcoes()
	endif
	
	
	if GetVirtualButtonPressed(btnSair) = TRUE
		end
	endif
	
	
	if GetVirtualButtonPressed(btnNave1) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 1
		
		ArmasNave = 85
		VelocidadeNave = 90
		ArmaduraNave = 80
		
		SelecionaNave()	
															
		
	endif
	
	if GetVirtualButtonPressed(btnNave2) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 2
		
		ArmasNave = 75
		VelocidadeNave = 85
		ArmaduraNave = 90
		
		
		SelecionaNave()													
		
	endif
	
	if GetVirtualButtonPressed(btnNave3) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 3
		
		ArmasNave = 80
		VelocidadeNave = 95
		ArmaduraNave = 70
		
		
		SelecionaNave()											
		
	endif
	
	if GetVirtualButtonPressed(btnNave4) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 4
		
		ArmasNave = 90
		VelocidadeNave = 80
		ArmaduraNave = 75
				
		SelecionaNave()													
		
	endif
	
	if GetVirtualButtonPressed(btnNave5) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 5
		
		ArmasNave = 95
		VelocidadeNave = 80
		ArmaduraNave = 85
		
		
		SelecionaNave()												
		
	endif
	
	if GetVirtualButtonPressed(btnNave6) = TRUE
		
		OcultaTextoSelecao()
		
		NaveAtual = 6
		
		ArmasNave = 90
		VelocidadeNave = 75
		ArmaduraNave = 100		
		
		SelecionaNave()	
															
		
	endif
	
	
	if GetVirtualButtonPressed(btnok) = TRUE
		
		if NaveAtual > 0
			
		ResetaBotoes()
		
		ComecaJogo()
		
		Level1()
		
		endif
		
		
		if NaveAtual = 0
			
			SetTextVisible(TextoSelecao, TRUE)		
		
		endif
		
		
		
		
	endif
	
	
	if GetVirtualButtonPressed(btnAtirar) = TRUE						
		
			JogadorAtira()
			
			
	endif
	
	if GetVirtualButtonPressed(btnPause) = TRUE
		
			ResetaBotoes()						
		
			JogoEmCurso = FALSE
			
			SetVirtualButtonVisible(btnPause, FALSE) 
	         SetVirtualButtonActive(btnPause, FALSE)
			
			 SetVirtualButtonVisible(btnResume, TRUE) 
	         SetVirtualButtonActive(btnResume, TRUE)
	         
	         PararMusica()
	         
	endif
	
	if GetVirtualButtonPressed(btnResume) = TRUE	
		
			ResetaBotoes()					
		
			JogoEmCurso = TRUE
			
			SetVirtualButtonVisible(btnPause, TRUE) 
	         SetVirtualButtonActive(btnPause, TRUE)
	         
	         SetVirtualButtonVisible(btnAtirar, TRUE) 
	         SetVirtualButtonActive(btnAtirar, TRUE)
	         
	         if TipoJoystick = 1
	         
	         SetVirtualButtonVisible(btnDireita, TRUE) 
	         SetVirtualButtonActive(btnDireita, TRUE)
	         
	         SetVirtualButtonVisible(btnEsquerda, TRUE) 
	         SetVirtualButtonActive(btnEsquerda, TRUE)
	         
	         endif
			
			SetVirtualButtonVisible(btnResume, FALSE) 
	         SetVirtualButtonActive(btnResume, FALSE)	
	         
	         MudarMusica()
	         
						
	endif
	
	
	if GetVirtualButtonPressed(btnPlayAgain) 	= TRUE
		
		ResetaBotoes()
		
		JogoEmCurso = TRUE
								
		SetVirtualButtonVisible(btnPlayAgain, FALSE) 
		SetVirtualButtonActive(btnPlayAgain, FALSE)
		
		SetVirtualButtonVisible(btnExit, FALSE) 
		SetVirtualButtonActive(btnExit, FALSE)
		
		SetSpriteVisible(GameOverImage, FALSE) 
		
		SetSpriteVisible(Jogador.spr, TRUE)
		
		ReiniciaLevel1()		
		
			
			
	endif
	
	
	if GetVirtualButtonPressed(btnExit) = TRUE
		
		DeleteAdvert()
		
		ResetaBotoes()
		
		NaveAtual = 0
		
		PararMusica()
		
		PlaySound(21 ,VolumeDoSom,true )
		
		SetSpriteVisible(GameOverImage, FALSE)
		
		SetVirtualButtonVisible(btnPlayAgain, FALSE) 
	SetVirtualButtonActive(btnPlayAgain, FALSE)
	
 	SetVirtualButtonVisible(btnExit, FALSE) 
	SetVirtualButtonActive(btnExit, FALSE)	
	
	
	SetSpriteVisible (meteoro3, FALSE)
	SetSpriteVisible (meteoro4, FALSE)
	
	SetSpriteImage(BgMenu, LoadImage("imgshome/bgmenu.png"))
	
	TelaInicial = TRUE
	
	ResetaAnimacoesTelaInicio()
	
	SetSpriteVisible (nave1, TRUE)
	SetSpriteVisible (nave2, TRUE)
	SetSpriteVisible (nave3, TRUE)
	SetSpriteVisible (nave4, TRUE)	
	SetSpriteVisible (meteoro1, TRUE)
	SetSpriteVisible (meteoro2, TRUE)
	SetSpriteVisible(TituloGame, TRUE)	
	
		
	
	DeleteSprite(NaveJogador)
	DeleteInimigosSprites()
	DefineEstiloInimigos()
	DeleteSprite(2)
	DeleteSprite(4)
	
	
		
	SetVirtualButtonVisible(btnJogar, TRUE) 
	SetVirtualButtonActive(btnJogar, TRUE)
	
	SetVirtualButtonVisible(btnOpcoes, TRUE) 
	SetVirtualButtonActive(btnOpcoes, TRUE)
	
	SetVirtualButtonVisible(btnSair, TRUE) 
	SetVirtualButtonActive(btnSair, TRUE)
	
	endif
	
	
	if GetVirtualButtonPressed(btnYes) = TRUE
		TipoJoystick = 1		
		SetTextString(current1, "YES")
		
	endif
	
	if GetVirtualButtonPressed(btnNo) = TRUE
		TipoJoystick = 0
		SetTextString(current1, "NO")
	endif
	
	if GetVirtualButtonPressed(btn251) = TRUE
		
		VolumeDosEfeitos = 25
		SetTextString(current2, str(VolumeDosEfeitos)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn501) = TRUE
		
		VolumeDosEfeitos = 50
		SetTextString(current2, str(VolumeDosEfeitos)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn751) = TRUE
		
		VolumeDosEfeitos = 75
		SetTextString(current2, str(VolumeDosEfeitos)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn1001) = TRUE
		
		VolumeDosEfeitos = 100
		SetTextString(current2, str(VolumeDosEfeitos)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn252) = TRUE
		
		VolumeDoSom = 25
		SetTextString(current3, str(VolumeDoSom)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn502) = TRUE
		
		VolumeDoSom = 50
		SetTextString(current3, str(VolumeDoSom)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn752) = TRUE
		
		VolumeDoSom = 75
		SetTextString(current3, str(VolumeDoSom)+"%")
		
	endif
	
	if GetVirtualButtonPressed(btn1002) = TRUE
		
		VolumeDoSom = 100
		SetTextString(current3, str(VolumeDoSom)+"%")
		
	endif
	
	
	if GetVirtualButtonPressed(btnokConfig) = TRUE
		
		ResetaBotoes()
		AtualizaOpcoes()
		
		
	endif
	
	if GetVirtualButtonState(btnDireita) = TRUE
		
		MovimentaJogador(MovDireita)
		
	endif
	
	if GetVirtualButtonState(btnEsquerda) = TRUE
		
		MovimentaJogador(MovEsquerda)
		
	endif
	
		
			
endfunction

	
