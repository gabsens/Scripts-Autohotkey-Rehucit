; Le but du script est de créer les mouvements 01 des agents dont l'arrêté est revenu signé.

F2::
Loop, 10{

	; copie matricule
	CoordMode, Mouse, Screen
	SendInput ^c
	
	; saisie matricule
	WinActivate Grades
	Click 715, 137
	SendInput ^a{Del}
	Sleep, 100
	SendInput ^v
	SendInput {Enter}
	Sleep, 2000
	
	; passage Carriere/Affectations
	Click 97, 392 	
	Sleep, 1000
	
	Click 743, 250	; Valider
	Sleep, 3000
	SetKeyDelay, 40
	Send {Tab}02{Tab}1611
	Sleep, 2000
	SendInput {Enter}
	Sleep, 4000
	SendInput ^w
	Sleep, 2000
	
	; passage Creations mvts
	Click 103,640
	Sleep, 3000
	Send {Tab}11/2016{Tab}{Tab}3{Tab}00{Tab}{Tab}{Tab}{Tab}{Tab}01{Tab}{Del}{Tab}{Del}{Tab}{Del}{Tab}{Del}
	Click 433, 891
	Click 434, 951
	Sleep, 500
	SendInput {Enter}
	Sleep, 3000
	SendInput {Enter}
	Sleep, 3000
	SendInput {Enter}
	
	; passage Consultation
	Sleep, 3000
	Click 181,677
	Sleep, 4000
	Click 9,162 ; Attention, il faut avoir déjà saisi 201611 au préalable
	Sleep, 2000
	Click 43,473
	Sleep, 1000
	Click 252,294
	Sleep, 5000
	Click 39,335
	Click 269,454	; Attention, il faut avoir imprimé en paysage au préalable
	
	Sleep, 2000
	WinActivate PROMO
	SendInput {Right}
	Sleep, 200
	Send x{Down}{Left}

		
}	
Esc::ExitApp
Return
	
	
	
	
