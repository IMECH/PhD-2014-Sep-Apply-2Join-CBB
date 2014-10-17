all:
	pdflatex  -jobname=0 "\def\numpic{0} \input{main.tex}"
	pdflatex  -jobname=1 "\def\numpic{20} \input{main.tex}"
	pdflatex  -jobname=2 "\def\numpic{40} \input{main.tex}"
	pdflatex  -jobname=3 "\def\numpic{60} \input{main.tex}"
	pdflatex  -jobname=4 "\def\numpic{80} \input{main.tex}"
	pdflatex  -jobname=5 "\def\numpic{100} \input{main.tex}"
	pdflatex  -jobname=6 "\def\numpic{120} \input{main.tex}"
	pdflatex  -jobname=7 "\def\numpic{140} \input{main.tex}"
	pdflatex  -jobname=8 "\def\numpic{160} \input{main.tex}"
	pdflatex  -jobname=9 "\def\numpic{180} \input{main.tex}"
	pdflatex  -jobname=10 "\def\numpic{200} \input{main.tex}"
clean:
        find . -name '*.aux' -type f -exec rm -rf {} \;
        find . -name '*.bbl' -type f -exec rm -rf {} \;
        find . -name '*.blg' -type f -exec rm -rf {} \;
        find . -name '*.log' -type f -exec rm -rf {} \;
        find . -name '*.nav' -type f -exec rm -rf {} \;
        find . -name '*.out' -type f -exec rm -rf {} \;
        find . -name '*.snm' -type f -exec rm -rf {} \;
        find . -name '*.toc' -type f -exec rm -rf {} \;
        find . -name '*.vrb' -type f -exec rm -rf {} \;

