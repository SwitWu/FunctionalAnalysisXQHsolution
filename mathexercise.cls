%%
%% This is file `mathexercise.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% mathexercise.dtx  (with options: `class')
%% 
%% This is a generated file. Copyright (C) 2022 by SiyuWu
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either
%% version 1.3 of this license or (at your option) any later
%% version.  The latest version of this license is in:
%%    http://www.latex-project.org/lppl.txt
%%    and version 1.3 or later is part of all distributions of
%% LaTeX version 2005/12/01 or later.
%% 
\NeedsTeXFormat{LaTeX2e}[2022/12/10]
\ProvidesClass{mathexercise}
  [2022/12/12 v1.0 class file to write mathematical exercise solutions]

\newif\if@chinesesupport
\newif\if@tikzcover
\@chinesesupportfalse
\@tikzcoverfalse
\DeclareOption{withinchap}{\def\exercounter@within{chapter}}
\DeclareOption{withinsec}{\def\exercounter@within{section}}
\DeclareOption{tikzcover}{\@tikzcovertrue}
\DeclareOption{chinese}{\@chinesesupporttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ExecuteOptions{withinchap}
\ProcessOptions\relax

\LoadClass{report}

\RequirePackage{indentfirst}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage{mathtools}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{extarrows}
\RequirePackage{xcolor}
\RequirePackage{tcolorbox}
\RequirePackage[width=15cm]{geometry}
\RequirePackage{tikz}

\setlist[enumerate,1]{%
  itemindent = 0pt,
  labelwidth = 1em,
  leftmargin = 2em,
  labelsep = 5pt,
  labelindent = *}
\setlist[enumerate,2]{%
  itemindent = 0pt,
  labelwidth = 1em,
  leftmargin = 1.5em,
  labelsep = 5pt,
  labelindent = *}

\usetikzlibrary{intersections,decorations.text}
\definecolor{c1}{RGB}{62,  97,  127}
\definecolor{c2}{RGB}{104, 182, 182}
\definecolor{c3}{RGB}{107, 190, 190}
\definecolor{c4}{RGB}{100, 172, 174}
\definecolor{c5}{RGB}{95,  162, 162}

\newtheoremstyle{mytheorem}{3pt}{3pt}{\rmfamily}{\parindent}{\bfseries}{}%
  {.5em}{\thmname{#1}\thmnumber{ #2}\thmnote{ (#3)}}

\if@chinesesupport
  \RequirePackage[heading=true,fontset=fandol]{ctex}
  \ctexset {
    chapter = {
      beforeskip = 0pt,
      fixskip = true,
      format = \Huge\bfseries,
      nameformat = \rule{\linewidth}{1bp}\par\bigskip\hfill\chapternamebox,
      number = \arabic{chapter},
      aftername = \par\medskip,
      aftertitle = \par\bigskip\nointerlineskip\rule{\linewidth}{2bp}\par}
  }
  \newcommand\chapternamebox[1]{%
  \parbox{\ccwd}{\linespread{1}\selectfont\centering #1}}
  \newcommand{\solutionname}{解}
  %theorem environment
  \theoremstyle{mytheorem}\newtheorem{theorem}{定理}
  \theoremstyle{mytheorem}\newtheorem{lemma}{引理}
  \theoremstyle{mytheorem}\newtheorem{example}{例}
  \theoremstyle{mytheorem}\newtheorem*{remark}{注}
  \theoremstyle{mytheorem}\newtheorem*{corollary}{推论}
  \theoremstyle{mytheorem}\newtheorem{proposition}{命题}
  \theoremstyle{mytheorem}\newtheorem{note}{笔记}
  \newcommand{\authorname}{作者}
  \newcommand{\textbookname}{教材}
  \newcommand{\proofnamestyle}{\bfseries}
  \newcommand{\proofpunct}{:}
\else
  \newcommand{\solutionname}{Solution}
  \theoremstyle{mytheorem}\newtheorem{theorem}{Theorem}
  \theoremstyle{mytheorem}\newtheorem{lemma}{Lemma}
  \theoremstyle{mytheorem}\newtheorem{example}{Example}
  \theoremstyle{mytheorem}\newtheorem*{remark}{Remark}
  \theoremstyle{mytheorem}\newtheorem*{corollary}{Corollary}
  \theoremstyle{mytheorem}\newtheorem{proposition}{Proposition}
  \theoremstyle{definition}\newtheorem{note}{Note}[chapter]
  \newcommand{\authorname}{Author}
  \newcommand{\textbookname}{Textbook}
  \newcommand{\proofnamestyle}{\itshape}
  \newcommand{\proofpunct}{.}
\fi
\newcommand{\e}{\mathrm{e}}
\newcommand{\T}{\mathrm{T}}
\newcommand{\upi}{\mathrm{i}}
\newcommand{\id}{\mathrm{id}}
\newcommand{\weakconverge}{\rightharpoonup}
\newcommand{\closure}[1]{\overline{#1}}
\newcommand{\conjugate}[1]{\overline{#1}}
\newcommand{\diff}{\mathop{}\!\mathrm{d}}
\newcommand{\necessary}{$(\Rightarrow)$}
\newcommand{\sufficient}{$(\Leftarrow)$}
\newcommand{\FR}{\mathbb{R}}
\newcommand{\FK}{\mathbb{K}}
\newcommand{\FQ}{\mathbb{Q}}
\newcommand{\FN}{\mathbb{N}}
\newcommand{\FZ}{\mathbb{Z}}
\newcommand{\ii}{\mathrm{i}}
\newcommand{\FC}{\mathbb{C}}
\DeclareMathOperator{\cont}{Cont}
\DeclareMathOperator{\codim}{codim}
\DeclareMathOperator{\conv}{conv}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\diam}{diam}
\DeclareMathOperator{\dist}{dist}
\DeclareMathOperator{\Int}{Int}
\DeclareMathOperator{\lcm}{lcm}
\DeclareMathOperator{\rank}{rank}
\DeclareMathOperator{\sgn}{sgn}
\DeclareMathOperator{\sign}{sign}
\DeclareMathOperator{\spt}{spt}
\DeclareMathOperator{\supp}{supp}
\DeclareMathOperator{\Span}{span}
\DeclareMathOperator{\tr}{tr}
\renewcommand{\Re}{\operatorname{Re}}
\renewcommand{\Im}{\operatorname{Im}}
\DeclarePairedDelimiterX{\lrangle}[1]{\langle}{\rangle}{#1}
\DeclarePairedDelimiterX{\innerp}[2]{\langle}{\rangle}{#1,#2}
\DeclarePairedDelimiterX{\norm}[1]{\lVert}{\rVert}{#1}
\newcommand{\textbook}[1]{\gdef\@textbook{#1}}
\newcommand{\textbookauthor}[1]{\gdef\@textbookauthor{#1}}
\newcommand{\textbookversion}[1]{\gdef\@textbookversion{#1}}
\renewenvironment{proof}[1][\proofname]{\par
  \pushQED{\qed}
  \normalfont\topsep1\p@\@plus6\p@\relax
  \trivlist\item\relax
{{\proofnamestyle #1}\@addpunct{\proofpunct}}
  \hspace\labelsep\ignorespaces
}{%
\popQED\endtrivlist\@endpefalse
}

\newenvironment{solution}[1][\solutionname]{\par
\pushQED{\qed}%
  \normalfont\topsep1\p@\@plus6\p@\relax
  \trivlist\item\relax
{{\proofnamestyle #1}\@addpunct{\proofpunct}}%
  \hspace\labelsep\ignorespaces
}{%
\popQED\endtrivlist\@endpefalse
}
\newcounter{exercise}
\counterwithin*{exercise}{\exercounter@within}
\NewDocumentEnvironment{exercise}{ o d<>}{%
  \IfNoValueTF{#1}%
              {\stepcounter{exercise}}%
              {\setcounter{exercise}{#1}}%
  \list{\textbf{\theexercise.}}{%
    % \renewcommand{\makelabel}[1]{##1\hfil}%
    \setlength{\labelwidth}{1.5em}%
    \setlength{\labelsep}{0.3em}%
    \setlength{\leftmargin}{1.8em}%
    \setlength{\itemindent}{0em}%
  }%
  \item 
  \IfNoValueTF{#2}{}{\textbf{(#2)}\space\ignorespaces}
}%
{%
  \endlist
}
\setlist{nosep,left=\parindent}
\RequirePackage{tasks}
\settasks{after-item-skip=0.5ex plus 0.5ex minus 1ex}
\RequirePackage{hyperref}
\hypersetup{
  colorlinks,%
  linkcolor=red
}
\if@tikzcover
  \renewcommand{\maketitle}{%
    \thispagestyle{empty}
    \begin{tikzpicture}[overlay,remember picture,font=\sffamily\bfseries]
      \draw[ultra thick,c4,name path=big arc] ([xshift=-2mm]current page.north)
      arc(150:285:11)
      coordinate[pos=0.225] (x0);
      \begin{scope}
      \clip ([xshift=-2mm]current page.north) arc(150:285:11)
        --(current page.north east);
      \fill[c4!50,opacity=0.25] ([xshift=4.55cm]x0) circle (4.55);
      \fill[c4!50,opacity=0.25] ([xshift=3.4cm]x0) circle (3.4);
      \fill[c4!50,opacity=0.25] ([xshift=2.25cm]x0) circle (2.25);
      \draw[ultra thick,c4!50] (x0) arc(-90:30:6.5);
      \draw[ultra thick,c4] (x0) arc(90:-30:8.75);
      \draw[ultra thick,c4!50,name path=arc1] (x0) arc(90:-90:4.675);
      \draw[ultra thick,c4!50] (x0) arc(90:-90:2.875);
      \path[name intersections={of=big arc and arc1,by=x1}];
      \draw[ultra thick,c4,name path=arc2] (x1) arc(135:-20:4.75);
      \draw[ultra thick,c4!50] (x1) arc(135:-20:8.75);
      \path[name intersections={of=big arc and arc2,by={aux,x2}}];
      \draw[ultra thick,c4!50] (x2) arc(180:50:2.25);
      \end{scope}
      \path[decoration={text along path,text color=c4,
              raise = -2.8ex,
              text  along path,
              text = {|\sffamily\bfseries|\@date},
              text align = center,
            },
            decorate
          ] ([xshift=-2mm]current page.north) arc(150:245:11);
      %
      \begin{scope}
      \path[clip,postaction={fill=c3}]
      ([xshift=2cm,yshift=-8cm]current page.center) rectangle ++ (4.2,7.7);
      \draw[c5,ultra thick,fill=c2] ([xshift=0.5cm,yshift=-8cm]current page.center)
        ([xshift=0.5cm,yshift=-8cm]current page.center)  arc(180:60:2)
        |- ++ (-3,6) --cycle;
      \draw[ultra thick,c5] ([xshift=-1.5cm,yshift=-8cm]current page.center)
      arc(180:0:2);
      \draw[ultra thick,c5] ([xshift=0.5cm,yshift=-8cm]current page.center)
      arc(180:0:2);
      \draw[ultra thick,c5] ([xshift=2.5cm,yshift=-8cm]current page.center)
      arc(180:0:2);
      \draw[ultra thick,c5] ([xshift=4.5cm,yshift=-8cm]current page.center)
      arc(180:0:2);
      \fill[red] ([xshift=2.5cm,yshift=-8cm]current page.center) +(60:2)
        circle(1.5mm) node[above right=2mm,text=c5!80!black]
        {$\rho:=\dfrac{1+\sqrt{-3}}{2}$};
      \end{scope}
      %
      \fill[c1] ([xshift=2cm,yshift=-8cm]current page.center)
        rectangle ++ (-12.7,7.7);
      \node[text=white,anchor=west,scale=3,inner sep=0pt] at
      ([xshift=-9.5cm,yshift=-3.25cm]current page.center) {\@title};
      \node[text=white,anchor=west,scale=1.5,inner sep=0pt] at
      ([xshift=-9.5cm,yshift=-6cm]current page.center) {\authorname:\ \@author};
      \node[text=white,anchor=west,scale=1.5,inner sep=0pt] at
      ([xshift=-9.5cm,yshift=-6.75cm]current page.center)%
      {\textbookname:\ \@textbook\ (\@textbookauthor\ \@textbookversion)};
      %
      % \draw[gray,line width=5mm]
      % ([xshift=2mm,yshift=-1mm]current page.south west)
      %  rectangle ([xshift=-2mm,yshift=1mm]current)
      % page.north east);
    \end{tikzpicture}
  }
\else\fi
\endinput
%%
%% End of file `mathexercise.cls'.
