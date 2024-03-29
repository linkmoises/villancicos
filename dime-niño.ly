\version "2.22.1"
\header {
	title = "Dime, Niño"
	subtitle = "Villancico popular andaluz"
	composer = "Autor desconocido"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 25
	left-margin = 25
	right-margin = 25
	bottom-margin = 25
	print-page-number = false
}

\markup \vspace #2 %

global= {
	\time 3/4
	\tempo "Vivace"
	\key g \major
}

violinUno = \new Voice \relative c'' {
	\partial 2 b4\downbow c |
	\repeat volta 2 {
		d \tuplet 3/2 { e8( d c } d4~ | d) g a | 
		b \tuplet 3/2 { a8( b a } g4~ | g) fis g |  
		a \tuplet 3/2 { fis8( g fis } d4~ | d) c d | \break
		e \tuplet 3/2 { e8( fis e } d4~ | d2.) |
		e4. e8 e4 | fis fis fis | 
		g \tuplet 3/2 { e8( fis e } d4~ | d) d d | 
		e \tuplet 3/2 { c8( d c } a4~ | \break a) c c |
	}
	\alternative {
		{ d \tuplet 3/2 { c8( d c } b4~ | b) b c | }
		{ d \tuplet 3/2 { c8( d c } b4~ | b2) d4 | }
	}
	\bar ".|:"
		g4 g8 g g g | g4 fis g | a g8 a g fis | e4 d e | 
		fis e8 fis d4 | c2 d4 | e d8 e d c | c4 b d |
	\bar ":|.|:"
		g4 b, b | b2 d4 | g2 a4 | fis a, b | c2 g'4 |
		e e fis | d2 e4 | c2 d4 | b2 d4 | 
	\bar ":|.|:"
	\repeat volta 2 {
		g4 g8 g g g | g4 fis g | a g8 a g fis | e4 d e |
		fis e8 fis e d | c2 d4 | e d8 e d c |
	}
	\alternative {
		{ c4 b d | }
		{ c4 b2 | }
	}
	\bar "|."
}

violinDos = \new Voice \relative c'' {
  	\partial 2 g4 a |
	\repeat volta 2 {
		b c( b~ | b) b c | 
		d c( b~ | b) a b |
		c a( fis~ | fis) a b |
		c c( b~ | b2.) |
		c2. | c2. |
		b4 c( b~ | b) b b |
		c a( fis~ | fis) a a |
	}
	\alternative {
		{ b a( g~ | g) g a }
		{ b a( g~ | g2) b4 }
	}
	\bar ".|:"
		d4 d8 d d d | d4 d e | fis4 e8 fis e d | c4 b c | 
		d4 c8 d c b | a2 b4 | c b8 c b a | a4 g b |
	\bar ":|.|:"
		d g, g | g2 b4 | d2 d4 | d fis, g | a2 e'4 |
		c c d | b2 c4 | a2 b4 | g2 b4 | 
	\bar ":|.|:"
	\repeat volta 2 {
		d4 d8 d d d | d4 d e | fis e8 fis e d | c4 b c |
		d c8 d c b | a2 b4 | c b8 c b a |
	}
	\alternative {
		{ a4 g b | }
		{ a4 g2 \bar "||" }
	}
	\bar "|."
}

violinTres = \new Voice \relative c'' {
  	\partial 2 r4 r4 |
	\repeat volta 2 {
		d,2. | g |
		d | g |
		fis | a |
		g | g |
		g | a |
		g | g |
		fis | a |
	}
	\alternative {
		{ g2. | g | }
		{ g2. | d | }
	}
	\bar ".|:"
		b'2. | b | a | g 
		a | g | fis | g 
	\bar ":|.|:"
		b2. | g | b | a | fis |
		g | g | fis | g |
	\bar ":|.|:"
	\repeat volta 2 {
		b2. | b | a | g |
		a | g | fis |
	}
	\alternative {
		{ g2. | }
		{ g2. \bar "||" }
	}
	\bar "|."
}

\score {
	\new StaffGroup <<
		\new Staff \with { instrumentName = "Violín 1" }
			<< \global \violinUno >>
			\addlyrics {
				Di me | ni ño | de quién | e res | 
				to do | ves ti | di to | de blanco | 
				Soy de la | vir gen _ | Ma ría | y del |
				Es pí | ri tu | San to | Di me |
				\skip 1 \skip 1 Re | 
				sue nen con a le | gría los can ti | cos de mi tie | rra y vi | 
				va~el ni ño de | Dios que | na ció~en la no che | bue na Re |
				La no che | bue na | se vie | ne, tu ru | 
				rú, la | no che bue | na se | va _ | 
				_ y |
				sue nen con a le | gría los can ti | cos de mi tie | rra y vi | 
				va el ni ño de | Dios que | nació en la no che | bue na Re |
			}
			\addlyrics { 
				\skip 1 \skip 1 | ni ño | de quién | e res |
				Y si te lla mas _ Je sús
				Soy a mor | en el pe | se bre | y su |
				fri mien | to en | \skip 1 \skip 1 | \skip 1 \skip 1 | 
				la cruz | \skip 1 |
				sue nen con a le | gría los can ti | cos de mi tie | rra y vi | 
				va~el ni ño de | Dios que | na ció~en la no che | bue na La |
				no so tros | nos i | re _ | mos, tu ru | 
				rú, y | no vol ve | re mos | más _ | 
				_ re |
				sue nen con a le | gría los can ti | cos de mi tie | rra y vi | 
				va el ni ño de | Dios que | nació en la no che | \skip 1 \skip 1 \skip 1 |
				bue na |
			}
		\new Staff \with { instrumentName = "Violín 2" }
			<< \global \violinDos >>
		\new Staff \with { instrumentName = "Violín 3" }
			<< \global \violinTres >>
	>>
\layout { }
%%\midi { }
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Dime niño }
			\hspace #1
			\line { Dime, Niño, de quién eres }
			\line { Todo vestidito de blanco }
			\line { Soy de la Virgen María }
			\line { Y del Espíritu Santo }
			\hspace #1
			\line { Dime, Niño, de quién eres }
			\line { Y si te llamas Jesús }
			\line { Soy amor en el pesebre }
			\line { Y sufrimiento en la cruz }
			\hspace #1
			\line \italic { Resuenen con alegría }
			\line \italic { Los cánticos de mi tierra }
			\line \italic { Y viva el Niño de Dios }
			\line \italic { Que nació en la Nochebuena }
			\hspace #1
			\line \italic { Resuenen con alegría }
			\line \italic { Los cánticos de mi tierra }
			\line \italic { Y viva el Niño de Dios }
			\line \italic { Que nació en la Nochebuena }
		}
		\hspace #2
		\column {
			\line { La Nochebuena se viene, tururú }
			\line { La Nochebuena se va }
			\line { Y nosotros nos iremos, tururú }
			\line { Y no volveremos más }
			\hspace #1
			\line \italic { Resuenen con alegría }
			\line \italic { Los cánticos de mi tierra }
			\line \italic { Y viva el Niño de Dios }
			\line \italic { Que nació en la Nochebuena }
			\hspace #1
			\line \italic { Resuenen con alegría }
			\line \italic { Los cánticos de mi tierra }
			\line \italic { Y viva el Niño de Dios }
			\line \italic { Que nació en la Nochebuena }
		}
		\hspace #1
	}
}