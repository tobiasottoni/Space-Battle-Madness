// File: inicializador.agc
// Created: 22-03-12

global LarguraTela as integer
global AlturaTela as integer
global GameOver as integer
global LevelComplete as integer
global TRUE = 1
global FALSE = 0
global GameAtivo
global JogoPausado

function inicializador ()
	
	GameAtivo = TRUE
	TelaInicial = FALSE
	TravaSelecao = TRUE
	
	LarguraTela = 2400
	AlturaTela = 1080	
	
// Mostrar Todos os Erros

SetErrorMode(2)

// Ajustar as Propriedades da Janela
SetWindowTitle( "Space Battle Madness" )
SetWindowAllowResize( 1 ) // Permite que a tela seja redimensionada

// Ajusta as propriedades de exibição
SetVirtualResolution( LarguraTela, AlturaTela )
SetOrientationAllowed( 0, 0, 1, 1 ) // Somente modo paisagem
SetScissor( 0,0,0,0 ) // usa o máximo da tela / sem bordas pretas.
UseNewDefaultFonts( 1 )

LoadFont( 1,  "nulshock bd.ttf" )

endfunction