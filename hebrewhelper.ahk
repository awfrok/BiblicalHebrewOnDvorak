; # win
; ! alt
; ^ ctrl
; + shift
; > right
; < left

;@Ahk2Exe-SetMainIcon shin.ico
;@Ahk2Exe-AddResource shin-gr.ico, 206

#Requires AutoHotkey >=2.0 64-bit
#SingleInstance force
#MaxThreadsPerHotkey 5

SendMode "Input"

Suspend True ; initially suspended

#SuspendExempt
;~ >+Space:: ; RCtrl Space in IMEHelper turns on Hebrew helper
^!F5:: ; turn on Hebrew helper
{
	Suspend False
	onTooltipHebrew()
}


^!F6:: ; turn off Hebrew Helper
{
	Suspend True
}

;~ ^+!F12::exitapp
#SuspendExempt False


onTooltipHebrew() {
	ToolTip "HBR"
	Sleep 500
	ToolTip
}


;===== place holder
:*?C:Y::{U+25CC} ; ◌ place holder
;=========== consonants

;----Alef
:*?C:a::{U+05D0}

;----Bet
:*?C:b::{U+05D1}

;----Gimel
:*?C:c::{U+05D2}

;----Dalet
:*?C:d::{U+05D3}

;----He
:*?C:e::{U+05D4}

;----Vav
:*?C:f::{U+05D5}
:*?C:u::{U+05D5}

;----Zayin
:*?C:g::{U+05D6}

;----Ḥet
:*?C:h::{U+05D7}

;----Tet
:*?C:i::{U+05D8}

;----Yod
:*?C:j::{U+05D9}

;----Kaf final
:*?C:K::{U+05DA}
;----Kaf
:*?C:k::{U+05DB}

;----Lamed
:*?C:l::{U+05DC}

;----Mem final
:*?C:M::{U+05DD}
;----Men
:*?C:m::{U+05DE}

;----Nun Final
:*?C:N::{U+05DF}
;----Nun
:*?C:n::{U+05E0}

;----Samekh
:*?C:z::{U+05E1}

;----Ayin
:*?C:o::{U+05E2}

;----Pe final
:*?C:P::{U+05E3}
;----Pe
:*?C:p::{U+05E4}

;----Tsade Final
:*?C:X::{U+05E5}
;----Tsade
:*?C:x::{U+05E6}

;----Qof
:*?C:q::{U+05E7}

;---Resh
:*?C:r::{U+05E8}

;----Shin,sin
:*?C:s::{U+05E9}
;----Shin dot
:*?C:S::{U+05C1}
;---- sin dot
:*?C:B::{U+05C2}

;----Tav
:*?C:t::{U+05EA}

;========== not assinged
;----y
:*?C:y::{}
;----w
:*?C:w::{}
;----v
:*?C:v::{}
;----F
:*?C:F::{}
;-----I
;:*?C:I::{}



;========== cantilation marks

;----Atnaḥ
:*?C:W::{U+0591}

;----Zaqef qatan
:*?C:V::{U+0594}

;----Ole
:*?C:Z::{U+05AB}


;========== Vowels

;----Sheva
:*?C:I::{U+05B0}

;----Hataf segol
:*?C:E::{U+05B1}

;----Hataf Pataḥ
:*?C:O::{U+05B2}

;----Hataf Qamats
:*?C:A::{U+05B3}

;----Hiriq
:*?C:G::{U+05B4}

;---- Tsere
:*?C:C::{U+05B5}

;---- Segol
:*?C:R::{U+05B6}

;---- Pataḥ
:*?C:H::{U+05B7}

;---- Qamats
:*?C:T::{U+05B8}

;---- Holam
:*?C:D::{U+05B9}
;---- Holam haser for Vav
:*?C:F::{U+05BA}

;----Qubuts
:*?C:U::{U+05BB}

;---- Dagesh or Mapiq
:*?C:J::{U+05BC}

;---- Meteg, Siluq
:*?C:Q::{U+05BD}

;---- Maqaf
:*?C:-::{U+05BE}

;---- Paseq
:*?C:L::{U+05C0}

;----Sof Pasuq
:*?C:`:::{U+05C3}


