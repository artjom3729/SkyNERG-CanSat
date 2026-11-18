\NeedsTeXFormat{LaTeX2e} % kasutab LaTeX2e formaadi (põhiline formaat)
\ProvidesClass{NERG-UPT}[Klass NERGi UPT malli jaoks] % klassi nimi ja kirjeldus

\LoadClass[12pt, a4paper]{extreport} % tugineb extreporti klassile

\RequirePackage{titlesec} % võib valida alternatiivset peatüki pealkirja stiili
\RequirePackage{lmodern} % fondid
\RequirePackage{wrapfig2} % paneb pildi tektsi sisse
\RequirePackage[otfmath]{newtx} % Times font
\RequirePackage{graphicx} % parem piltide töötlemine
\RequirePackage{tikz} % joonestamine
\RequirePackage[version=4]{mhchem} % keemiavalemid
\RequirePackage{chemfig} % orgaanilise keemia valemid
\RequirePackage{amsmath} % matemaatilised sümbolid
\RequirePackage{mathtools} % veel sümboleid
\RequirePackage[T2A,T1]{fontenc} % fondi kodeerimised
\RequirePackage[utf8]{inputenc} % sisendi kodeerimised
\RequirePackage{textgreek} % kreekakeelse teksti toetamine
\RequirePackage[greek, russian, english, estonian]{babel} % keelte toetamine
\selectlanguage{estonian} % põhikeeleks on eesti keel
\RequirePackage{hyperref} % hüperlingid
\RequirePackage{float} % hõljuvad objektid
\RequirePackage[left=30mm, right=15mm, top=20mm, bottom=20mm]{geometry} % vabad ääred
\RequirePackage{pdfpages} % pdf dokumentide tekstis paigaldamine
\RequirePackage{subcaption} % alapildid
\RequirePackage{caption} % nimed alapiltide jaoks
\RequirePackage{setspace} % reavahe
\RequirePackage{csquotes} % tsiteerimine
\RequirePackage[backend=biber, style=apa, sorting=anyt]{biblatex} % kasutatud allikad
\RequirePackage{pgfplots} % graafikud
\pgfplotsset{compat=1.18}
\RequirePackage[datesep={.}]{datetime2} % aeg ja kuupäevad
\RequirePackage{fancyvrb} % ilus verbatim
\RequirePackage{xcolor} % värviline tekst
\RequirePackage[most]{tcolorbox} % värviline kast
\RequirePackage[per-mode = fraction]{siunitx} % SI ühikud
\RequirePackage{listings} % ilus programmi kood
\RequirePackage{spreadtab} % ilusad tabelid
\RequirePackage{enumitem} % loendamise stiil
\RequirePackage{cancel} % matemaatikas tühistamine
\RequirePackage{fancyhdr} % päis ja jalus
\RequirePackage{tocloft}
\RequirePackage{lipsum}

\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% reavahed ja teised distantsid
\setlength{\parindent}{0pt}
\setlength{\parskip}{12pt}
\onehalfspacing

% uued fondid
\newcommand{\Suur}{\fontsize{16}{15}\selectfont}
\newcommand{\suur}{\fontsize{14}{13}\selectfont}

% peatükkide seaded
\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}
\titleformat{\chapter}{\bfseries\Suur}{\thechapter.}{5pt}{\Large}[]
\titleformat{\section}{\bfseries\suur}{\thesection.}{5pt}{\large}[]
\titleformat{\subsection}{\suur}{\thesubsection.}{5pt}{\large}[]
\titleformat{\subsubsection}{\suur}{\thesubsubsection.}{5pt}{\large}[]
\titleformat{\paragraph}{\suur}{\theparagraph.}{5pt}{\large}[]
\titleformat{\subparagraph}{\suur}{\thesubparagraph.}{5pt}{\large}[]
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\titlespacing{\subsubsection}{0pt}{0pt}{0pt}
\titlespacing{\paragraph}{0pt}{0pt}{0pt}
\titlespacing{\subparagraph}{0pt}{0pt}{0pt}

% lehtede numeratsioon
\pagenumbering{arabic}

% uus lehekülg pärast iga peatüki


% biblatexi jaoks
\setlength{\bibhang}{0pt}
\DeclareNameAlias{sortname}{family-given}
\renewcommand{\postnotedelim}{\space}

% loendamise ja loetelu seaded
\setlist[enumerate]{label*=\arabic*.}
\setlistdepth{10}
\setlist[itemize]{label=\textbullet}
\setlist{nosep}

\RequirePackage[%
left = \glqq,%
right = \grqq,%
leftsub = \glq,%
rightsub = \grq%
]{dirtytalk}
