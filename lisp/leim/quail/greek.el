;;; greek.el --- Quail package for inputting Greek -*- coding: utf-8; lexical-binding:t -*-

;; Copyright (C) 2001-2024 Free Software Foundation, Inc.
;; Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
;;   2006, 2007, 2008, 2009, 2010, 2011
;;   National Institute of Advanced Industrial Science and Technology (AIST)
;;   Registration Number H14PRO021

;; Keywords: multilingual, input method, Greek

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'quail)

(quail-define-package
 "greek-jis" "Greek" "Ω" nil
 "Ελληνικα: Greek keyboard layout (JIS X0208.1983)

The layout is same as greek, but uses JIS characters.
Sorry, accents and terminal sigma are not supported in JIS."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("1" ?１)
 ("2" ?２)
 ("3" ?３)
 ("4" ?４)
 ("5" ?５)
 ("6" ?６)
 ("7" ?７)
 ("8" ?８)
 ("9" ?９)
 ("0" ?０)
 ("-" ?−)
 ("=" ?＝)
 ("`" ?‘)
 ("q" ?・)
 ("w" ?σ)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\［)
 ("]" ?\］)
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?’)
 ("'" ?’)
 ("\\" ?＼)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?, )
 ("." ?. )
 ("/" ?／)

 ("!" ?！)
 ("@" ?＠)
 ("#" ?＃)
 ("$" ?＃)
 ("%" ?％)
 ("^" ?＾)
 ("&" ?＆)
 ("*" ?＊)
 ("(" ?\（)
 (")" ?\）)
 ("_" ?＿)
 ("+" ?＋)
 ("~" ?￣)
 ("Q" ?−)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Ρ)
 ("{" ?\｛)
 ("}" ?\｝)
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?”)
 ("\"" ?”)
 ("|" ?｜)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?；)
 (">" ?：)
 ("?" ?？))

;;

