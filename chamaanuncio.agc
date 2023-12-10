// File: chamaanuncio.agc
// Created: 22-03-12


function AjustaAdmobTeste()
	
	//SetAdMobTesting ( 1 ) //mode - 0 = show paying ads, 1 = show test ads
	
endfunction


function ChamaAnuncioBanner()
	
	//id_teste:ca-app-pub-xxxx
	
	//id_meu: ca-app-pub-xxxx

SetAdMobDetails("ca-app-pub-xxxx")

//Create and Position the Advert
CreateAdvert(0, 1, 2, 0)
//Make Advert Visible
SetAdvertVisible ( 1 )


Repeat
    sync()
Until Timer()>10

endfunction

function ChamaAnuncioIntersticial()
	
	//id_teste:ca-app-pub-xxxxx
	
	//id_meu: ca-app-pub-xxxx

	SetAdMobDetails("ca-app-pub-xxxxx")
	
	GetFullscreenAdvertLoadedAdMob()		
	
		Repeat
			GetFullscreenAdvertLoadedAdMob()	
			ShowFullscreenAdvertAdMob() 
    sync()
Until Timer()>10	
	
endfunction

