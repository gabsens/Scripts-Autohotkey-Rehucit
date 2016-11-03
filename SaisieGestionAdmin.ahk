F2::
Loop, 10{
  CoordMode, Mouse, Screen 
  
  ; Copie matricule
  SendInput ^c
  
  WinActivate Grades
  
  ; Saisie matricule
  Click 604, 158
  SendInput ^a{Del}
  Sleep, 100
  SendInput ^v
  SendInput {Enter}
  Sleep, 2000
  
  ; Passage Carrière détaillée
  Click 703, 233
  Sleep, 1000
  SetKeyDelay, 40
  Sleep, 2000
  Send {Tab}2016{Tab}B{Tab}3K01{Tab}01/08/2016{Tab}01{Tab}PS{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}{Tab}01/08/2016{Enter}
  Sleep, 2000
  SendInput {Enter}
  Sleep, 4000
  SendInput {Enter}
  Sleep, 1000
  SendInput {Enter}
  SendInput ^w
  Sleep, 2000
  
  ; La carrière a été mise à jour 
  ; Retour tableau
  WinActivate PROMO
  SendInput {Right}
  Sleep, 200
  Send x{Down}{Left}
}
Esc::ExitApp
Return