(quail-define-package "greek-mizuochi" "Greek" "CG" t
"The Mizuochi input method for Classical Greek using mule-unicode-0100-24ff.

-------------------------------------
character     capital	      small
-------------------------------------
alpha		A		a
beta		B		b
gamma		G		g
delta		D		d
epsilon		E		e
zeta		Z		z
eta		H		h
theta		Q		q
iota		I		i
kappa		K		k
lambda		L		l
mu		M		m
nu		N		n
xi		X		x
omicron		O		o
pi		P		p
rho		R		r
sigma		S		s
final sigma			j
tau		T		t
upsilon		U		u
phi		F		f
chi		C		c
psi		Y		y
omega		W		w
-------------------------------------
sampi				!
digamma		#
stigma				$
koppa		&		%
-------------------------------------

------------------------
mark		key
------------------------
ypogegrammeni	J
psili		\\='  or  v
dasia		\\=`  or  V
oxia		/
varia		?
perispomeni	\\  or  ^
dialytika	\"
ano teleia	:
erotimatiko	;
----------------------
"
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("!" ?ϡ) ; sampi
 ("#" ?Ϝ) ; DIGAMMA
 ("$" ?ϛ) ; stigma
 ("%" ?ϟ) ; koppa
 ("&" ?Ϟ) ; KOPPA
 ("'" ?᾿) ("v" ?᾿) ; psili
 ("/" ?´) ; oxia
 (":" ?·) ; ano teleia
 (";" ?;) ; erotimatiko
 ("\"" ?¨) ; dialytika

 ("A" ?Α)
 ("B" ?Β)
 ("C" ?Χ)
 ("D" ?Δ)
 ("E" ?Ε)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("I" ?Ι)
 ("wJ" ?ῳ)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("O" ?Ο)

 ("P" ?Π)
 ("Q" ?Θ)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("hJ" ?ῃ)
 ("W" ?Ω)
 ("X" ?Ξ)
 ("Y" ?Ψ)
 ("Z" ?Ζ)
 ("?" ?`) ; varia
 ("\\" ?῀) ("^" ?῀) ; perispomeni

 ("`" ?῾) ("V" ?῾) ; dasia
 ("a" ?α)
 ("b" ?β)
 ("c" ?χ)
 ("d" ?δ)
 ("e" ?ε)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("i" ?ι)
 ("j" ?ς)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("o" ?ο)

 ("p" ?π)
 ("q" ?θ)
 ("r" ?ρ)
 ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("aJ" ?ᾳ)
 ("w" ?ω)
 ("x" ?ξ)
 ("y" ?ψ)
 ("z" ?ζ)

 ("i`" ?ἱ) ("iV" ?ἱ)
 ("i'" ?ἰ) ("iv" ?ἰ)
 ("i/" ?ί)
 ("i`/" ?ἵ) ("iV/" ?ἵ) ("i/`" ?ἵ) ("i/V" ?ἵ)
 ("i'/" ?ἴ) ("iv/" ?ἴ) ("i/'" ?ἴ) ("i/v" ?ἴ)
 ("i?" ?ὶ)
 ("i`?" ?ἳ) ("iV?" ?ἳ) ("i?`" ?ἳ) ("i?V" ?ἳ)
 ("i'?" ?ἲ) ("iv?" ?ἲ) ("i?'" ?ἲ) ("i?v" ?ἲ)
 ("i^"  ?ῖ) ("i\\" ?ῖ)
 ("i`^"  ?ἷ) ("i`\\" ?ἷ) ("iV^"  ?ἷ) ("iV\\" ?ἷ)
 ("i^`"  ?ἷ) ("i\\`" ?ἷ) ("i^V"  ?ἷ) ("i\\V" ?ἷ)
 ("i'^"  ?ἶ) ("i'\\" ?ἶ) ("iv^"  ?ἶ) ("iv\\" ?ἶ)
 ("i^'"  ?ἶ) ("i\\'" ?ἶ) ("i^v"  ?ἶ) ("i\\v" ?ἶ)
 ("i\"" ?ϊ)
 ("i/\"" ?ΐ) ("i\"/" ?ΐ)
 ("i?\"" ?ῒ) ("i\"?" ?ῒ)

 ("^`"  ?῟) ("^V"  ?῟) ("\\`" ?῟) ("\\V" ?῟)
 ("`^"  ?῟) ("V^"  ?῟) ("`\\" ?῟) ("V\\" ?῟)
 ("^'"  ?῏) ("^v"  ?῏) ("\\'" ?῏) ("\\v" ?῏)
 ("'^"  ?῏) ("v^"  ?῏) ("'\\" ?῏) ("v\\" ?῏)
 ("/`" ?῞) ("/V" ?῞) ("`/" ?῞) ("V/" ?῞)
 ("/'" ?῎) ("/v" ?῎) ("'/" ?῎) ("v/" ?῎)
 ("?`" ?῝) ("?V" ?῝) ("`?" ?῝) ("V?" ?῝)
 ("?'" ?῍) ("?v" ?῍) ("'?" ?῍) ("v?" ?῍)
 ("\"/" ?΅) ("/\"" ?΅)
 ("\"?" ?῭) ("?\"" ?῭)

 ("e`" ?ἑ) ("eV" ?ἑ)
 ("e'" ?ἐ) ("ev" ?ἐ)
 ("e/" ?έ)
 ("e/`" ?ἕ) ("e/V" ?ἕ) ("e`/" ?ἕ) ("eV/" ?ἕ)
 ("e/'" ?ἔ) ("e/v" ?ἔ) ("e'/" ?ἔ) ("ev/" ?ἔ)
 ("e?" ?ὲ)
 ("e?`" ?ἓ) ("e?V" ?ἓ) ("e`?" ?ἓ) ("eV?" ?ἓ)
 ("e?'" ?ἒ) ("e?v" ?ἒ) ("e'?" ?ἒ) ("ev?" ?ἒ)

 ("a`" ?ἁ) ("aV" ?ἁ)
 ("a'" ?ἀ) ("av" ?ἀ)
 ("a/" ?ά)
 ("a/`" ?ἅ) ("a/V" ?ἅ) ("a`/" ?ἅ) ("aV/" ?ἅ)
 ("a/'" ?ἄ) ("a/v" ?ἄ) ("a'/" ?ἄ) ("av/" ?ἄ)
 ("a?" ?ὰ)
 ("a?`" ?ἃ) ("a?V" ?ἃ) ("a`?" ?ἃ) ("aV?" ?ἃ)
 ("a?'" ?ἂ) ("a?v" ?ἂ) ("a'?" ?ἂ) ("av?" ?ἂ)
 ("a^"  ?ᾶ) ("a\\" ?ᾶ)
 ("a^`"  ?ἇ) ("a^V"  ?ἇ) ("a\\`" ?ἇ) ("a\\V" ?ἇ)
 ("a`^"  ?ἇ) ("aV^"  ?ἇ) ("a`\\" ?ἇ) ("aV\\" ?ἇ)
 ("a^'"  ?ἆ) ("a^v"  ?ἆ) ("a\\'" ?ἆ) ("a\\v" ?ἆ)
 ("a'^"  ?ἆ) ("av^"  ?ἆ) ("a'\\" ?ἆ) ("av\\" ?ἆ)

 ("aJ`" ?ᾁ) ("aJV" ?ᾁ)
 ("aJ'" ?ᾀ) ("aJv" ?ᾀ)
 ("aJ/" ?ᾴ)
 ("aJ/`" ?ᾅ) ("aJ/V" ?ᾅ) ("aJ`/" ?ᾅ) ("aJV/" ?ᾅ)
 ("aJ/'" ?ᾄ) ("aJ/v" ?ᾄ) ("aJ'/" ?ᾄ) ("aJv/" ?ᾄ)
 ("aJ?" ?ᾲ)
 ("aJ?`" ?ᾃ) ("aJ?V" ?ᾃ) ("aJ`?" ?ᾃ) ("aJV?" ?ᾃ)
 ("aJ?'" ?ᾂ) ("aJ?v" ?ᾂ) ("aJ'?" ?ᾂ) ("aJv?" ?ᾂ)
 ("aJ^"  ?ᾷ) ("aJ\\" ?ᾷ)
 ("aJ^`"  ?ᾇ) ("aJ^V"  ?ᾇ) ("aJ\\`" ?ᾇ) ("aJ\\V" ?ᾇ)
 ("aJ`^"  ?ᾇ) ("aJV^"  ?ᾇ) ("aJ`\\" ?ᾇ) ("aJV\\" ?ᾇ)
 ("aJ^'"  ?ᾆ) ("aJ^v"  ?ᾆ) ("aJ\\'" ?ᾆ) ("aJ\\v" ?ᾆ)
 ("aJ'^"  ?ᾆ) ("aJv^"  ?ᾆ) ("aJ'\\" ?ᾆ) ("aJv\\" ?ᾆ)

 ("r`" ?ῥ) ("rV" ?ῥ)
 ("r'" ?ῤ) ("rv" ?ῤ)

 ("h`" ?ἡ) ("hV" ?ἡ)
 ("h'" ?ἠ) ("hv" ?ἠ)
 ("h/" ?ή)
 ("h/`" ?ἥ) ("h/V" ?ἥ) ("h`/" ?ἥ) ("hV/" ?ἥ)
 ("h/'" ?ἤ) ("h/v" ?ἤ) ("h'/" ?ἤ) ("hv/" ?ἤ)
 ("h?" ?ὴ)
 ("h?`" ?ἣ) ("h?V" ?ἣ) ("h`?" ?ἣ) ("hV?" ?ἣ)
 ("h?'" ?ἢ) ("h?v" ?ἢ) ("h'?" ?ἢ) ("hv?" ?ἢ)
 ("h^"  ?ῆ) ("h\\" ?ῆ)
 ("h^`"  ?ἧ) ("h^V"  ?ἧ) ("h\\`" ?ἧ) ("h\\V" ?ἧ)
 ("h`^"  ?ἧ) ("h`\\" ?ἧ) ("hV^"  ?ἧ) ("hV\\" ?ἧ)
 ("h^'"  ?ἦ) ("h^v"  ?ἦ) ("h\\'" ?ἦ) ("h\\v" ?ἦ)
 ("h'^"  ?ἦ) ("h'\\" ?ἦ) ("hv^"  ?ἦ) ("hv\\" ?ἦ)

 ("J" ?ͺ) ; ypogegrammeni

 ("hJ`" ?ᾑ) ("hJV" ?ᾑ)
 ("hJ'" ?ᾐ) ("hJv" ?ᾐ)
 ("hJ/" ?ῄ)
 ("hJ`/" ?ᾕ) ("hJV/" ?ᾕ) ("hJ/`" ?ᾕ) ("hJ/V" ?ᾕ)
 ("hJ'/" ?ᾔ) ("hJv/" ?ᾔ) ("hJ/'" ?ᾔ) ("hJ/v" ?ᾔ)
 ("hJ?" ?ῂ)
 ("hJ`?" ?ᾓ) ("hJV?" ?ᾓ) ("hJ?`" ?ᾓ) ("hJ?V" ?ᾓ)
 ("hJ'?" ?ᾒ) ("hJv?" ?ᾒ) ("hJ?'" ?ᾒ) ("hJ?v" ?ᾒ)
 ("hJ^"  ?ῇ) ("hJ\\" ?ῇ)
 ("hJ`^"  ?ᾗ) ("hJ`\\" ?ᾗ) ("hJV^"  ?ᾗ) ("hJV\\" ?ᾗ)
 ("hJ^`"  ?ᾗ) ("hJ\\`" ?ᾗ) ("hJ^V"  ?ᾗ) ("hJ\\V" ?ᾗ)
 ("hJ'^"  ?ᾖ) ("hJ'\\" ?ᾖ) ("hJv^"  ?ᾖ) ("hJv\\" ?ᾖ)
 ("hJ^'"  ?ᾖ) ("hJ\\'" ?ᾖ) ("hJ^v"  ?ᾖ) ("hJ\\v" ?ᾖ)

 ("o`" ?ὁ) ("oV" ?ὁ)
 ("o'" ?ὀ) ("ov" ?ὀ)
 ("o/" ?ό)
 ("o/`" ?ὅ) ("o/V" ?ὅ) ("o`/" ?ὅ) ("oV/" ?ὅ)
 ("o/'" ?ὄ) ("o/v" ?ὄ) ("o'/" ?ὄ) ("ov/" ?ὄ)
 ("o?" ?ὸ)
 ("o?`" ?ὃ) ("o?V" ?ὃ) ("o`?" ?ὃ) ("oV?" ?ὃ)
 ("o?'" ?ὂ) ("o?v" ?ὂ) ("o'?" ?ὂ) ("ov?" ?ὂ)

 ("u`" ?ὑ) ("uV" ?ὑ)
 ("u'" ?ὐ) ("uv" ?ὐ)
 ("u/" ?ύ)
 ("u/`" ?ὕ) ("u/V" ?ὕ) ("u`/" ?ὕ) ("uV/" ?ὕ)
 ("u/'" ?ὔ) ("u/v" ?ὔ) ("u'/" ?ὔ) ("uv/" ?ὔ)
 ("u?" ?ὺ)
 ("u?`" ?ὓ) ("u?V" ?ὓ) ("u`?" ?ὓ) ("uV?" ?ὓ)
 ("u?'" ?ὒ) ("u?v" ?ὒ) ("u'?" ?ὒ) ("uv?" ?ὒ)
 ("u^"  ?ῦ) ("u\\" ?ῦ)
 ("u^`"  ?ὗ) ("u^V"  ?ὗ) ("u\\`" ?ὗ) ("u\\V" ?ὗ)
 ("u`^"  ?ὗ) ("uV^"  ?ὗ) ("u`\\" ?ὗ) ("uV\\" ?ὗ)
 ("u^'"  ?ὖ) ("u^v"  ?ὖ) ("u\\'" ?ὖ) ("u\\v" ?ὖ)
 ("u'^"  ?ὖ) ("uv^"  ?ὖ) ("u'\\" ?ὖ) ("uv\\" ?ὖ)
 ("u\"" ?ϋ)
 ("u\"/" ?ΰ) ("u/\"" ?ΰ)
 ("u\"?" ?ῢ) ("u?\"" ?ῢ)

 ("w`" ?ὡ) ("wV" ?ὡ)
 ("w'" ?ὠ) ("wv" ?ὠ)
 ("w/" ?ώ)
 ("w/`" ?ὥ) ("w/V" ?ὥ) ("w`/" ?ὥ) ("wV/" ?ὥ)
 ("w/'" ?ὤ) ("w/v" ?ὤ) ("w'/" ?ὤ) ("wv/" ?ὤ)
 ("w?" ?ὼ)
 ("w?`" ?ὣ) ("w?V" ?ὣ) ("w`?" ?ὣ) ("wV?" ?ὣ)
 ("w?'" ?ὢ) ("w?v" ?ὢ) ("w'?" ?ὢ) ("wv?" ?ὢ)
 ("w^"  ?ῶ) ("w\\" ?ῶ)
 ("w^`"  ?ὧ) ("w^V"  ?ὧ) ("w\\`" ?ὧ) ("w\\V" ?ὧ)
 ("w`^"  ?ὧ) ("wV^"  ?ὧ) ("w`\\" ?ὧ) ("wV\\" ?ὧ)
 ("w^'"  ?ὦ) ("w^v"  ?ὦ) ("w\\'" ?ὦ) ("w\\v" ?ὦ)
 ("w'^"  ?ὦ) ("wv^"  ?ὦ) ("w'\\" ?ὦ) ("wv\\" ?ὦ)

 ("wJ`" ?ᾡ) ("wJV" ?ᾡ)
 ("wJ'" ?ᾠ) ("wJv" ?ᾠ)
 ("wJ/" ?ῴ)
 ("wJ/`" ?ᾥ) ("wJ/V" ?ᾥ) ("wJ`/" ?ᾥ) ("wJV/" ?ᾥ)
 ("wJ/'" ?ᾤ) ("wJ/v" ?ᾤ) ("wJ'/" ?ᾤ) ("wJv/" ?ᾤ)
 ("wJ?" ?ῲ)
 ("wJ?`" ?ᾣ) ("wJ?V" ?ᾣ) ("wJ`?" ?ᾣ) ("wJV?" ?ᾣ)
 ("wJ?'" ?ᾢ) ("wJ?v" ?ᾢ) ("wJ'?" ?ᾢ) ("wJv?" ?ᾢ)
 ("wJ^"  ?ῷ) ("wJ\\" ?ῷ)
 ("wJ^`"  ?ᾧ) ("wJ^V"  ?ᾧ) ("wJ\\`" ?ᾧ) ("wJ\\V" ?ᾧ)
 ("wJ`^"  ?ᾧ) ("wJV^"  ?ᾧ) ("wJ`\\" ?ᾧ) ("wJV\\" ?ᾧ)
 ("wJ^'"  ?ᾦ) ("wJ^v"  ?ᾦ) ("wJ\\'" ?ᾦ) ("wJ\\v" ?ᾦ)
 ("wJ'^"  ?ᾦ) ("wJv^"  ?ᾦ) ("wJ'\\" ?ᾦ) ("wJv\\" ?ᾦ)
 )

;;

