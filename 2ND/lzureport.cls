\ProvidesClass{lzureport}
\LoadClass[a4paper,12pt]{ctexart}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\usepackage{fontspec}
\usepackage{fancyhdr}
\usepackage{lipsum}
\usepackage{zhlipsum}
\usepackage{array}

% \newcolumntype{C}[1]{>{\centering}p{#1}}
% \setmainfont{texgyrepagella-regular.otf} 
\setmainfont{Times New Roman}
\bibliographystyle{IEEEtran}

\geometry{top=1.25in,bottom=1.25in,left=1.25in,right=1.25in}

% 信息
\newcommand\major[1]{\def\@major{#1}}
\newcommand\name[1]{\def\@name{#1}}
\newcommand\stuid[1]{\def\@stuid{#1}}
\newcommand\college[1]{\def\@college{#1}}
\renewcommand\date[1]{\def\@date{#1}}
\newcommand\expname[1]{\def\@expname{#1}}
\newcommand\course[1]{\def\@course{#1}}

%页眉页脚
\pagestyle{fancy}
\fancyhead[L]{\@name}
\fancyhead[C]{\@expname}
\fancyhead[R]{\@stuid}

% 封面
\newcommand{\makecover}{
  \thispagestyle{empty}
  \begin{center}
    \begin{center}
      \includegraphics[width=4cm]{figure/lzulogo.png}\\
      \includegraphics[width=6cm]{figure/lzubadge.png}
    \end{center}
    \vspace{1cm}
    \bfseries\huge{\@course}\\
    \vspace{0.5cm}
    \bfseries\Large{实验名称：\@expname}
    \vspace{2cm}
    \begin{center}
      \large
      \renewcommand\arraystretch{1.6}
      \begin{tabular}{p{2cm}<{\centering}p{6cm}<{\centering}}
        \bfseries{姓名：} & {\centering \@name}   \\ \cline{2-2}
        \bfseries{学院：} & {\centering \@college} \\ \cline{2-2}
        \bfseries{专业：} & {\centering \@major}  \\ \cline{2-2}
        \bfseries{学号：} & {\centering \@stuid}  \\ \cline{2-2}
      \end{tabular}
    \end{center}
    \vfill
    \Large{\@date}
  \end{center}
  \newpage
}