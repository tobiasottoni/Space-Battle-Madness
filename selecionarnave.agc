// File: selecionarnave.agc
// Created: 22-03-12

global Chao as integer 
global TextoTopo as integer 
global Topo as integer 
global Nave as integer
global NaveAtual as integer

global ArmasNave as integer
global VelocidadeNave as integer
global ArmaduraNave as integer
global TextoSelecao as integer
 
function TelaSelecaoNave()
	
			
	SetSpriteImage(BgMenu, LoadImage("teladeescolha/bgescolha.png"))
	
	TamanhoChaox = LarguraTela - 1000
	
	TamanhoChaoy = AlturaTela /6
	
	PosicaoChaox = (LarguraTela / 2) - (TamanhoChaox / 2)
	
	PosicaoChaoy = AlturaTela  - (TamanhoChaoy + 40 )
	
	Chao = CreateSprite(LoadImage("teladeescolha/chao.png"))
	SetSpriteSize(Chao, TamanhoChaox , TamanhoChaoy)
	SetSpritePosition(Chao, PosicaoChaox , PosicaoChaoy )
	SetSpriteDepth (Chao, 998)
	SetSpriteVisible(Chao, TRUE)
	
	TamanhoTopox = LarguraTela - 1200
	
	TamanhoTopoy = AlturaTela / 9
	
	PosicaoTopox = (LarguraTela / 2) - (TamanhoTopox / 2)
	
	PosicaoTopoy =  10
	
	Topo = CreateSprite(LoadImage("teladeescolha/topotitulo.png"))
	SetSpriteSize(Topo, TamanhoTopox , TamanhoTopoy)
	SetSpritePosition(Topo, PosicaoTopox , PosicaoTopoy )
	SetSpriteDepth (Topo, 998)
	SetSpriteVisible(Topo, TRUE)
	
	
	TamanhoTextoTopox = LarguraTela - 1600
	
	TamanhoTextoTopoy = AlturaTela / 12
	
	PosicaoTextoTopox = (LarguraTela / 2) - (TamanhoTextoTopox / 2)
	
	PosicaoTextoTopoy =  15
	
	TextoTopo = CreateSprite(LoadImage("teladeescolha/texto.png"))
	SetSpriteSize(TextoTopo, TamanhoTextoTopox , TamanhoTextoTopoy)
	SetSpritePosition(TextoTopo, PosicaoTextoTopox , PosicaoTextoTopoy )
	SetSpriteDepth (TextoTopo, 998)
	SetSpriteVisible(TextoTopo, TRUE)
	
	
	TamanhoNavex = 500
	
	TamanhoNavey = 500
	
	PosicaoNavex = (LarguraTela / 2) - (TamanhoNavex / 2)
	
	PosicaoNavey = AlturaTela  - (TamanhoNavey + 150 )	
	
	
		
	Nave = CreateSprite(LoadImage("teladeescolha/nave1.png"))		
	
	SetSpriteSize(Nave, TamanhoNavex , TamanhoNavey)
	SetSpritePosition(Nave, PosicaoNavex , PosicaoNavey )
	SetSpriteDepth (Nave, 997)
	SetSpriteVisible(Nave, FALSE)	
	
	
	
	TextoArmasNave = CreateText("Weapons: " + str(ArmasNave))	
	SetTextSize(TextoArmasNave, 80)
	SetTextFont(TextoArmasNave, 1)
	SetTextPosition(TextoArmasNave, 1500, 400)
	SetTextDepth(TextoArmasNave,997)
	SetTextVisible(TextoArmasNave, FALSE)
	
	TextoVelocidadeNave = CreateText("Speed: " + str(VelocidadeNave))
	SetTextSize(TextoVelocidadeNave, 80)
	SetTextFont(TextoVelocidadeNave, 1)
	SetTextPosition(TextoVelocidadeNave, 1600, 520)
	SetTextDepth(TextoVelocidadeNave,997)
	SetTextVisible(TextoVelocidadeNave, FALSE)
	
	TextoArmaduraNave = CreateText("Armor: " + str(ArmaduraNave))
	SetTextSize(TextoArmaduraNave, 80)
	SetTextFont(TextoArmaduraNave, 1)
	SetTextPosition(TextoArmaduraNave, 1700, 640)
	SetTextDepth(TextoArmaduraNave,997)
	SetTextVisible(TextoArmaduraNave, FALSE)	
	
	TextoSelecao = CreateText("Select a spaceship first...")	
	SetTextSize(TextoSelecao, 80)
	SetTextFont(TextoSelecao, 1)
	SetTextPosition(TextoSelecao, LarguraTela/4, AlturaTela/2-80)
	SetTextDepth(TextoSelecao,996)
	SetTextVisible(TextoSelecao, FALSE)
				
	MostraBotoesSelecaoNave()	
		
	
			