(quail-define-package "greek-babel" "Greek" "BG" t
"The TeX Babel input method for Classical Greek using mule-unicode-0100-24ff.

-------------------------------------
character     capital	      small
-------------------------------------
alpha		A		a
beta		B		b
gamma		G		g
delta		D		d
epsilon		E		e
zeta		Z		z
eta		H		h
theta		J		j
iota		I		i
kappa		K		k
lambda		L		l
mu		M		m
nu		N		n
xi		X		x
omicron		O		o
pi		P		p
rho		R		r
sigma		S		s
final sigma			c
tau		T		t
upsilon		U		u
phi		F		f
chi		Q		q
psi		Y		y
omega		W		w
-------------------------------------
sampi				!
digamma		#
stigma				$
koppa		&		%
-------------------------------------

------------------------
mark		key
------------------------
ypogegrammeni	|
psili		>
dasia		<
oxia		\\='
koronis		\\='\\='
varia		\\=`
perispomeni	~
dialytika	\"
ano teleia	;
erotimatiko	?
----------------------
"
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("!" ?ϡ) ; sampi
 ("#" ?Ϝ) ; DIGAMMA
 ("$" ?ϛ) ; stigma
 ("%" ?ϟ) ; koppa
 ("&" ?Ϟ) ; KOPPA
 (">" ?᾿) ; psili
 ("'" ?´) ; oxia
 (";" ?·) ; ano teleia
 ("?" ?;) ; erotimatiko
 ("\"" ?¨) ; dialytika
 ("|" ?ͺ) ; ypogegrammeni
 ("''" ?᾽) ; koronis
 ("((" ?«) ; #x00ab
 ("))" ?») ; #x00bb

 ("A" ?Α)
 ("A|" ?ᾼ)
 ("B" ?Β)
 ("D" ?Δ)
 ("E" ?Ε)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("H|" ?ῌ)
 ("I" ?Ι)
 ("J" ?Θ)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("O" ?Ο)
 ("P" ?Π)
 ("Q" ?Χ)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("W" ?Ω)
 ("W|" ?ῼ)
 ("X" ?Ξ)
 ("Y" ?Ψ)
 ("Z" ?Ζ)
 ("`" ?`) ; varia
 ("~" ?῀) ; perispomeni

 ("<" ?῾) ; dasia
 ("a" ?α)
 ("a|" ?ᾳ)
 ("b" ?β)
 ("c" ?ς)
 ("d" ?δ)
 ("e" ?ε)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("h|" ?ῃ)
 ("i" ?ι)
 ("j" ?θ)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("o" ?ο)
 ("p" ?π)
 ("q" ?χ)
 ("r" ?ρ)
 ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("w" ?ω)
 ("w|" ?ῳ)
 ("x" ?ξ)
 ("y" ?ψ)
 ("z" ?ζ)

 ("<i" ?ἱ)
 (">i" ?ἰ)
 ("'i" ?ί)
 ("<'i" ?ἵ)
 (">'i" ?ἴ)
 ("`i" ?ὶ)
 ("<`i" ?ἳ)
 (">`i" ?ἲ)
 ("~i"  ?ῖ)
 ("<~i"  ?ἷ)
 (">~i"  ?ἶ)
 ("\"i" ?ϊ)
 ("\"'i" ?ΐ)
 ("\"`i" ?ῒ)

 ("<I" ?Ἱ)
 (">I" ?Ἰ)
 ("'I" ?Ί)
 ("<'I" ?Ἵ)
 (">'I" ?Ἴ)
 ("`I" ?Ὶ)
 ("<`I" ?Ἳ)
 (">`I" ?Ἲ)
 ("<~I"  ?Ἷ)
 (">~I"  ?Ἶ)
 ("\"I" ?Ϊ)

 ("<~"  ?῟)
 (">~"  ?῏)
 ("<'" ?῞)
 (">'" ?῎)
 ("<`" ?῝)
 (">`" ?῍)
 ("\"'" ?΅)
 ("\"`" ?῭)

 ("<e" ?ἑ)
 (">e" ?ἐ)
 ("'e" ?έ)
 ("<'e" ?ἕ)
 (">'e" ?ἔ)
 ("`e" ?ὲ)
 ("<`e" ?ἓ)
 (">`e" ?ἒ)

 ("<E" ?Ἑ)
 (">E" ?Ἐ)
 ("'E" ?Έ)
 ("<'E" ?Ἕ)
 (">'E" ?Ἔ)
 ("`E" ?Ὲ)
 ("<`E" ?Ἓ)
 (">`E" ?Ἒ)

 ("<a" ?ἁ)
 (">a" ?ἀ)
 ("'a" ?ά)
 ("<'a" ?ἅ)
 (">'a" ?ἄ)
 ("`a" ?ὰ)
 ("<`a" ?ἃ)
 (">`a" ?ἂ)
 ("~a"  ?ᾶ)
 ("<~a"  ?ἇ)
 (">~a"  ?ἆ)

 ("<A" ?Ἁ)
 (">A" ?Ἀ)
 ("'A" ?Ά)
 ("<'A" ?Ἅ)
 (">'A" ?Ἄ)
 ("`A" ?Ὰ)
 ("<`A" ?Ἃ)
 (">`A" ?Ἂ)
 ("<~A"  ?Ἇ)
 (">~A"  ?Ἆ)

 ("<a|" ?ᾁ)
 (">a|" ?ᾀ)
 ("'a|" ?ᾴ)
 ("<'a|" ?ᾅ)
 (">'a|" ?ᾄ)
 ("`a|" ?ᾲ)
 ("<`a|" ?ᾃ)
 (">`a|" ?ᾂ)
 ("~a|"  ?ᾷ)
 ("<~a|"  ?ᾇ)
 (">~a|"  ?ᾆ)

 ("<A|" ?ᾉ)
 (">A|" ?ᾈ)
 ("<'A|" ?ᾍ)
 (">'A|" ?ᾌ)
 ("<`A|" ?ᾋ)
 (">`A|" ?ᾊ)
 ("<~A|"  ?ᾏ)
 (">~A|"  ?ᾎ)

 ("<r" ?ῥ)
 (">r" ?ῤ)

 ("<R" ?Ῥ)

 ("<h" ?ἡ)
 (">h" ?ἠ)
 ("'h" ?ή)
 ("<'h" ?ἥ)
 (">'h" ?ἤ)
 ("`h" ?ὴ)
 ("<`h" ?ἣ)
 (">`h" ?ἢ)
 ("~h"  ?ῆ)
 ("<~h"  ?ἧ)
 (">~h"  ?ἦ)

 ("<H" ?Ἡ)
 (">H" ?Ἠ)
 ("'H" ?Ή)
 ("<'H" ?Ἥ)
 (">'H" ?Ἤ)
 ("`H" ?Ὴ)
 ("<`H" ?Ἣ)
 (">`H" ?Ἢ)
 ("<~H"  ?Ἧ)
 (">~H"  ?Ἦ)

 ("|" ?ͺ) ; ypogegrammeni

 ("<h|" ?ᾑ)
 (">h|" ?ᾐ)
 ("'h|" ?ῄ)
 ("<'h|" ?ᾕ)
 (">'h|" ?ᾔ)
 ("`h|" ?ῂ)
 ("<`h|" ?ᾓ)
 (">`h|" ?ᾒ)
 ("~h|"  ?ῇ)
 ("<~h|"  ?ᾗ)
 (">~h|"  ?ᾖ)

 ("<H|" ?ᾙ)
 (">H|" ?ᾘ)
 ("<'H|" ?ᾝ)
 (">'H|" ?ᾜ)
 ("<`H|" ?ᾛ)
 (">`H|" ?ᾚ)
 ("<~H|"  ?ᾟ)
 (">~H|"  ?ᾞ)

 ("<o" ?ὁ)
 (">o" ?ὀ)
 ("'o" ?ό)
 ("<'o" ?ὅ)
 (">'o" ?ὄ)
 ("`o" ?ὸ)
 ("<`o" ?ὃ)
 (">`o" ?ὂ)

 ("<O" ?Ὁ)
 (">O" ?Ὀ)
 ("'O" ?Ό)
 ("<'O" ?Ὅ)
 (">'O" ?Ὄ)
 ("`O" ?Ὸ)
 ("<`O" ?Ὃ)
 (">`O" ?Ὂ)

 ("<u"   ?ὑ)
 (">u"   ?ὐ)
 ("'u"   ?ύ)
 ("<'u"  ?ὕ)
 (">'u"  ?ὔ)
 ("`u"   ?ὺ)
 ("<`u"  ?ὓ)
 (">`u"  ?ὒ)
 ("~u"   ?ῦ)
 ("<~u"  ?ὗ)
 (">~u"  ?ὖ)
 ("\"u"  ?ϋ)
 ("\"'u" ?ΰ)
 ("`\"u" ?ῢ)

 ("<U"   ?Ὑ)
 ("'U"   ?Ύ)
 ("<'U"  ?Ὕ)
 ("`U"   ?Ὺ)
 ("<`U"  ?Ὓ)
 ("<~U"  ?Ὗ)
 ("\"U"  ?Ϋ)

 ("<w"  ?ὡ)
 (">w"  ?ὠ)
 ("'w"  ?ώ)
 ("<'w" ?ὥ)
 (">'w" ?ὤ)
 ("`w"  ?ὼ)
 ("<`w" ?ὣ)
 (">`w" ?ὢ)
 ("~w"  ?ῶ)
 ("<~w" ?ὧ)
 (">~w" ?ὦ)

 ("<W"  ?Ὡ)
 (">W"  ?Ὠ)
 ("'W"  ?Ώ)
 ("<'W" ?Ὥ)
 (">'W" ?Ὤ)
 ("`W"  ?Ὼ)
 ("<`W" ?Ὣ)
 (">`W" ?Ὢ)
 ("<~W" ?Ὧ)
 (">~W" ?Ὦ)

 ("<w|"	 ?ᾡ)
 (">w|"	 ?ᾠ)
 ("'w|"	 ?ῴ)
 ("<'w|" ?ᾥ)
 (">'w|" ?ᾤ)
 ("`w|"  ?ῲ)
 ("<`w|" ?ᾣ)
 (">`w|" ?ᾢ)
 ("~w|"	 ?ῷ)
 ("<~w|" ?ᾧ)
 (">~w|" ?ᾦ)

 ("<W|"	 ?ᾩ)
 (">W|"	 ?ᾨ)
 ("'W|"	 ?ῴ)
 ("<'W|" ?ᾭ)
 (">'W|" ?ᾬ)
 ("<`W|" ?ᾫ)
 (">`W|" ?ᾪ)
 ("<~W|" ?ᾯ)
 (">~W|" ?ᾮ)
 )

;;

(quail-define-package "greek-ibycus4" "Greek" "IB" t
"The Ibycus4 input method for Classical Greek using mule-unicode-0100-24ff."
nil t t nil nil nil nil nil nil nil t)

