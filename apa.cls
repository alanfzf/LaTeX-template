\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{APA}[2023/08/21 APA 7th Edition format]
\LoadClass[12pt, letterpaper]{article}

% **** ESTABLECER ESPACIADO ****
\RequirePackage{setspace}
\linespread{2} %

% **** ESTABLECER MARGENES ****
\RequirePackage[margin=1in, headheight=14.5pt]{geometry}
% \raggedright % alineado a la izquierda, latex automáticamente utiliza justificado
\setlength{\parindent}{0.5in} % sangria

% **** OPCIONES GENERALES ****
\RequirePackage[spanish]{babel}
\RequirePackage{fontspec}
% \setmainfont{Arial}
\RequirePackage{graphicx}

% **** ESTILO DE LOS TÍTULOS ****
\RequirePackage{titlesec}
\titleformat{\section}{\centering\bfseries}{}{0em}{}
\titleformat{\subsection}{\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\bfseries\itshape}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}{\bfseries}{\theparagraph}{1em}{} % Estilo negrita
\titleformat{\subparagraph}{\bfseries\itshape}{\thesubparagraph}{1em}{} % Estilo negrita y cursiva
\setcounter{secnumdepth}{5}

% espacio entre títulos
\titlespacing{\section}{0pt}{*0}{*0}
\titlespacing{\subsection}{0pt}{*0}{*0}
\titlespacing{\subsubsection}{0pt}{*0}{*0}
\titlespacing{\paragraph}{0pt}{*0}{*0}
\titlespacing{\subparagraph}{0pt}{*0}{*0}

% **** ESTILO DE ENUMERATES ****
\RequirePackage{enumitem}
\setlist[enumerate]{
  itemsep=6pt,
  parsep=0pt,
  topsep=0pt,
  partopsep=0pt,
  label=\alph*)
}

% **** NUMERACIÓN DE LA PÁGINA ****
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rhead{\thepage}
\renewcommand{\headrulewidth}{0pt}

% **** REFERENCIAS ****
\RequirePackage[colorlinks, allcolors=black]{hyperref}
\RequirePackage{apacite}
\bibliographystyle{apacite}

% **** ESPAÑOL ****
\RequirePackage[spanish]{babel}
\addto{\captionsspanish}{
  \renewcommand{\contentsname}{ÍNDICE}
  \renewcommand{\listfigurename}{ÍNDICE DE FIGURAS}
  \renewcommand{\listtablename}{ÍNDICE DE CUADROS}
}

% ========== [EXTRA PLUGINS] ==========
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{eso-pic}
\RequirePackage{rotating}

\endinput