endfunction


function MostraBotoesSelecaoNave()
	
	
		
	SetVirtualButtonVisible(btnNave1, TRUE) 
	SetVirtualButtonActive(btnNave1, TRUE)
	
	SetVirtualButtonVisible(btnNave2, TRUE)
	SetVirtualButtonActive(btnNave2, TRUE)
	
	SetVirtualButtonVisible(btnNave3, TRUE) 
	SetVirtualButtonActive(btnNave3, TRUE)
	
	SetVirtualButtonVisible(btnNave4, TRUE) 
	SetVirtualButtonActive(btnNave4, TRUE)
	
	SetVirtualButtonVisible(btnNave5, TRUE) 
	SetVirtualButtonActive(btnNave5, TRUE)
	
	SetVirtualButtonVisible(btnNave6, TRUE)
	SetVirtualButtonActive(btnNave6, TRUE)
		
	SetVirtualButtonVisible(btnOk, TRUE) 
	SetVirtualButtonActive(btnok, TRUE)
	
	
		

endfunction



function SelecionaNave()
	
	PlaySound(11,VolumeDosEfeitos,false)
					
		if NaveAtual = 1
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave1.png"))	
		
		SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))

SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)	
		
				
		exitfunction
		
		
		endif
		
		if NaveAtual = 2
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave2.png"))	
		
			SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))

	SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)		
				
			
		exitfunction
		
		endif
		
		if NaveAtual = 3
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave3.png"))	
		
							SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))	

				SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)					
		
		exitfunction
		
		endif
		
		if NaveAtual = 4
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave4.png"))	
		
		SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))

SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)	
		
		exitfunction
		
		
		endif
		
		
		if NaveAtual = 5
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave5.png"))
		
		SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))

SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)	
		
		
		exitfunction
		
		endif
		
		if NaveAtual = 6
			
		SetSpriteImage(Nave, LoadImage("teladeescolha/nave6.png"))
		
		SetTextString(TextoArmasNave, "Weapons: " + str(ArmasNave))
SetTextString(TextoVelocidadeNave,"Speed: " + str(VelocidadeNave))
SetTextString(TextoArmaduraNave, "Armor: " + str(ArmaduraNave))

SetSpriteVisible(Nave, TRUE)		
	SetTextVisible(TextoArmasNave, TRUE)
	SetTextVisible(TextoVelocidadeNave, TRUE)
	SetTextVisible(TextoArmaduraNave, TRUE)	
				
		exitfunction
		
			
		endif		
					
			
endfunction

function ComecaJogo()
	
	SetVirtualButtonVisible(btnNave1,FALSE)
	SetVirtualButtonActive(btnNave1,FALSE)
	
	SetVirtualButtonVisible(btnNave2,FALSE)
	SetVirtualButtonActive(btnNave2,FALSE)
	
	SetVirtualButtonVisible(btnNave3,FALSE)
	SetVirtualButtonActive(btnNave3,FALSE)
	
	SetVirtualButtonVisible(btnNave4,FALSE)
	SetVirtualButtonActive(btnNave4,FALSE)
	
	SetVirtualButtonVisible(btnNave5,FALSE)
	SetVirtualButtonActive(btnNave5,FALSE)
	
	SetVirtualButtonVisible(btnNave6,FALSE)
	SetVirtualButtonActive(btnNave6,FALSE)
	
	SetVirtualButtonVisible(btnok,FALSE)
	SetVirtualButtonActive(btnok,FALSE)
	
	SetSpriteVisible(Chao ,FALSE)
	SetSpriteVisible(Nave ,FALSE)
	SetSpriteVisible(Topo ,FALSE)
	SetSpriteVisible(TextoTopo,FALSE)
	
	SetTextVisible(TextoArmasNave,FALSE)
	SetTextVisible(TextoVelocidadeNave,FALSE)
	SetTextVisible(TextoArmaduraNave,FALSE)
	
	endfunction
	

function OcultaTextoSelecao()
	
	
	SetTextVisible(TextoSelecao, FALSE)
	
endfunction
