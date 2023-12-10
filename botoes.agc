// File: botoes.agc
// Created: 22-03-12

global tamanhobotao as integer
global btnJogar as integer
global btnOpcoes as integer
global btnSair as integer

global btnNave1 as integer 
global btnNave2 as integer 
global btnNave3 as integer 
global btnNave4 as integer 
global btnNave5 as integer 
global btnNave6 as integer 
global btnok as integer 
global btnAtirar as integer
global btnPause as integer
global btnResume as integer
global btnPlayAgain as integer
global btnExit as integer
global btnYes as integer
global btnNo as integer
global btn251 as integer
global btn501 as integer
global btn751 as integer
global btn1001 as integer
global btn252 as integer
global btn502 as integer
global btn752 as integer
global btn1002 as integer
global btnokConfig as integer 
global btnEsquerda as integer
global btnDireita as integer



function CriaBotoes()
	
	btnJogar = 1
	btnOpcoes = 2	
	btnSair = 3
	
	tamanhobotao = LarguraTela / 6
	
	AddVirtualButton(btnJogar, 300, 200, tamanhobotao)
	SetVirtualButtonSize(btnJogar, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnJogar,LoadImage("botoes/play.png"))
	SetVirtualButtonImageDown(btnJogar,LoadImage("botoes/play2.png"))
	
	AddVirtualButton(btnOpcoes, 300, 400, tamanhobotao)
	SetVirtualButtonSize(btnOpcoes, tamanhobotao, 100)	
	SetVirtualButtonImageUp(btnOpcoes,LoadImage("botoes/options.png"))
	SetVirtualButtonImageDown(btnOpcoes,LoadImage("botoes/options2.png"))
	
	AddVirtualButton(btnSair, 300, 600, tamanhobotao)
	SetVirtualButtonSize(btnSair, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnSair,LoadImage("botoes/quit.png"))
	SetVirtualButtonImageDown(btnSair,LoadImage("botoes/quit2.png"))
	
	
	
	SetVirtualButtonVisible(btnJogar, FALSE) 
	SetVirtualButtonActive(btnJogar, FALSE)
	
	SetVirtualButtonVisible(btnOpcoes, FALSE) 
	SetVirtualButtonActive(btnOpcoes, FALSE)
	
	SetVirtualButtonVisible(btnSair, FALSE) 
	SetVirtualButtonActive(btnSair, FALSE)
	
	
	btnNave1 = 4
	btnNave2 = 5
	btnNave3 = 6
	btnNave4 = 7
	btnNave5 = 8
	btnNave6 = 9
	
	btnOK = 10
	
	tamanhobotao = LarguraTela / 12
	
	AddVirtualButton(btnNave1, 200, 200, tamanhobotao)
	SetVirtualButtonSize(btnNave1, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave1,LoadImage("teladeescolha/btnnave1.png"))
	SetVirtualButtonImageDown(btnNave1,LoadImage("teladeescolha/btnnave1d.png"))
	
	AddVirtualButton(btnNave2, 450, 200, tamanhobotao)
	SetVirtualButtonSize(btnNave2, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave2,LoadImage("teladeescolha/btnnave2.png"))
	SetVirtualButtonImageDown(btnNave2,LoadImage("teladeescolha/btnnave2d.png"))
	
	AddVirtualButton(btnNave3, 200, 450, tamanhobotao)
	SetVirtualButtonSize(btnNave3, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave3,LoadImage("teladeescolha/btnnave3.png"))
	SetVirtualButtonImageDown(btnNave3,LoadImage("teladeescolha/btnnave3d.png"))
	
	AddVirtualButton(btnNave4, 450, 450, tamanhobotao)
	SetVirtualButtonSize(btnNave4, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave4,LoadImage("teladeescolha/btnnave4.png"))
	SetVirtualButtonImageDown(btnNave4,LoadImage("teladeescolha/btnnave4d.png"))
	
	AddVirtualButton(btnNave5, 200, 700, tamanhobotao)
	SetVirtualButtonSize(btnNave5, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave5,LoadImage("teladeescolha/btnnave5.png"))
	SetVirtualButtonImageDown(btnNave5,LoadImage("teladeescolha/btnnave5d.png"))
	
	AddVirtualButton(btnNave6, 450, 700, tamanhobotao)
	SetVirtualButtonSize(btnNave6, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnNave6,LoadImage("teladeescolha/btnnave6.png"))
	SetVirtualButtonImageDown(btnNave6,LoadImage("teladeescolha/btnnave6d.png"))
	
	
	AddVirtualButton(btnOK, LarguraTela - 300, 200, tamanhobotao)
	SetVirtualButtonSize(btnOK, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnOK,LoadImage("teladeescolha/btnok.png"))
	SetVirtualButtonImageDown(btnOK,LoadImage("teladeescolha/btnok2.png"))
	
	
	
	SetVirtualButtonVisible(btnNave1, FALSE) 
	SetVirtualButtonActive(btnNave1, FALSE)
	
	SetVirtualButtonVisible(btnNave2, FALSE) 
	SetVirtualButtonActive(btnNave2, FALSE)
	
	SetVirtualButtonVisible(btnNave3, FALSE) 
	SetVirtualButtonActive(btnNave3, FALSE)
	
	SetVirtualButtonVisible(btnNave4, FALSE) 
	SetVirtualButtonActive(btnNave4, FALSE)
	
	SetVirtualButtonVisible(btnNave5, FALSE) 
	SetVirtualButtonActive(btnNave5, FALSE)
	
	SetVirtualButtonVisible(btnNave6, FALSE) 
	SetVirtualButtonActive(btnNave6, FALSE)
	
	
	SetVirtualButtonVisible(btnOk, FALSE) 
	SetVirtualButtonActive(btnok, FALSE)	
	
	
	btnAtirar = 11
	
	AddVirtualButton(btnAtirar, LarguraTela - 250, AlturaTela - 250, tamanhobotao)
	
	SetVirtualButtonImageUp(btnAtirar,LoadImage("botoes/fire.png"))
	SetVirtualButtonImageDown(btnAtirar,LoadImage("botoes/fired.png"))
	
	SetVirtualButtonVisible(btnAtirar, FALSE) 
	SetVirtualButtonActive(btnAtirar, FALSE)	
	
	btnPlayAgain = 12
	
	
	
	AddVirtualButton(btnPlayAgain, LarguraTela*0.8, AlturaTela*0.65, 600)	
	SetVirtualButtonImageUp(btnPlayAgain,LoadImage("botoes/playagain.png"))
	SetVirtualButtonImageDown(btnPlayAgain,LoadImage("botoes/playagain.png"))
	
	SetVirtualButtonVisible(btnPlayAgain, FALSE) 
		SetVirtualButtonActive(btnPlayAgain, FALSE)
		
	
	btnExit = 13
	
	AddVirtualButton(btnExit, LarguraTela*0.8, AlturaTela*0.85, 600)
	SetVirtualButtonImageUp(btnExit,LoadImage("botoes/exit.png"))
	SetVirtualButtonImageDown(btnExit,LoadImage("botoes/exit2.png"))
	
	
		SetVirtualButtonVisible(btnExit, FALSE) 
		SetVirtualButtonActive(btnExit, FALSE)
		
		
		btnPause = 14
	
	AddVirtualButton(btnPause, LarguraTela - 150, 150, tamanhobotao/2)
	
	SetVirtualButtonImageUp(btnPause,LoadImage("botoes/pause.png"))
	SetVirtualButtonImageDown(btnPause,LoadImage("botoes/paused.png"))
	
	SetVirtualButtonVisible(btnPause, FALSE) 
	SetVirtualButtonActive(btnPause, FALSE)	
	
	
	btnResume = 15
	
	AddVirtualButton(btnResume, LarguraTela - 150, 250, tamanhobotao/2)
	
	SetVirtualButtonImageUp(btnResume,LoadImage("botoes/resume.png"))
	SetVirtualButtonImageDown(btnResume,LoadImage("botoes/resumed.png"))
	
	SetVirtualButtonVisible(btnResume, FALSE) 
	SetVirtualButtonActive(btnResume, FALSE)	
	
	btnYes = 16
	
	AddVirtualButton(btnYes, 1200, 365, tamanhobotao)
	
	SetVirtualButtonImageUp(btnYes,LoadImage("botoes/yes.png"))
	SetVirtualButtonImageDown(btnYes,LoadImage("botoes/yesd.png"))
	
	SetVirtualButtonVisible(btnYes, FALSE) 
	SetVirtualButtonActive(btnYes, FALSE)	
	
	btnNo = 17
	
	AddVirtualButton(btnNo, 1400, 365, tamanhobotao)
	
	SetVirtualButtonImageUp(btnNo,LoadImage("botoes/no.png"))
	SetVirtualButtonImageDown(btnNo,LoadImage("botoes/nod.png"))
	
	SetVirtualButtonVisible(btnNo, FALSE) 
	SetVirtualButtonActive(btnNo, FALSE)	
	
    btn251 = 18
	
	AddVirtualButton(btn251, 1000, 620, tamanhobotao)
	
	SetVirtualButtonImageUp(btn251,LoadImage("botoes/25.png"))
	SetVirtualButtonImageDown(btn251,LoadImage("botoes/25d.png"))
		
	SetVirtualButtonVisible(btn251, FALSE) 
	SetVirtualButtonActive(btn251, FALSE)	
	
	btn501 = 19
	
	AddVirtualButton(btn501, 1200, 620, tamanhobotao)
	
	SetVirtualButtonImageUp(btn501,LoadImage("botoes/50.png"))
	SetVirtualButtonImageDown(btn501,LoadImage("botoes/50d.png"))
		
	SetVirtualButtonVisible(btn501, FALSE) 
	SetVirtualButtonActive(btn501, FALSE)	
	
	btn751 = 20
	
	AddVirtualButton(btn751, 1400, 620, tamanhobotao)
	
	SetVirtualButtonImageUp(btn751,LoadImage("botoes/75.png"))
	SetVirtualButtonImageDown(btn751,LoadImage("botoes/75d.png"))
		
	SetVirtualButtonVisible(btn751, FALSE) 
	SetVirtualButtonActive(btn751, FALSE)	
	
	btn1001 = 21
	
	AddVirtualButton(btn1001, 1600, 620, tamanhobotao)
	
	SetVirtualButtonImageUp(btn1001,LoadImage("botoes/100.png"))
	SetVirtualButtonImageDown(btn1001,LoadImage("botoes/100d.png"))
		
	SetVirtualButtonVisible(btn1001, FALSE) 
	SetVirtualButtonActive(btn1001, FALSE)	
	
	btn252 = 22
	
	AddVirtualButton(btn252, 1000, 850, tamanhobotao)
	
	SetVirtualButtonImageUp(btn252,LoadImage("botoes/25.png"))
	SetVirtualButtonImageDown(btn252,LoadImage("botoes/25d.png"))
		
	SetVirtualButtonVisible(btn252, FALSE) 
	SetVirtualButtonActive(btn252, FALSE)	
	
	btn502 = 23
	
	AddVirtualButton(btn502, 1200, 850, tamanhobotao)
	
	SetVirtualButtonImageUp(btn502,LoadImage("botoes/50.png"))
	SetVirtualButtonImageDown(btn502,LoadImage("botoes/50d.png"))
		
	SetVirtualButtonVisible(btn502, FALSE) 
	SetVirtualButtonActive(btn502, FALSE)	
	
	btn752 = 24
	
	AddVirtualButton(btn752, 1400, 850, tamanhobotao)
	
	SetVirtualButtonImageUp(btn752,LoadImage("botoes/75.png"))
	SetVirtualButtonImageDown(btn752,LoadImage("botoes/75d.png"))
		
	SetVirtualButtonVisible(btn752, FALSE) 
	SetVirtualButtonActive(btn752, FALSE)	
	
	btn1002 = 25
	
	AddVirtualButton(btn1002, 1600, 850, tamanhobotao)
	
	SetVirtualButtonImageUp(btn1002,LoadImage("botoes/100.png"))
	SetVirtualButtonImageDown(btn1002,LoadImage("botoes/100d.png"))
		
	SetVirtualButtonVisible(btn1002, FALSE) 
	SetVirtualButtonActive(btn1002, FALSE)	
	
	
	btnokConfig = 26
	
	AddVirtualButton(btnOKConfig, 200, 150, tamanhobotao)
	SetVirtualButtonSize(btnOKConfig, tamanhobotao, 100)
	SetVirtualButtonImageUp(btnOKConfig,LoadImage("teladeescolha/btnok.png"))
	SetVirtualButtonImageDown(btnOKConfig,LoadImage("teladeescolha/btnok2.png"))
	
	SetVirtualButtonVisible(btnOKConfig, FALSE) 
	SetVirtualButtonActive(btnOKConfig, FALSE)	
	
	
	btnEsquerda = 27
	
	AddVirtualButton(btnEsquerda, tamanhobotao, AlturaTela-tamanhobotao, tamanhobotao)
	
	SetVirtualButtonImageUp(btnEsquerda ,LoadImage("botoes/btnesquerda.png"))
	SetVirtualButtonImageDown(btnEsquerda ,LoadImage("botoes/btnesquerdad.png"))
	SetVirtualButtonVisible(btnEsquerda, FALSE) 
	SetVirtualButtonActive(btnEsquerda, FALSE)
	
	btnDireita = 28
	
	AddVirtualButton(btnDireita, tamanhobotao*2, AlturaTela-tamanhobotao, tamanhobotao)
	SetVirtualButtonImageUp(btnDireita ,LoadImage("botoes/btndireita.png"))
	SetVirtualButtonImageDown(btnDireita ,LoadImage("botoes/btndireitad.png"))
	SetVirtualButtonVisible(btnDireita, FALSE) 
	SetVirtualButtonActive(btnDireita, FALSE)
	

