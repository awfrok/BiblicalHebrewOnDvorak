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
; #MaxThreadsPerHotkey 5

; SendMode "Input"

Suspend True ; initially suspended

#SuspendExempt

!F5:: ; turn on Hebrew helper
{
	Suspend False
	;~ onTooltipHebrew()
}

!F6:: ; turn off Hebrew Helper
{
	Suspend True
}

; message from IMEHelper: wParam 0 = off, 1 = on
OnMessage 0x5501, (wParam, *) => Suspend(!wParam)

;~ ^+!F12::exitapp
#SuspendExempt False


; onTooltipHebrew() {
; 	ToolTip "HBR"
; 	;~ Sleep 500
; 	SetTimer () => ToolTip, -500
; }


;===== place holder
;:*?C:y::{U+25CC} ; ◌ place holder
y::Send "{U+25CC}" ; ◌ place holder


;=========== consonants

;----Alef
;:*?C:a::{U+05D0} ; א
a::Send "{U+05D0}" ; א

;----Bet
;:*?C:b::{U+05D1} ; ב
b::Send "{U+05D1}" ; ב

;----Gimel
;:*?C:c::{U+05D2} ; ג
c::Send "{U+05D2}" ; ג

;----Dalet
;:*?C:d::{U+05D3} ; ד
d::Send "{U+05D3}" ; ד

;----He
;:*?C:e::{U+05D4} ; ה
e::Send "{U+05D4}" ; ה

;----Vav
;:*?C:f::{U+05D5} ; ו
f::Send "{U+05D5}" ; ו
;:*?C:u::{U+05D5} ; ו
u::Send "{U+05D5}" ; ו

;----Zayin
;:*?C:g::{U+05D6} ; ז
g::Send "{U+05D6}" ; ז

;----Ḥet
;:*?C:h::{U+05D7} ; ח
h::Send "{U+05D7}" ; ח

;----Tet
;:*?C:i::{U+05D8} ; ט
i::Send "{U+05D8}" ; ט

;----Yod
;:*?C:j::{U+05D9} ; י
j::Send "{U+05D9}" ; י

;----Kaf final
;:*?C:K::{U+05DA} ; ך
+k::Send "{U+05DA}" ; ך
;----Kaf
;:*?C:k::{U+05DB} ; כ
k::Send "{U+05DB}" ; כ

;----Lamed
;:*?C:l::{U+05DC} ; ל
l::Send "{U+05DC}" ; ל

;----Mem final
;:*?C:M::{U+05DD} ; ם
+m::Send "{U+05DD}" ; ם
;----Mem
;:*?C:m::{U+05DE} ; מ
m::Send "{U+05DE}" ; מ

;----Nun Final
;:*?C:N::{U+05DF} ; ן
+n::Send "{U+05DF}" ; ן
;----Nun
;:*?C:n::{U+05E0} ; נ
n::Send "{U+05E0}" ; נ

;----Samekh
;:*?C:z::{U+05E1} ; ס
z::Send "{U+05E1}" ; ס

;----Ayin
;:*?C:o::{U+05E2} ; ע
o::Send "{U+05E2}" ; ע

;----Pe final
;:*?C:P::{U+05E3} ; ף
+p::Send "{U+05E3}" ; ף
;----Pe
;:*?C:p::{U+05E4} ; פ
p::Send "{U+05E4}" ; פ

;----Tsade Final
;:*?C:X::{U+05E5} ; ץ
+x::Send "{U+05E5}" ; ץ
;----Tsade
;:*?C:x::{U+05E6} ; צ
x::Send "{U+05E6}" ; צ

;----Qof
;:*?C:q::{U+05E7} ; ק
q::Send "{U+05E7}" ; ק

;---Resh
;:*?C:r::{U+05E8} ; ר
r::Send "{U+05E8}" ; ר

;----Shin,sin
;:*?C:s::{U+05E9} ; ש
s::Send "{U+05E9}" ; ש
;----Shin dot
;:*?C:S::{U+05C1} ; ◌ׁ
+s::Send "{U+05C1}" ; ◌ׁ
;---- sin dot
;:*?C:B::{U+05C2} ; ◌ׂ
+b::Send "{U+05C2}" ; ◌ׂ

;----Tav
;:*?C:t::{U+05EA} ; ת
t::Send "{U+05EA}" ; ת



;========== cantillation marks

;----Atnaḥ
;:*?C:W::{U+0591} ; ◌֑
+w::Send "{U+0591}" ; ◌֑

;----Zaqef qatan
;:*?C:V::{U+0594} ; ◌֔
+v::Send "{U+0594}" ; ◌֔

;----Segolta
w::Send "{U+0592}" ; ◌֒

;----Zaqef gadol
v::Send "{U+0595}" ; ◌֕

;----Ole
;:*?C:Z::{U+05AB} ; ◌֫
+z::Send "{U+05AB}" ; ◌֫


;========== Vowels

;----Sheva
;:*?C:I::{U+05B0} ; ◌ְ
+i::Send "{U+05B0}" ; ◌ְ

;----Hataf segol
;:*?C:E::{U+05B1} ; ◌ֱ
+e::Send "{U+05B1}" ; ◌ֱ

;----Hataf Pataḥ
;:*?C:O::{U+05B2} ; ◌ֲ
+o::Send "{U+05B2}" ; ◌ֲ

;----Hataf Qamats
;:*?C:A::{U+05B3} ; ◌ֳ
+a::Send "{U+05B3}" ; ◌ֳ

;----Hiriq
;:*?C:G::{U+05B4} ; ◌ִ
+g::Send "{U+05B4}" ; ◌ִ

;---- Tsere
;:*?C:C::{U+05B5} ; ◌ֵ
+c::Send "{U+05B5}" ; ◌ֵ

;---- Segol
;:*?C:R::{U+05B6} ; ◌ֶ
+r::Send "{U+05B6}" ; ◌ֶ

;---- Pataḥ
;:*?C:H::{U+05B7} ; ◌ַ
+h::Send "{U+05B7}" ; ◌ַ

;---- Qamats
;:*?C:T::{U+05B8} ; ◌ָ
+t::Send "{U+05B8}" ; ◌ָ

;---- Qamats qatan
+y::Send "{U+05C7}" ; ◌ׇ

;---- Holam
;:*?C:D::{U+05B9} ; ◌ֹ
+d::Send "{U+05B9}" ; ◌ֹ
;---- Holam haser for Vav
;:*?C:F::{U+05BA}
+f::Send "{U+05BA}"

;----Qubuts
;:*?C:U::{U+05BB} ; ◌ֻ
+u::Send "{U+05BB}" ; ◌ֻ

;---- Dagesh or Mapiq
;:*?C:J::{U+05BC} ; ◌ּ
+j::Send "{U+05BC}" ; ◌ּ

;---- Meteg, Siluq
;:*?C:Q::{U+05BD} ; ◌ֽ
+q::Send "{U+05BD}" ; ◌ֽ

;---- Maqaf
;:*?C:-::{U+05BE} ; ◌־◌
-::Send "{U+05BE}" ; ◌־◌

;---- Rafe
+-::Send "{U+05BF}" ; ◌ֿ

;---- Paseq
;:*?C:L::{U+05C0} ; ׀
+l::Send "{U+05C0}" ; ׀

;----Sof Pasuq
;:*?C:`:::{U+05C3} ; ׃
+;::Send "{U+05C3}" ; ׃

