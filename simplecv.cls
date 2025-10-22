
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{simplecv}[2025/01/21 A Simple CV Template]

\LoadClass[]{article}
\RequirePackage{xcolor}

\definecolor{headercolour}{rgb}{0.25,0.25,0.25}
%-------------------------------------------------------
\definecolor{materialpurple}{HTML}{9C27B0}
\definecolor{materialindigo}{HTML}{3F51B5}
\definecolor{materialblue}{HTML}{2196F3}
\definecolor{materialcyan}{HTML}{00BCD4}
\definecolor{materialteal}{HTML}{009688}
\definecolor{materialgreen}{HTML}{4CAF50}
\definecolor{materiallime}{HTML}{CDDC39}
\definecolor{materialamber}{HTML}{FFC107}
\definecolor{materialbrown}{HTML}{795548}
\definecolor{materialred}{HTML}{FF4436}
\definecolor{materialorange}{HTML}{FF5722}
\definecolor{pblue}{HTML}{0395DE}
\newcommand{\iconsize}{\huge}
% ---------------------------------------------------------------------------
\DeclareOption{grayscale}{
% Colors
\definecolor{headerblue}{HTML}{2EB6E1}%
\definecolor{cvorange}{HTML}{FFC300}
\definecolor{cvpurple}{HTML}{B32EE1}

\definecolor{cvred}{HTML}{E1592E}
\definecolor{cvgreen}{HTML}{5DE12E}
\colorlet{cvgreen}{headerblue}
\colorlet{cvpurple}{cvred}

% TIMELINE
\definecolor{timelinecolour}{HTML}{414B96} %#660022
\definecolor{jackbeige}{RGB}{226,212,186}

\newcommand{\paracolbackgroundoptions}{
\backgroundcolor{c[0](1cm,1cm)(0.5\columnsep,10000pt)}[rgb]{0.9,0.9,0.9}
\backgroundcolor{c[1](0.5\columnsep,4pt)(4pt,4pt)}[rgb]{1,1,1}
\backgroundcolor{C[0](-1cm,0pt)(0.5\columnsep,10000pt)}[rgb]{0.9,0.9,0.9}
\backgroundcolor{C[1](0.5\columnsep,4pt)(10000pt,10000pt)}[rgb]{1,1,1}
}
\newcommand{\setasidefontcolour}{
\color{black}
}
\definecolor{labelcolour}{HTML}{000000}
\definecolor{iconcolour}{HTML}{000000}
\definecolor{headerfontbox}{HTML}{000000}
\definecolor{headerfontboxfont}{HTML}{FFFFFF}
\definecolor{skilllabelcolour}{HTML}{b3b3b3}
}

% ---------------------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\RequirePackage{simplecv-commands}
