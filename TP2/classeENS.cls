\LoadClass[a4paper,12pt]{article} % Classe du document

%--------------------- Packages ------------------------
\RequirePackage[utf8]{inputenc} 
\usepackage[english]{babel}
\usepackage[sorting=none]{biblatex} %Imports biblatex package
\addbibresource{refs.bib} %Import the bibliography file
%Caractères spéciaux
\RequirePackage[section]{placeins}%Pour placement de section
\RequirePackage[T1]{fontenc} %Quelques lettres qui sont pas inclus dans UTF-8
\RequirePackage{mathtools} %Paquet pour des équations et symboles mathématiques
\RequirePackage{siunitx} %Pour écrire avec la notation scientifique (Ex.: \num{2e+9})
\RequirePackage{float} %Pour placement d'images
\RequirePackage{graphicx} %Paquet pour insérer des images
\RequirePackage[justification=centering]{caption} %Pour les légendes centralisées

\RequirePackage{wallpaper}
\RequirePackage{nomencl}
%\makenomenclature
\RequirePackage{fancyhdr}
%\pagestyle{fancy}
%\fancyheadoffset{1cm}
%\setlength{\headheight}{2cm}
\RequirePackage{url}

\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=3.5cm]{geometry} %Configuration de la page
\RequirePackage{changepage}
\RequirePackage{url}
\RequirePackage{pdftricks2}
\RequirePackage{enumitem}
\RequirePackage[retainorgcmds]{IEEEtrantools}
\numberwithin{equation}{section}
\RequirePackage{xcolor}
\RequirePackage{amsfonts}

% Paragraph identation and spacing
\setlength{\parindent}{0.4cm}
\setlength{\parskip}{1em}
\usepackage{indentfirst}

% Code blocks
\usepackage{listings}
\usepackage{minted}
\usepackage{csquotes}
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

% Useful packages
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage[colorlinks=true, allcolors=black]{hyperref}
\usepackage{pdflscape}
\usepackage{subfigure}
\usepackage{float}

%-------------------- Informations sur le rapport ----------------------

\newcommand{\departement}[1]{\renewcommand{\departement}{#1}}
\newcommand{\matiere}[1]{\renewcommand{\matiere}{#1}}
\newcommand{\motif}[1]{\renewcommand{\motif}{#1}}
\newcommand{\titre}[1]{\renewcommand{\titre}{#1}}
\newcommand{\enseignant}[1]{\renewcommand{\enseignant}{#1}}
\newcommand{\eleves}[1]{\renewcommand{\eleves}{#1}}
\newcommand{\tuteurpcp}[1]{\renewcommand{\tuteurpcp}{#1}}
\newcommand{\fairemarges}{
\makenomenclature
\pagestyle{fancy}
\fancyheadoffset{1cm}
\setlength{\headheight}{2cm}
\lhead{\includegraphics[scale=0.30]{logos/logo_ensps.png}} %Affichage de l'image au top de la page
\rhead{\includegraphics[scale=0.17]{logos/logo_mva.png}}


}

\newcommand{\fairepagedegarde}{
\begin{titlepage}
\changepage{2cm}%amount added to textheight
           {}%amount added to textwidth
           {}%amount added to evensidemargin
           {}%amount added to oddsidemargin
           {}%amount added to columnsep
           {-2cm}%amount added to topmargin
           {}%amount added to headheight
           {}%amount added to headsep
           {}%amount added to footskip

\setlength{\wpYoffset}{-8cm}    
\ThisCenterWallPaper{0.65}{logos/corenlp-title.png}
	\flushleft
	\includegraphics[width=0.40\textwidth]{logos/logo_ensps.png} %Insertion du logo
	\hfill
	\includegraphics[width=0.4\textwidth]{logos/logo_mva.png}\par\vspace{1cm}
	\centering %Centraliser le contenu
	{\scshape\LARGE École Normale Supérieure Paris-Saclay \par \scshape\Large \departement \par } %Nom de l'université
	\vspace{1.5cm}%Espace de 1,5cm
	{\scshape\large \matiere \\ \motif\par} %sous-titre
	\vspace{1cm}%Espace de 1cm
    \rule{\linewidth}{0.2 mm} \\[0.4 cm]
	{\huge\bfseries \titre \par} \
    \rule{\linewidth}{0.2 mm} \\[1.5 cm]
	\vspace{1cm}%Espace de 3cm


    
	\begin{minipage}{0.45\textwidth} %Minipage pour faire deux colonnes
		\begin{flushleft} \large %Envoyer à gauche
            \emph{\textbf{Students:}}\\ %Pour le titre au dessus des noms à gauche
            \eleves\\ %Remplacer pour chacun
		\end{flushleft}
	\end{minipage}
	\begin{minipage}{0.45\textwidth}
		\begin{flushright} \large
            \begin{tabular}{@{}l@{}}
                \emph{\textbf{Professor:}} \\
    		      \enseignant \\
            \end{tabular}
		\end{flushright}
	\end{minipage}\\[1cm]
    
	\vfill
	{\large \today\par} %Affichage de la date

\end{titlepage}
}