\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{APA}[2023/08/21 APA 7th Edition format]
\LoadClass[12pt, letterpaper]{article}

% **** ESTABLECER ESPACIADO ****
\RequirePackage{setspace} 
\doublespacing
\setlength{\parskip}{6pt}

% **** ESTABLECER MARGENES ****
\RequirePackage[margin=1in, headheight=14.5pt]{geometry}
\raggedright % alineado a la izquierda
\setlength{\parindent}{0.5in} % sangria

% **** OPCIONES GENERALES ****
\RequirePackage[spanish]{babel}
\RequirePackage{times}
\RequirePackage{graphicx}

% **** ESTILO DE LOS TÍTULOS ****
\RequirePackage{titlesec} 
\titleformat{\section}{\centering\bfseries}{}{0em}{}
\titleformat{\subsection}{\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\bfseries\itshape}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}{\bfseries}{\theparagraph}{1em}{} % Estilo negrita
\titleformat{\subparagraph}{\bfseries\itshape}{\thesubparagraph}{1em}{} % Estilo negrita y cursiva
\setcounter{secnumdepth}{5}

% **** ESTILO DE ENUMERATES ****
\RequirePackage{enumitem}
\setlist[enumerate]{label=\alph*)}

% **** NUMERACIÓN DE LA PÁGINA ****
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage}
\renewcommand{\headrulewidth}{0pt} % Eliminamos la línea horizontal de encabezado

% **** TABLAS DE CONTENIDOS ****
\RequirePackage{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsubsecleader}{\cftdotfill{\cftdotsep}}

% **** REFERENCIAS ****
\RequirePackage[colorlinks, allcolors=black]{hyperref}
\RequirePackage{apacite}
\bibliographystyle{apacite}

% ========== [EXTRA PLUGINS] ==========
\RequirePackage{longtable}
\RequirePackage{eso-pic}

\endinput