(quail-define-rules

 ("{((}" ?\() ("((" ?\() ; #x0028
 ("{))}" ?\)) ("))" ?\)) ; #x0029
 ("<<" ?«) ; #x00ab
 (">>" ?») ; #x00bb

 ("-" ?‐) ; #x2010
 ("---" ?—) ; #x2014
 ("||" ?‖) ; #x2016
 ("{`}" ?‘) ("`" ?‘) ; #x2018
 ("{'}" ?’) ("'" ?’) ; #x2019
 ("{``}" ?“) ("``" ?“) ; #x201c
 ("{''}" ?”) ("''" ?”) ; #x201d
 ("{\\dag}" ?†) ("\\dag" ?†) ; #x2020
 ("{\\ddag}" ?‡) ("\\ddag" ?‡) ; #x2021
 ("<" ?‹) ; #x2039
 (">" ?›) ; #x203a
 ("$\\leftarrow$" ?←) ; #x2190
 ("$\\rightarrow$" ?→) ; #x2192

 ("?" ?;) ; #x037e ; erotimatiko
 (";" ?·) ; #x0387 ; ano teleia
 ("|" ?ͺ) ; #x037a ; ypogegrammeni

 ("A" ?Α)
 ("B" ?Β)
 ("G" ?Γ)
 ("D" ?Δ)
 ("E" ?Ε)
 ("Z" ?Ζ)
 ("H" ?Η)
 ("Q" ?Θ)
 ("I" ?Ι)
 ("K" ?Κ)
 ("L" ?Λ)
 ("M" ?Μ)
 ("N" ?Ν)
 ("C" ?Ξ)
 ("O" ?Ο)
 ("P" ?Π)
 ("R" ?Ρ)
 ("S" ?Σ)
 ("T" ?Τ)
 ("U" ?Υ)
 ("F" ?Φ)
 ("X" ?Χ)
 ("Y" ?Ψ)
 ("W" ?Ω)

 ("a" ?α)
 ("b" ?β)
 ("g" ?γ)
 ("d" ?δ)
 ("e" ?ε)
 ("z" ?ζ)
 ("h" ?η)
 ("q" ?θ)
 ("i" ?ι)
 ("k" ?κ)
 ("l" ?λ)
 ("m" ?μ)
 ("n" ?ν)
 ("c" ?ξ)
 ("o" ?ο)
 ("p" ?π)
 ("r" ?ρ)
 ("j" ?ς) ("s " ["ς "]) ("s," ["ς,"]) ("s." ["ς."]) ("s?" ["ς;"]) ("s;" ["ς·"])
 ("s|" ?σ) ("s" ?σ)
 ("t" ?τ)
 ("u" ?υ)
 ("f" ?φ)
 ("x" ?χ)
 ("y" ?ψ)
 ("w" ?ω)

 ("i+" ?ϊ)
 ("u+" ?ϋ)
 ("V" ?Ϝ) ; DIGAMMA
 ("v" ?ϝ) ; digamma
 ("K+" ?Ϟ) ; KOPPA
 ("k+" ?ϟ) ; koppa
 ("S+" ?Ϡ) ; SAMPI
 ("s+" ?ϡ) ; sampi
 ("c+" ?ϲ) ; lunate sigma

 ("a)" ?ἀ)
 ("a(" ?ἁ)
 ("a)`" ?ἂ)
 ("a(`" ?ἃ)
 ("a)'" ?ἄ)
 ("a('" ?ἅ)
 ("a)=" ?ἆ)
 ("a(=" ?ἇ)

 (")A" ?Ἀ)
 ("(A" ?Ἁ)
 (")`A" ?Ἂ)
 ("(`A" ?Ἃ)
 (")'A" ?Ἄ)
 ("('A" ?Ἅ)
 (")=A" ?Ἆ)
 ("(=A" ?Ἇ)

 ("e)" ?ἐ)
 ("e(" ?ἑ)
 ("e)`" ?ἒ)
 ("e(`" ?ἓ)
 ("e)'" ?ἔ)
 ("e('" ?ἕ)

 (")E" ?Ἐ)
 ("(E" ?Ἑ)
 (")`E" ?Ἒ)
 ("(`E" ?Ἓ)
 (")'E" ?Ἔ)
 ("('E" ?Ἕ)

 ("h)" ?ἠ)
 ("h(" ?ἡ)
 ("h)`" ?ἢ)
 ("h(`" ?ἣ)
 ("h)'" ?ἤ)
 ("h('" ?ἥ)
 ("h)=" ?ἦ)
 ("h(=" ?ἧ)

 (")H" ?Ἠ)
 ("(H" ?Ἡ)
 (")`H" ?Ἢ)
 ("(`H" ?Ἣ)
 (")'H" ?Ἤ)
 ("('H" ?Ἥ)
 (")=H" ?Ἦ)
 ("(=H" ?Ἧ)

 ("i)" ?ἰ)
 ("i(" ?ἱ)
 ("i)`" ?ἲ)
 ("i(`" ?ἳ)
 ("i)'" ?ἴ)
 ("i('" ?ἵ)
 ("i)=" ?ἶ)
 ("i(=" ?ἷ)

 (")I" ?Ἰ)
 ("(I" ?Ἱ)
 (")`I" ?Ἲ)
 ("(`I" ?Ἳ)
 (")'I" ?Ἴ)
 ("('I" ?Ἵ)
 (")=I" ?Ἶ)
 ("(=I" ?Ἷ)

 ("o)" ?ὀ)
 ("o(" ?ὁ)
 ("o)`" ?ὂ)
 ("o(`" ?ὃ)
 ("o)'" ?ὄ)
 ("o('" ?ὅ)

 (")O" ?Ὀ)
 ("(O" ?Ὁ)
 (")`O" ?Ὂ)
 ("(`O" ?Ὃ)
 (")'O" ?Ὄ)
 ("('O" ?Ὅ)

 ("u)" ?ὐ)
 ("u(" ?ὑ)
 ("u)`" ?ὒ)
 ("u(`" ?ὓ)
 ("u)'" ?ὔ)
 ("u('" ?ὕ)
 ("u)=" ?ὖ)
 ("u(=" ?ὗ)

 ("(U" ?Ὑ)
 ("(`U" ?Ὓ)
 ("('U" ?Ὕ)
 ("(=U" ?Ὗ)

 ("w)" ?ὠ)
 ("w(" ?ὡ)
 ("w)`" ?ὢ)
 ("w(`" ?ὣ)
 ("w)'" ?ὤ)
 ("w('" ?ὥ)
 ("w)=" ?ὦ)
 ("w(=" ?ὧ)

 (")W" ?Ὠ)
 ("(W" ?Ὡ)
 (")`W" ?Ὢ)
 ("(`W" ?Ὣ)
 (")'W" ?Ὤ)
 ("('W" ?Ὥ)
 (")=W" ?Ὦ)
 ("(=W" ?Ὧ)

 ("a`" ?ὰ)
 ("a'" ?ά)
 ("e`" ?ὲ)
 ("e'" ?έ)
 ("h`" ?ὴ)
 ("h'" ?ή)
 ("i`" ?ὶ)
 ("i'" ?ί)
 ("o`" ?ὸ)
 ("o'" ?ό)
 ("u`" ?ὺ)
 ("u'" ?ύ)
 ("w`" ?ὼ)
 ("w'" ?ώ)

 ("a)|" ?ᾀ)
 ("a(|" ?ᾁ)
 ("a)`|" ?ᾂ)
 ("a(`|" ?ᾃ)
 ("a)'|" ?ᾄ)
 ("a('|" ?ᾅ)
 ("a)=|" ?ᾆ)
 ("a(=|" ?ᾇ)

 (")A|" ?ᾈ)
 ("(A|" ?ᾉ)
 (")`A|" ?ᾊ)
 ("(`A|" ?ᾋ)
 (")'A|" ?ᾌ)
 ("('A|" ?ᾍ)
 (")=A|" ?ᾎ)
 ("(=A|" ?ᾏ)

 ("h)|" ?ᾐ)
 ("h(|" ?ᾑ)
 ("h)`|" ?ᾒ)
 ("h(`|" ?ᾓ)
 ("h)'|" ?ᾔ)
 ("h('|" ?ᾕ)
 ("h)=|" ?ᾖ)
 ("h(=|" ?ᾗ)

 (")H|" ?ᾘ)
 ("(H|" ?ᾙ)
 (")`H|" ?ᾚ)
 ("(`H|" ?ᾛ)
 (")'H|" ?ᾜ)
 ("('H|" ?ᾝ)
 (")=H|" ?ᾞ)
 ("(=H|" ?ᾟ)

 ("w)|" ?ᾠ)
 ("w(|" ?ᾡ)
 ("w)`|" ?ᾢ)
 ("w(`|" ?ᾣ)
 ("w)'|" ?ᾤ)
 ("w('|" ?ᾥ)
 ("w)=|" ?ᾦ)
 ("w(=|" ?ᾧ)

 (")W|" ?ᾨ)
 ("(W|" ?ᾩ)
 (")`W|" ?ᾪ)
 ("(`W|" ?ᾫ)
 (")'W|" ?ᾬ)
 ("('W|" ?ᾭ)
 (")=W|" ?ᾮ)
 ("(=W|" ?ᾯ)

 ("a`|" ?ᾲ)
 ("a|" ?ᾳ)
 ("a'|" ?ᾴ)
 ("a=" ?ᾶ)
 ("a=|" ?ᾷ)

 ("`A" ?Ὰ)
 ("'A" ?Ά)
 ("A|" ?ᾼ)

 (")" ?᾿) ; #x1fbf ; psili
 ("=" ?῀) ; #x1fc0 ; perispomeni
 ("+=" ?῁) ; #x1fc1

 ("h`|" ?ῂ)
 ("h|" ?ῃ)
 ("h'|" ?ῄ)
 ("h=" ?ῆ)
 ("h=|" ?ῇ)

 ("`E" ?Ὲ)
 ("'E" ?Έ)

 ("`H" ?Ὴ)
 ("'H" ?Ή)
 ("H|" ?ῌ)

 (")`" ?῍) ; #x1fcd
 (")'" ?῎) ; #x1fce
 (")=" ?῏) ; #x1fcf

 ("i+`" ?ῒ)
 ("i+'" ?ΐ)
 ("i=" ?ῖ)
 ("i+=" ?ῗ)

 ("`I" ?Ὶ)
 ("'I" ?Ί)

 ("(`" ?῝) ; #x1fdd
 ("('" ?῞) ; #x1fde
 ("(=" ?῟) ; #x1fdf

 ("u+`" ?ῢ)
 ("u+'" ?ΰ)

 ("r)" ?ῤ)
 ("r(" ?ῥ)

 ("u=" ?ῦ)
 ("u+=" ?ῧ)

 ("`U" ?Ὺ)
 ("'U" ?Ύ)

 ("`R" ?Ῥ)
 ("(R" ?Ῥ)

 ("+`" ?῭) ; #x1fed
 ("+'" ?΅) ; #x1fee
 ("`" ?`) ; #x1fef ; varia

 ("w`|" ?ῲ)
 ("w|" ?ῳ)
 ("w'|" ?ῴ)
 ("w=" ?ῶ)
 ("w=|" ?ῷ)

 ("`O" ?Ὸ)
 ("'O" ?Ό)

 ("`W" ?Ὼ)
 ("'W" ?Ώ)
 ("W|" ?ῼ)

 ("'" ?´) ; #x1ffd ; oxia
 ("(" ?῾) ;  #x1ffe ; dasia
)

;;

(quail-define-package
 "greek" "Greek" "Ω" nil
 "Ελληνικά: Greek keyboard layout (ISO 8859-7)
--------------

In the right of λ key is a combination key, where
 ΄ acute
 ¨ diaeresis

e.g.
 ΄ + α -> ά
 ¨ + ι -> ϊ
 ¨ + ΄ + ι -> ΐ"
 nil t t t t nil nil nil nil nil t)

;; 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  `~
;;  ;:  ςΣ  εΕ  ρΡ  τΤ  υΥ  θΘ  ιΙ  οΟ  πΠ  [{  ]}
;;   αΑ  σΣ  δΔ  φΦ  γΓ  ηΗ  ξΞ  κΚ  λΛ  ΄¨  '"  \|
;;    ζΖ  χΧ  ψΨ  ωΩ  βΒ  νΝ  μΜ  ,<  .>  /?

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("`" ?`)
 ("q" ?\;)
 ("w" ?ς)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\[)
 ("]" ?\])
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?΄)
 ("'" ?')
 ("\\" ?\\)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?,)
 ("." ?.)
 ("/" ?/)

 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("~" ?~)
 ("Q" ?:)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Π)
 ("{" ?{)
 ("}" ?})
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?¨)
 (";:" ?΅)
 (":;" ?΅)
 ("\"" ?\")
 ("|" ?|)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?<)
 (">" ?>)
 ("?" ??)

 (";a" ?ά)
 (";e" ?έ)
 (";h" ?ή)
 (";i" ?ί)
 (";o" ?ό)
 (";y" ?ύ)
 (";v" ?ώ)
 (";A" ?Ά)
 (";E" ?Έ)
 (";H" ?Ή)
 (";I" ?Ί)
 (";O" ?Ό)
 (";Y" ?Ύ)
 (";V" ?Ώ)
 (":i" ?ϊ)
 (":y" ?ϋ)
 (":I" ?Ϊ)
 (":Y" ?Ϋ)
 (";:i" ?ΐ)
 (":;i" ?ΐ)
 (";:y" ?ΰ)
 (":;y" ?ΰ)
 (";<" ?«)
 (";>" ?»)
 ("<<" ?«)
 (">>" ?»))

