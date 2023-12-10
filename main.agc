
// Project: Space Battle Madness 
// Created: 22-03-12


#include "inicializador.agc"
#include "logodechinelo.agc"
#include "teladeinicio.agc"
#include "contadordetempo.agc"
#include "animacoesteladeinicio.agc"
#include "botoes.agc"
#include "chamaanuncio.agc"
#include "acoesbotoes.agc"
#include "selecionarnave.agc"
#include "textosvirtuais.agc"
#include "mudabg.agc"
#include "level1.agc"
#include "estilojogador.agc"
#include "iniciajogador.agc"
#include "movimentajogador.agc"
#include "tirosjogador.agc"
#include "estiloinimigos.agc"
#include "iniciainimigos.agc"
#include "tirosinimigos.agc"
#include "pontuacao.agc"
#include "elementosdocenario.agc"
#include "dadosjogador.agc"
#include "gameover.agc"
#include "sonsdefundo.agc"
#include "efeitossonoros.agc"
#include "efeitosvoz.agc"
#include "explosoes.agc"
#include "estiloexplosoes.agc"
#include "melhorpontuacao.agc"
#include "teladeopcoes.agc"
#include "configopcoesdojogo.agc"
#include "iniciaelementosbonus.agc"
#include "estiloescudojogador.agc"

inicializador()
EfeitosSonoros()
EfeitosVoz()
MostraLogo()
CriaBotoes()
DefineEstiloInimigos()
AnimacoesTelaInicio()
AjustaAdmobTeste()
CriaTextosVirtuais()
IniciaPontuacao()
AnimacoesCenario()
IniciaMusicas()
DefineEstiloExplosoes()
IniciaExplosoes()
IniciaAltaPontuacao()
AjustaConfiguracoesOriginais()
IniciaOpcoes()
IniciaElementosBonus()
DefineEscudoJogador()




do
	ContadordeTempo()
	DispensaLogo()	
	EntradasdoUsuario()	 	
	
	if TelaInicial = TRUE
	UpdateAnimacoesTelaInicio()
	endif	
	
	if JogoEmCurso = TRUE
		
		AtualizaExplosoes()
		AtualizaExplosoesJogador()
		AtualizaBalasJogador()
	    AtualizaBalasInimigos()
	    AtualizaMovimentoInimigos()
	    UpdateAnimacoesCenario()
	    UpdateElementosBonus()
	    ContadordeTempo()
	    
	    if MissilPerseguidorAtivo = TRUE
			 MissilPerseguidorInimigo()
					
		endif
		
		if EscudoProtetorAtivo = TRUE	
			
			EscudoMissilInimigo()
			
		endif
	    
	    if TipoJoystick = 0
	
	x# = GetDirectionX ( )
    y# = GetDirectionY ( )
  

    //Print ( x# )
    //Print ( y# )


    //SetSpritePosition ( 999, GetSpriteX ( 999 ) + x#, GetSpriteY ( 999 ) + y# )


    if ( x# < 0 )
        
        MovimentaJogador(MovEsquerda)
        	
    endif


    if ( x# > 0 )
        
        MovimentaJogador(MovDireita)		
	
    endif
    
    /*
    
    if ( y# > 0 )
        
        PlayerDown()
		movePlayerY(cDOWN)		
	
    endif


    if ( y# < 0 )
        
        PlayerUP()
        movePlayerY(cUP)		
	
    endif
    
    */
    
    endif
    
    endif
	
	Sync()	
loop