endfunction


function ExibeBotoes()
	
	SetVirtualButtonVisible(btnAtirar, TRUE) 
	SetVirtualButtonActive(btnAtirar, TRUE)	
	SetVirtualButtonVisible(btnPause, TRUE) 
	SetVirtualButtonActive(btnPause, TRUE)
	
	if TipoJoystick = 1
		
		SetVirtualButtonVisible(btnDireita, TRUE) 
	SetVirtualButtonActive(btnDireita, TRUE)
	SetVirtualButtonVisible(btnEsquerda, TRUE) 
	SetVirtualButtonActive(btnEsquerda, TRUE)
	
	endif
	
endfunction


function ResetaBotoes()
	
	DeleteVirtualButton(1)
	DeleteVirtualButton(2)
	DeleteVirtualButton(3)
	DeleteVirtualButton(4)
	DeleteVirtualButton(5)
	DeleteVirtualButton(6)
	DeleteVirtualButton(7)
	DeleteVirtualButton(8)
	DeleteVirtualButton(9)
	DeleteVirtualButton(10)
	DeleteVirtualButton(11)
	DeleteVirtualButton(12)
	DeleteVirtualButton(13)
	DeleteVirtualButton(14)
	DeleteVirtualButton(15)
	DeleteVirtualButton(16)
	DeleteVirtualButton(17)
	DeleteVirtualButton(18)
	DeleteVirtualButton(19)
	DeleteVirtualButton(20)
	DeleteVirtualButton(21)
	DeleteVirtualButton(22)
	DeleteVirtualButton(23)
	DeleteVirtualButton(24)
	DeleteVirtualButton(25)
	DeleteVirtualButton(26)
	DeleteVirtualButton(27)
	DeleteVirtualButton(28)
	
	CriaBotoes()
	
endfunction