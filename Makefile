all:
	xelatex main.tex
        asy main-*.asy
        cp ./figures/3Dchannel.pdf ./main-1+0_0.pdf
	xelatex  main.tex
clean:
        rm main-*
        find . -name '*.aux' -type f -exec rm -rf {} \;
        find . -name '*.bbl' -type f -exec rm -rf {} \;
        find . -name '*.blg' -type f -exec rm -rf {} \;
        find . -name '*.log' -type f -exec rm -rf {} \;
        find . -name '*.nav' -type f -exec rm -rf {} \;
        find . -name '*.out' -type f -exec rm -rf {} \;
        find . -name '*.snm' -type f -exec rm -rf {} \;
        find . -name '*.toc' -type f -exec rm -rf {} \;
        find . -name '*.vrb' -type f -exec rm -rf {} \;
        find . -name '*.pre' -type f -exec rm -rf {} \;