(quail-define-package
 "greek-postfix" "GreekPost" "Ψ" nil
 "Ελληνικά: Greek keyboard layout with postfix accents (ISO 8859-7)
--------------

In the right of λ key is a combination key, where
 ΄ acute
 ¨ diaeresis

e.g.
 α + ΄ -> ά
 ι + ¨ -> ϊ
 ι + ¨ + ΄ -> ΐ"
 nil t t t t nil nil nil nil nil t)

;; 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  `~
;;  ·―  ςΣ  εΕ  ρΡ  τΤ  υΥ  θΘ  ιΙ  οΟ  πΠ  [{  ]}
;;   αΑ  σΣ  δΔ  φΦ  γΓ  ηΗ  ξΞ  κΚ  λΛ  ΄¨  '"  \|
;;    ζΖ  χΧ  ψΨ  ωΩ  βΒ  νΝ  μΜ  ,;  .:  /?

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("`" ?`)
 ("q" ?\;)
 ("w" ?ς)
 ("e" ?ε)
 ("r" ?ρ)
 ("t" ?τ)
 ("y" ?υ)
 ("u" ?θ)
 ("i" ?ι)
 ("o" ?ο)
 ("p" ?π)
 ("[" ?\[)
 ("]" ?\])
 ("a" ?α)
 ("s" ?σ)
 ("d" ?δ)
 ("f" ?φ)
 ("g" ?γ)
 ("h" ?η)
 ("j" ?ξ)
 ("k" ?κ)
 ("l" ?λ)
 (";" ?΄)
 ("'" ?')
 ("\\" ?\\)
 ("z" ?ζ)
 ("x" ?χ)
 ("c" ?ψ)
 ("v" ?ω)
 ("b" ?β)
 ("n" ?ν)
 ("m" ?μ)
 ("," ?,)
 ("." ?.)
 ("/" ?/)

 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("~" ?~)
 ("Q" ?:)
 ("W" ?Σ)
 ("E" ?Ε)
 ("R" ?Ρ)
 ("T" ?Τ)
 ("Y" ?Υ)
 ("U" ?Θ)
 ("I" ?Ι)
 ("O" ?Ο)
 ("P" ?Π)
 ("{" ?{)
 ("}" ?})
 ("A" ?Α)
 ("S" ?Σ)
 ("D" ?Δ)
 ("F" ?Φ)
 ("G" ?Γ)
 ("H" ?Η)
 ("J" ?Ξ)
 ("K" ?Κ)
 ("L" ?Λ)
 (":" ?¨)
 ("\"" ?\")
 ("|" ?|)
 ("Z" ?Ζ)
 ("X" ?Χ)
 ("C" ?Ψ)
 ("V" ?Ω)
 ("B" ?Β)
 ("N" ?Ν)
 ("M" ?Μ)
 ("<" ?<)
 (">" ?>)
 ("?" ??)

 ("a;" ?ά)
 ("e;" ?έ)
 ("h;" ?ή)
 ("i;" ?ί)
 ("o;" ?ό)
 ("y;" ?ύ)
 ("v;" ?ώ)
 ("A;" ?Ά)
 ("E;" ?Έ)
 ("H;" ?Ή)
 ("I;" ?Ί)
 ("O;" ?Ό)
 ("Y;" ?Ύ)
 ("V;" ?Ώ)
 ("i:" ?ϊ)
 ("y:" ?ϋ)
 ("I:" ?Ϊ)
 ("Y:" ?Ϋ)
 ("i:;" ?ΐ)
 ("i;:" ?ΐ)
 ("y:;" ?ΰ)
 ("y;:" ?ΰ)
 ;; These two are asymmetric with ";<" and ";>" in "greek" input
 ;; method.  But, as the other Latin postfix methods adopt "<<" and
 ;; ">>", it may be better to follow them.
 ("<<" ?«)
 (">>" ?»))


(quail-define-package
 "greek-polytonic" "Greek" "ῶ" t
 "Ἑλληνικά: Greek input method, with support for polytonic & archaic
Greek letters."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("-" ?-)
 ("=" ?=)
 ("[" ?\[)
 ("]" ?\])
 ;; Changed punction from greek.el
 ("`" ?·)
 ("~" ?:)
 ;; tonoi
 (";" ?΄) ;; U+1FFD (oxia)
 ("q" ?`) ;; U+1FEF (varia)
 ("'" ?῀) ;; U+1FC0 (perispomeni)
 ("\"" ?ι) ;; U+1FBE (ypogegrammeni)
 ;; pneumata
 (":" ?᾿) ;; U+1FBF (psili)
 ("Q" ?῾) ;; U+1FFE (dasia)
 ("W" ?¨) ;; U+00A8 (dialytika)
 ;; apostrophe combinations
 ("; " ["’ "]) ;; U+2019 (apostrophe)
 (";g" ["’γ"])
 (";d" ["’δ"])
 (";z" ["’ζ"])
 (";u" ["’θ"])
 (";k" ["’κ"])
 (";l" ["’λ"])
 (";m" ["’μ"])
 (";n" ["’ν"])
 (";j" ["’ξ"])
 (";p" ["’π"])
 (";ρ" ["’r"])
 (";s" ["’σ"])
 (";t" ["’τ"])
 (";f" ["’φ"])
 (";x" ["’χ"])
 (";c" ["’ψ"])
 ;;
 (";G" ["’Γ"])
 (";D" ["’Δ"])
 (";Z" ["’Ζ"])
 (";U" ["’Θ"])
 (";K" ["’Κ"])
 (";L" ["’Λ"])
 (";M" ["’Μ"])
 (";N" ["’Ν"])
 (";J" ["’Ξ"])
 (";P" ["’Π"])
 (";Ρ" ["’R"])
 (";S" ["’Σ"])
 (";T" ["’Τ"])
 (";F" ["’Φ"])
 (";X" ["’Χ"])
 (";C" ["’Ψ"])
 ;; Combinations
 ("W;" ?΅) ;; U+1FEE
 (";W" ?΅) ;; U+1FEE
 ("Wq" ?῭) ;; U+1FED
 ("qW" ?῭) ;; U+1FED
 (":;" ?῎) ;; U+1FCE
 (";:" ?῎) ;; U+1FCE
 ("qQ" ?῝) ;; U+1FDD
 ("Qq" ?῝) ;; U+1FDD
 ("q:" ?῍) ;; U+1FCD
 (":q" ?῍) ;; U+1FCD
 ("Q;" ?῞) ;; U+1FDE
 (";Q" ?῞) ;; U+1FDE
 ("':" ?῏) ;; U+1FCF
 (":'" ?῏) ;; U+1FCF
 ("'Q" ?῟) ;; U+1FDF
 ("Q'" ?῟) ;; U+1FDF
 ("'W" ?῁) ;; U+1FC1
 ("W'" ?῁) ;; U+1FC1
 ;; perispomeni combinations, used for vrachy and macron
 ("''" ["῀῀"])
 ("'''" ["῀῀῀"])
 ;; ypogegrammeni combinations
 ("\"'" ["῀ι"])
 ("'\"" ["῀ι"])
 ("\";" ["΄ι"])
 (";\"" ["ι΄"])
 ("\":" ["ι᾿"])
 (":\"" ["ι᾿"])
 ("\"q" ["ι`"])
 ("q\"" ["ι`"])
 ("\"Q" ["ι῾"])
 ("Q\"" ["ι῾"])
 ("Q\"'" ["ι῟"])
 ("\"Q'" ["ι῟"])

 ("Q'\"" ["ι῟"])
 ("'Q\"" ["ι῟"])
 (":q\"" ["῍ι"])
 ("q:\"" ["῍ι"])
 ("\"q:" ["῍ι"])
 ("\":q" ["῍ι"])

 (":;\"" ["῎ι"])
 (";:\"" ["῎ι"])
 ("\";:" ["῎ι"])
 ("\":;" ["῎ι"])
 ("Qq\"" ["῝ι"])
 ("qQ\"" ["῝ι"])
 ("\"Qq" ["῝ι"])
 ("\"qQ" ["῝ι"])

 ("Q;\"" ["῞ι"])
 (";Q\"" ["῞ι"])
 ("\";Q" ["῞ι"])
 ("\"Q;" ["῞ι"])

 (":'\"" ["῏ι"])
 ("':\"" ["῏ι"])
 ("\"':" ["῏ι"])
 ("\":'" ["῏ι"])
 ;; Misc characters
 ("~" ?:)
 ("``" "~")
 ;;
 ("W" ?¨)
 ("," ?,)
 ("." ?.)
 ("/" ?/)
 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?€)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("_" ?_)
 ("+" ?+)
 ("{" ?{)
 ("}" ?})
 (";;" "\"")
 ("<" ?<)
 (">" ?>)
 ("?" ?;) ;; U+037E (Greek Question Mark)
 (">>" ?») ;; U+00BB
 ("<<" ?«) ;; U+00AB
 ;; Alpha
 ("A" ?Α)  ;; U+0391
 (":A" ?Ἀ) ;; U+1F08
 ("QA" ?Ἁ) ;; U+1F09
 (":qA" ?Ἂ) ;; U+1F0A
 ("q:A" ?Ἂ) ;; U+1F0A
 ("qQA" ?Ἃ) ;; U+1F0B
 ("QqA" ?Ἃ) ;; U+1F0B
 (":;A" ?Ἄ) ;; U+1F0C
 ("Q;A" ?Ἅ) ;; U+1F0D
 (";QA" ?Ἅ) ;; U+1F0D
 (":'A" ?Ἆ) ;; U+1F0E
 ("':A" ?Ἆ) ;; U+1F0E
 ("Q'A" ?Ἇ) ;; U+1F0F
 ("'QA" ?Ἇ) ;; U+1F0F
 (":\"A" ?ᾈ) ;; U+1F88
 ("Q\"A" ?ᾉ) ;; U+1F89
 (":q\"A" ?ᾊ) ;; U+1F8A
 ("q:\"A" ?ᾊ) ;; U+1F8A
 ("q\":A" ?ᾊ) ;; U+1F8A
 ("\"q:A" ?ᾊ) ;; U+1F8A
 ("Qq\"A" ?ᾋ) ;; U+1F8B
 ("qQ\"A" ?ᾋ) ;; U+1F8B
 ("q\"QA" ?ᾋ) ;; U+1F8B
 ("\"qQA" ?ᾋ) ;; U+1F8B
 (":;\"A" ?ᾌ) ;; U+1F8C
 (";:\"A" ?ᾌ) ;; U+1F8C
 (";\":A" ?ᾌ) ;; U+1F8C
 ("\";:A" ?ᾌ) ;; U+1F8C
 ("Q;\"A" ?ᾍ) ;; U+1F8D
 ("Q\";A" ?ᾍ) ;; U+1F8D
 ("\"Q;A" ?ᾍ) ;; U+1F8D
 ("\";QA" ?ᾍ) ;; U+1F8D
 (":'\"A" ?ᾎ) ;; U+1F8E
 (":\"'A" ?ᾎ) ;; U+1F8E
 ("\":'A" ?ᾎ) ;; U+1F8E
 ("\"':A" ?ᾎ) ;; U+1F8E
 ("Q'\"A" ?ᾏ) ;; U+1F8F
 ("'Q\"A" ?ᾏ) ;; U+1F8F
 ("'\"QA" ?ᾏ) ;; U+1F8F
 ("\"'QA" ?ᾏ) ;; U+1F8F
 ("''A" ?Ᾰ) ;; U+1FB8
 ("'''A" ?Ᾱ) ;; U+1FB9
 ("qA" ?Ὰ) ;; U+1FBA
 (";A" ?Ά) ;; U+1FBB
 ("\"A" ?ᾼ) ;; U+1FBC
 ("a" ?α) ;; U+03B1
 (":a" ?ἀ) ;; U+1F00
 ("Qa" ?ἁ) ;; U+1F01
 (":qa" ?ἂ) ;; U+1F02
 ("q:a" ?ἂ) ;; U+1F02
 ("Qqa" ?ἃ) ;; U+1F03
 ("qQa" ?ἃ) ;; U+1F03
 (":;a" ?ἄ) ;; U+1F04
 (";:a" ?ἄ) ;; U+1F04
 ("Q;a" ?ἅ) ;; U+1F05
 (";Qa" ?ἅ) ;; U+1F05
 (":'a" ?ἆ) ;; U+1F06
 ("':a" ?ἆ) ;; U+1F06
 ("Q'a" ?ἇ) ;; U+1F07
 ("'Qa" ?ἇ) ;; U+1F07
 ("qa" ?ὰ) ;; U+1F70
 (";a" ?ά) ;; U+1F71
 (":\"a" ?ᾀ) ;; U+1F80
 ("\":a" ?ᾀ) ;; U+1F80
 ("Q\"a" ?ᾁ) ;; U+1F81
 (":q\"a" ?ᾂ) ;; U+1F82
 (":\"qa" ?ᾂ) ;; U+1F82
 ("\":qa" ?ᾂ) ;; U+1F82
 ("\"q:a" ?ᾂ) ;; U+1F82
 ("Qq\"a" ?ᾃ) ;; U+1F83
 ("Q\"qa" ?ᾃ) ;; U+1F83
 ("\"qQa" ?ᾃ) ;; U+1F83
 ("\"Qqa" ?ᾃ) ;; U+1F83
 (":;\"a" ?ᾄ) ;; U+1F84
 (";\":a" ?ᾄ) ;; U+1F84
 ("\";:a" ?ᾄ) ;; U+1F84
 (";:\"a" ?ᾄ) ;; U+1F84
 (":;\"a" ?ᾄ) ;; U+1F84
 ("Q;\"a" ?ᾅ) ;; U+1F85
 ("Q\";a" ?ᾅ) ;; U+1F85
 ("\"Q;a" ?ᾅ) ;; U+1F85
 ("\";Qa" ?ᾅ) ;; U+1F85
 (";\"Qa" ?ᾅ) ;; U+1F85
 (":'\"a" ?ᾆ) ;; U+1F86
 ("':\"a" ?ᾆ) ;; U+1F86
 ("'\":a" ?ᾆ) ;; U+1F86
 ("\"':a" ?ᾆ) ;; U+1F86
 ("\":'a" ?ᾆ) ;; U+1F86
 ("Q'\"a" ?ᾇ) ;; U+1F87
 ("'Q\"a" ?ᾇ) ;; U+1F87
 ("'\"Qa" ?ᾇ) ;; U+1F87
 ("\"'Qa" ?ᾇ) ;; U+1F87
 ("\"Q'a" ?ᾇ) ;; U+1F87
 ("''a" ?ᾰ) ;; U+1FB0
 ("'''a" ?ᾱ) ;; U+1FB1
 ("q\"a" ?ᾲ) ;;U+1FB2
 ("\"qa" ?ᾲ) ;;U+1FB2
 ("\"a" ?ᾳ) ;; U+1FB3
 (";\"a" ?ᾴ) ;; U+1FB4
 ("'a" ?ᾶ) ;; U+1FB6
 ("'\"a" ?ᾷ) ;; U+1FB7
 ("\"'a" ?ᾷ) ;; U+1FB7
 ;; Beta
 ("B" ?Β) ;; U+0392
 ("b" ?β) ;; U+03B2
 ;; Gamma
 ("G" ?Γ) ;; U+0393
 ("g" ?γ) ;; U+03B3
 ;; Delta
 ("D" ?Δ) ;; U+0394
 ("d" ?δ) ;; U+03B4
 ;; Epsilon
 ("E" ?Ε) ;; U+0395
 (":E" ?Ἐ) ;; U+1F18
 ("QE" ?Ἑ) ;; U+1F19
 (":qE" ?Ἒ) ;; U+1F1A
 ("q:E" ?Ἒ) ;; U+1F1A
 ("QqE" ?Ἓ) ;; U+1F1B
 ("qQE" ?Ἓ) ;; U+1F1B
 (":;E" ?Ἔ) ;; U+1F1C
 (";:E" ?Ἔ) ;; U+1F1C
 ("Q;E" ?Ἕ) ;; U+1F1D
 (";QE" ?Ἕ) ;; U+1F1D
 ("qE" ?Ὲ) ;; U+1FC8
 (";E" ?Έ) ;; U+1FC9
 ("e" ?ε) ;; U+03B5
 ("qe" ?ὲ) ;; U+1F72
 (";e" ?έ) ;; U+1F73
 (":e" ?ἐ) ;; U+1F10
 ("Qe" ?ἑ) ;; U+1F11
 (":qe" ?ἒ) ;; U+1F12
 ("q:e" ?ἒ) ;; U+1F12
 ("Qqe" ?ἓ) ;; U+1F13
 ("qQe" ?ἓ) ;; U+1F13
 (":;e" ?ἔ) ;; U+1F14
 (";:e" ?ἔ) ;; U+1F14
 ("Q;e" ?ἕ) ;; U+1F15
 (";Qe" ?ἕ) ;; U+1F15
 ;; Zeta
 ("Z" ?Ζ) ;; U+0396
 ("z" ?ζ) ;; U+03B6
 ;; Eta
 ("H" ?Η) ;; U+0397
 (":H" ?Ἠ) ;; U+1F28
 ("QH" ?Ἡ) ;; U+1F29
 (":qH" ?Ἢ) ;; U+1F2A
 ("q:H" ?Ἢ) ;; U+1F2A
 ("QqH" ?Ἣ) ;; U+1F2B
 ("qQH" ?Ἣ) ;; U+1F2B
 (":;H" ?Ἤ) ;; U+1F2C
 (";:H" ?Ἤ) ;; U+1F2C
 ("Q;H" ?Ἥ) ;; U+1F2D
 (";QH" ?Ἥ) ;; U+1F2D
 (":'H" ?Ἦ) ;; U+1F2E
 ("':H" ?Ἦ) ;; U+1F2E
 ("Q'H" ?Ἧ) ;; U+1F2F
 ("'QH" ?Ἧ) ;; U+1F2F
 (":\"H" ?ᾘ) ;; U+1F98
 ("\":H" ?ᾘ) ;; U+1F98
 ("Q\"H" ?ᾙ) ;; U+1F99
 ("\"QH" ?ᾙ) ;; U+1F99
 (":q\"H" ?ᾚ) ;; U+1F9A
 (":\"qH" ?ᾚ) ;; U+1F9A
 ("\":qH" ?ᾚ) ;; U+1F9A
 ("\"q:H" ?ᾚ) ;; U+1F9A
 ("q\":H" ?ᾚ) ;; U+1F9A
 ("Qq\"H" ?ᾛ) ;; U+1F9B
 ("Q\"qH" ?ᾛ) ;; U+1F9B
 ("\"QqH" ?ᾛ) ;; U+1F9B
 ("\"qQH" ?ᾛ) ;; U+1F9B
 ("q\"QH" ?ᾛ) ;; U+1F9B
 (":;\"H" ?ᾜ) ;; U+1F9C
 (":\";H" ?ᾜ) ;; U+1F9C
 ("\":;H" ?ᾜ) ;; U+1F9C
 ("\";:H" ?ᾜ) ;; U+1F9C
 (";\":H" ?ᾜ) ;; U+1F9C
 ("Q;\"H" ?ᾝ) ;; U+1F9D
 ("Q\";H" ?ᾝ) ;; U+1F9D
 ("\"Q;H" ?ᾝ) ;; U+1F9D
 ("\";QH" ?ᾝ) ;; U+1F9D
 (";\"QH" ?ᾝ) ;; U+1F9D
 (":'\"H" ?ᾞ) ;; U+1F9E
 (":\"'H" ?ᾞ) ;; U+1F9E
 ("\":'H" ?ᾞ) ;; U+1F9E
 ("\"':H" ?ᾞ) ;; U+1F9E
 ("'\":H" ?ᾞ) ;; U+1F9E
 ("Q'\"H" ?ᾟ) ;; U+1F9F
 ("Q\"'H" ?ᾟ) ;; U+1F9F
 ("\"Q'H" ?ᾟ) ;; U+1F9F
 ("\"'QH" ?ᾟ) ;; U+1F9F
 ("'\"QH" ?ᾟ) ;; U+1F9F
 ("qH" ?Ὴ) ;; U+1FCA
 (";H" ?Ή) ;; U+1FCB
 ("\"H" ?ῌ) ;; U+1FCC
 ;;
 ("h" ?η) ;; U+03B7
 ("qh" ?ὴ) ;; U+1F74
 (";h" ?ή) ;; U+1F75
 (":h" ?ἠ) ;; U+1F20
 ("Qh" ?ἡ) ;; U+1F21
 (":qh" ?ἢ) ;; U+1F22
 ("q:h" ?ἢ) ;; U+1F22
 ("Qqh" ?ἣ) ;; U+1F23
 ("qQh" ?ἣ) ;; U+1F23
 (":;h" ?ἤ) ;; U+1F24
 (";:h" ?ἤ) ;; U+1F24
 ("Q;h" ?ἥ) ;; U+1F25
 (";Qh" ?ἥ) ;; U+1F25
 (":'h" ?ἦ) ;; U+1F26
 ("':h" ?ἦ) ;; U+1F26
 ("Q'h" ?ἧ) ;; U+1F27
 ("'Qh" ?ἧ) ;; U+1F27
 (":\"h" ?ᾐ) ;; U+1F90
 ("\":h" ?ᾐ) ;; U+1F90
 ("Q\"h" ?ᾑ) ;; U+1F91
 ("\"Qh" ?ᾑ) ;; U+1F91
 (":q\"h" ?ᾒ) ;; U+1F92
 (":\"qh" ?ᾒ) ;; U+1F92
 ("\":qh" ?ᾒ) ;; U+1F92
 ("\"q:h" ?ᾒ) ;; U+1F92
 ("q\":h" ?ᾒ) ;; U+1F92
 ("Qq\"h" ?ᾓ) ;; U+1F93
 ("Q\"qh" ?ᾓ) ;; U+1F93
 ("\"Qqh" ?ᾓ) ;; U+1F93
 ("\"qQh" ?ᾓ) ;; U+1F93
 ("q\"Qh" ?ᾓ) ;; U+1F93
 (":;\"h" ?ᾔ) ;; U+1F94
 (":\";h" ?ᾔ) ;; U+1F94
 ("\":;h" ?ᾔ) ;; U+1F94
 ("\";:h" ?ᾔ) ;; U+1F94
 (";\":h" ?ᾔ) ;; U+1F94
 ("Q;\"h" ?ᾕ) ;; U+1F95
 ("Q\";h" ?ᾕ) ;; U+1F95
 ("\"Q;h" ?ᾕ) ;; U+1F95
 ("\";Qh" ?ᾕ) ;; U+1F95
 (";\"Qh" ?ᾕ) ;; U+1F95
 (":'\"h" ?ᾖ) ;; U+1F96
 (":\"'h" ?ᾖ) ;; U+1F96
 ("\":'h" ?ᾖ) ;; U+1F96
 ("\"':h" ?ᾖ) ;; U+1F96
 ("'\":h" ?ᾖ) ;; U+1F96
 ("Q'\"h" ?ᾗ) ;; U+1F97
 ("Q\"'h" ?ᾗ) ;; U+1F97
 ("\"Q'h" ?ᾗ) ;; U+1F97
 ("\"'Qh" ?ᾗ) ;; U+1F97
 ("'\"Qh" ?ᾗ) ;; U+1F97
 ("q\"h" ?ῂ) ;; U+1FC2
 ("\"qh" ?ῂ) ;; U+1FC2
 ("\"h" ?ῃ) ;; U+1FC3
 (";\"h" ?ῄ) ;; U+1FC4
 ("\";h" ?ῄ) ;; U+1FC4
 ("'h" ?ῆ) ;; U+1FC6
 ("\"'h" ?ῇ) ;; U+1FC7
 ("'\"h" ?ῇ) ;; U+1FC7
 ;; Theta
 ("U" ?Θ) ;; U+0398
 ("u" ?θ) ;; U+03B8
 ;; Iota
 ("I" ?Ι) ;; U+0399
 ("WI" ?Ϊ) ;; U+03AA
 (":I" ?Ἰ) ;; U+1F38
 ("QI" ?Ἱ) ;; U+1F39
 (":qI" ?Ἲ) ;; U+1F3A
 ("q:I" ?Ἲ) ;; U+1F3A
 ("QqI" ?Ἳ) ;; U+1F3B
 ("qQI" ?Ἳ) ;; U+1F3B
 (":;I" ?Ἴ) ;; U+1F3C
 (";:I" ?Ἴ) ;; U+1F3C
 ("Q;I" ?Ἵ) ;; U+1F3D
 (";QI" ?Ἵ) ;; U+1F3D
 (":'I" ?Ἶ) ;; U+1F3E
 ("':I" ?Ἶ) ;; U+1F3E
 ("Q'I" ?Ἷ) ;; U+1F3F
 ("''I" ?Ῐ) ;; U+1FD8
 ("'''I" ?Ῑ) ;; U+1FD9
 ("qI" ?Ὶ) ;; U+1FDA
 (";I" ?Ί) ;; U+1FDB
 ("i" ?ι) ;; U+03B9
 ("Wi" ?ϊ) ;; U+03CA
 ("qi" ?ὶ) ;; U+1F76
 (";i" ?ί) ;; U+1F77
 (":i" ?ἰ) ;; U+1F30
 ("Qi" ?ἱ) ;; U+1F31
 (":qi" ?ἲ) ;; U+1F32
 ("q:i" ?ἲ) ;; U+1F32
 ("Qqi" ?ἳ) ;; U+1F33
 ("qQi" ?ἳ) ;; U+1F33
 (":;i" ?ἴ) ;; U+1F34
 (";:i" ?ἴ) ;; U+1F34
 ("Q;i" ?ἵ) ;; U+1F35
 (";Qi" ?ἵ) ;; U+1F35
 (":'i" ?ἶ) ;; U+1F36
 ("':i" ?ἶ) ;; U+1F36
 ("Q'i" ?ἷ) ;; U+1F37
 ("'Qi" ?ἷ) ;; U+1F37
 ("''i" ?ῐ) ;; U+1FD0
 ("'''i" ?ῑ) ;; U+1FD1
 ("Wqi" ?ῒ) ;; U+1FD2
 ("qWi" ?ῒ) ;; U+1FD2
 (";Wi" ?ΐ) ;; U+1FD3
 ("W;i" ?ΐ) ;; U+1FD3
 ("'i" ?ῖ) ;; U+1FD6
 ("W'i" ?ῗ) ;; U+1FD7
 ("'Wi" ?ῗ) ;; U+1FD7
 ;; Kappa
 ("K" ?Κ) ;; U+039A
 ("k" ?κ) ;; U+03BA
 ;; Lambda
 ("L" ?Λ) ;; U+039B
 ("l" ?λ) ;; U+03BB
 ;; Mu
 ("M" ?Μ) ;; U+039C
 ("m" ?μ) ;; U+03BC
 ;; Nu
 ("N" ?Ν) ;; U+039D
 ("n" ?ν) ;; U+03BD
 ;; Xi
 ("J" ?Ξ) ;; U+039E
 ("j" ?ξ) ;; U+03BE
 ;; Omicron
 ("O" ?Ο) ;; U+039F
 (":O" ?Ὀ) ;; U+1F48
 ("QO" ?Ὁ) ;; U+1F49
 (":qO" ?Ὂ) ;; U+1F4A
 ("q:O" ?Ὂ) ;; U+1F4A
 ("QqO" ?Ὃ) ;; U+1F4B
 (":;O" ?Ὄ) ;; U+1F4C
 ("Q;O" ?Ὅ) ;; U+1F4D
 ("qO" ?Ὸ) ;; U+1FF8
 (";O" ?Ό) ;; U+1FF9
 ("o" ?ο) ;; U+03BF
 ("qo" ?ὸ) ;; U+1F78
 (";o" ?ό) ;; U+1F79
 (":o" ?ὀ) ;; U+1F40
 ("Qo" ?ὁ) ;; U+1F41
 (":qo" ?ὂ) ;; U+1F42
 ("q:o" ?ὂ) ;; U+1F42
 ("Qqo" ?ὃ) ;; U+1F43
 ("qQo" ?ὃ) ;; U+1F43
 (":;o" ?ὄ) ;; U+1F44
 (";:o" ?ὄ) ;; U+1F44
 ("Q;o" ?ὅ) ;; U+1F45
 ;; Pi
 ("P" ?Π) ;; U+03A0
 ("p" ?π) ;; U+03C0
 ;; Rho
 ("R" ?Ρ) ;; U+03A1
 ("QR" ?Ῥ) ;; U+1FEC
 ("r" ?ρ) ;; U+03C1
 (":r" ?ῤ) ;; U+1FE4
 ("Qr" ?ῥ) ;; U+1FE5
 ;; Sigma
 ("S" ?Σ) ;; U+03A3
 ("s" ?σ) ;; U+03C3
 ("w" ?ς) ;; U+03C2
 ;; Tau
 ("T" ?Τ) ;; U+03A4
 ("t" ?τ) ;; U+03C4
 ;; Upsilon
 ("Y" ?Υ) ;; U+03A5
 ("WY" ?Ϋ) ;; U+03AB
 ("QY" ?Ὑ) ;; U+1F59
 ("QqY" ?Ὓ) ;; U+1F5B
 ("qQY" ?Ὓ) ;; U+1F5B
 ("Q;Y" ?Ὕ) ;; U+1F5D
 (";QY" ?Ὕ) ;; U+1F5D
 ("Q'Y" ?Ὗ) ;; U+1F5F
 ("'QY" ?Ὗ) ;; U+1F5F
 ("y" ?υ) ;; U+03C5
 ("Wy" ?ϋ) ;; U+03CB
 ("qy" ?ὺ) ;; U+1F7A
 (";y" ?ύ) ;; U+1F7B
 (":y" ?ὐ) ;; U+1F50
 ("Qy" ?ὑ) ;; U+1F51
 (":qy" ?ὒ) ;; U+1F52
 ("q:y" ?ὒ) ;; U+1F52
 ("Qqy" ?ὓ) ;; U+1F53
 ("qQy" ?ὓ) ;; U+1F53
 (":;y" ?ὔ) ;; U+1F54
 (";:y" ?ὔ) ;; U+1F54
 ("Q;y" ?ὕ) ;; U+1F55
 (";Qy" ?ὕ) ;; U+1F55
 (":'y" ?ὖ) ;; U+1F56
 ("':y" ?ὖ) ;; U+1F56
 ("Q'y" ?ὗ) ;; U+1F57
 ("'Qy" ?ὗ) ;; U+1F57
 ("''y" ?ῠ) ;; U+1FE0
 ("'''y" ?ῡ) ;; U+1FE1
 ("Wqy" ?ῢ) ;; U+1FE2
 ("qWy" ?ῢ) ;; U+1FE2
 ("W;y" ?ΰ) ;; U+1FE3
 (";Wy" ?ΰ) ;; U+1FE3
 ("'y" ?ῦ) ;; U+1FE6
 ("W'y" ?ῧ) ;; U+1FE7
 ("'Wy" ?ῧ) ;; U+1FE7
 ("''Y" ?Ῠ) ;; U+1FE8
 ("'''Y" ?Ῡ) ;; U+1FE8
 ("qY" ?Ὺ) ;; U+1FEA
 (";Y" ?Ύ) ;; U+1FEB
 ;; Phi
 ("F" ?Φ) ;; U+03A6
 ("f" ?φ) ;; U+03C6
 ;; Chi
 ("X" ?Χ) ;; U+03A7
 ("x" ?χ) ;; U+03C7
 ;; Chi
 ("C" ?Ψ) ;; U+03A8
 ("c" ?ψ) ;; U+03C8
 ;; Omega
 ("V" ?Ω) ;; U+03A9
 (":V" ?Ὠ) ;; U+1F68
 ("QV" ?Ὡ) ;; U+1F69
 (":qV" ?Ὢ) ;; U+1F6A
 ("q:V" ?Ὢ) ;; U+1F6A
 ("QqV" ?Ὣ) ;; U+1F6B
 ("qQV" ?Ὣ) ;; U+1F6B
 (":;V" ?Ὤ) ;; U+1F6C
 (";:V" ?Ὤ) ;; U+1F6C
 ("Q;V" ?Ὥ) ;; U+1F6D
 (";QV" ?Ὥ) ;; U+1F6D
 (":'V" ?Ὦ) ;; U+1F6E
 ("':V" ?Ὦ) ;; U+1F6E
 ("Q'V" ?Ὧ) ;; U+1F6F
 (":\"V" ?ᾨ) ;; U+1FA8
 ("\":V" ?ᾨ) ;; U+1FA8
 ("Q\"V" ?ᾩ) ;; U+1FA9
 ("\"QV" ?ᾩ) ;; U+1FA9

 (":q\"V" ?ᾪ) ;; U+1FAA
 (":\"qV" ?ᾪ) ;; U+1FAA
 ("\":qV" ?ᾪ) ;; U+1FAA
 ("\"q:V" ?ᾪ) ;; U+1FAA
 ("q\":V" ?ᾪ) ;; U+1FAA
 ("q:\"V" ?ᾪ) ;; U+1FAA

 ("Qq\"V" ?ᾫ) ;; U+1FAB
 ("qQ\"V" ?ᾫ) ;; U+1FAB
 ("q\"QV" ?ᾫ) ;; U+1FAB
 ("\"qQV" ?ᾫ) ;; U+1FAB
 ("\"QqV" ?ᾫ) ;; U+1FAB

 (":\"qV" ?ᾫ) ;; U+1FAB
 (":;\"V" ?ᾬ) ;; U+1FAC
 (":\";V" ?ᾬ) ;; U+1FAC
 ("\":;V" ?ᾬ) ;; U+1FAC
 ("\";:V" ?ᾬ) ;; U+1FAC
 (";\":V" ?ᾬ) ;; U+1FAC
 ("Q;\"V" ?ᾭ) ;; U+1FAD
 ("Q\";V" ?ᾭ) ;; U+1FAD
 ("\"Q;V" ?ᾭ) ;; U+1FAD
 ("\";QV" ?ᾭ) ;; U+1FAD
 (";\"QV" ?ᾭ) ;; U+1FAD
 (":'\"V" ?ᾮ) ;; U+1FAE
 (":\"'V" ?ᾮ) ;; U+1FAE
 ("\":'V" ?ᾮ) ;; U+1FAE
 ("\"':V" ?ᾮ) ;; U+1FAE
 ("'\":V" ?ᾮ) ;; U+1FAE

 ("Q'\"V" ?ᾯ) ;; U+1FAF
 ("'Q\"V" ?ᾯ) ;; U+1FAF
 ("Q\"'V" ?ᾯ) ;; U+1FAF
 ("\"Q'V" ?ᾯ) ;; U+1FAF
 ("\"'QV" ?ᾯ) ;; U+1FAF
 ("'\"QV" ?ᾯ) ;; U+1FAF

 ("qV" ?Ὼ) ;; U+1FFA
 (";V" ?Ώ) ;; U+1FFB
 ("\"V" ?ῼ) ;; U+1FFC
 ("v" ?ω) ;; U+03C9
 ("qv" ?ὼ) ;; U+1F7C
 (";v" ?ώ) ;; U+1F7D
 (":v" ?ὠ) ;; U+1F60
 ("Qv" ?ὡ) ;; U+1F61
 (":qv" ?ὢ) ;; U+1F62
 ("q:v" ?ὢ) ;; U+1F62
 ("Qqv" ?ὣ) ;; U+1F63
 ("qQv" ?ὣ) ;; U+1F63
 (":;v" ?ὤ) ;; U+1F64
 (";:v" ?ὤ) ;; U+1F64
 ("Q;v" ?ὥ) ;; U+1F65
 (";Qv" ?ὥ) ;; U+1F65
 (":'v" ?ὦ) ;; U+1F66
 ("':v" ?ὦ) ;; U+1F66
 ("Q'v" ?ὧ) ;; U+1F67
 ("'Qv" ?ὧ) ;; U+1F67
 (":\"v" ?ᾠ) ;; U+1FA0
 ("\":v" ?ᾠ) ;; U+1FA0
 ("Q\"v" ?ᾡ) ;; U+1FA1
 ("\"Qv" ?ᾡ) ;; U+1FA1
 (":q\"v" ?ᾢ) ;; U+1FA2
 (":\"qv" ?ᾢ) ;; U+1FA2
 ("\":qv" ?ᾢ) ;; U+1FA2
 ("\"q:v" ?ᾢ) ;; U+1FA2
 ("q\":v" ?ᾢ) ;; U+1FA2

 ("Qq\"v" ?ᾣ) ;; U+1FA3
 ("q\"Qv" ?ᾣ) ;; U+1FA3
 ("\"qQv" ?ᾣ) ;; U+1FA3
 ("\"Qqv" ?ᾣ) ;; U+1FA3
 ("Q\"qv" ?ᾣ) ;; U+1FA3

 (":;\"v" ?ᾤ) ;; U+1FA4
 (":\";v" ?ᾤ) ;; U+1FA4
 ("\":;v" ?ᾤ) ;; U+1FA4
 ("\";:v" ?ᾤ) ;; U+1FA4
 (";\":v" ?ᾤ) ;; U+1FA4
 (";:\"v" ?ᾤ) ;; U+1FA4

 ("Q;\"v" ?ᾥ) ;; U+1FA5
 ("Q\";v" ?ᾥ) ;; U+1FA5
 ("\"Q;v" ?ᾥ) ;; U+1FA5
 ("\";Qv" ?ᾥ) ;; U+1FA5
 (";\"Qv" ?ᾥ) ;; U+1FA5
 (";Q\"v" ?ᾥ) ;; U+1FA5

 (":'\"v" ?ᾦ) ;; U+1FA6
 (":\"'v" ?ᾦ) ;; U+1FA6
 ("\":'v" ?ᾦ) ;; U+1FA6
 ("\"':v" ?ᾦ) ;; U+1FA6
 ("'\":v" ?ᾦ) ;; U+1FA6
 ("':\"v" ?ᾦ) ;; U+1FA6

 ("Q'\"v" ?ᾧ) ;; U+1FA7
 ("Q\"'v" ?ᾧ) ;; U+1FA7
 ("\"Q'v" ?ᾧ) ;; U+1FA7
 ("\"'Qv" ?ᾧ) ;; U+1FA7
 ("'\"Qv" ?ᾧ) ;; U+1FA7
 ("'Q\"v" ?ᾧ) ;; U+1FA7

 ("q\"v" ?ῲ) ;; U+1FF2
 ("\"qv" ?ῲ) ;; U+1FF2
 ("\"v" ?ῳ) ;; U+1FF3
 (";\"v" ?ῴ) ;; U+1FF4
 ("'v" ?ῶ) ;; U+1FF6
 ("'\"v" ?ῷ) ;; U+1FF7
 ("\"'v" ?ῷ) ;; U+1FF7
 ;;; Archaic Letters ;;;
 ;; Stigma
 ("ww" ?ϛ) ;; U+03DB Note that capital stigma (U+03DA) is an invalid letter.
 ;; Digamma
 ("wF" ?Ϝ) ;; U+03DC
 ("wf" ?ϝ) ;; U+03DD
 ;; Koppa
 ("wK" ?Ϟ) ;; U+03DE
 ("wk" ?ϟ) ;; U+03DF
 ;; Sampi
 ("wP" ?Ϡ) ;; U+03E0
 ("wp" ?ϡ) ;; U+03E1
 ;; Koppa
 ("wO" ?Ϙ) ;; U+03D8
 ("wo" ?ϙ) ;; U+03D9
 )

(provide 'greek-polytonic)

;;; greek.el ends here
