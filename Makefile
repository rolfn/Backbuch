
# Rolf Niepraschk, 2025-04-28

.SUFFIXES : .tex .pdf .png .jpg

LATEX = pdflatex

SCANS_DIR = scans/
SCANS = 0a-mod.jpg 0b-mod.png 0c-mod.png 0d-mod.png \
01-mod.png 02-mod.png 03-mod.png 04-mod.png 05-mod.png 06-mod.png 07-mod.png \
08-mod.png 09-mod.png 10-mod.png 11-mod.png 12-mod.png 13-mod.png 14-mod.png \
15-mod.png 16-mod.png 17-mod.png 18-mod.png 19-mod.png 20-mod.png 21-mod.png \
22-mod.png 23-mod.png 24_0a-mod.jpg 24_0b-mod.jpg 24-mod.png \
24_0a-mod.jpg 24_0b-mod.jpg \
25-mod.png 26-mod.png 27-mod.png 28-mod.png 29-mod.png 30-mod.png 31-mod.png \
32-mod.png 33-mod.png 34-mod.png 35-mod.png 36-mod.png 37-mod.png 38-mod.png \
39-mod.png 40-mod.png 41-mod.png 42-mod.png 43-mod.png 44-mod.png \
44_0a-mod.jpg 44_0b-mod.jpg 44_0c-mod.jpg 44_0d-mod.jpg \
45-mod.png 46-mod.png 47-mod.png 48-mod.png 49-mod.png 50-mod.png 51-mod.png \
52-mod.png 53-mod.png 54-mod.png 55-mod.png 56-mod.png 57-mod.png 58-mod.png \
59-mod.png 60-mod.png 61-mod.png 62-mod.png 63-mod.png 64-mod.png \
64_0a-mod.jpg 64_0b-mod.jpg \
65-mod.png 66-mod.png 67-mod.png 68-mod.png 69-mod.png 70-mod.png 71-mod.png \
72-mod.png 73-mod.png 74-mod.png 75-mod.png 76-mod.png 77-mod.png 78-mod.png \
79-mod.png 80-mod.png 81-mod.png 82-mod.png 83-mod.png 84-mod.png 85-mod.png \
86-mod.png 87-mod.png \
z01-mod.png z02-mod.png z03-mod.png z04-mod.png z05-mod.jpg 

SCANS := $(addprefix $(SCANS_DIR), $(SCANS))

Royal-Backbuch-A4.pdf : Royal-Backbuch-A4.tex Royal-Backbuch.pdf
	$(LATEX) $<
	
Royal-Backbuch-A5.pdf : Royal-Backbuch-A5.tex Royal-Backbuch.pdf
	$(LATEX) $<

Royal-Backbuch.pdf : Royal-Backbuch.tex $(SCANS)
	$(LATEX) $<

clean :
	$(RM) $(addprefix Royal-Backbuch, .log .aux) $(addprefix Royal-Backbuch-A4, .log .aux)

veryclean : clean
	$(RM) Royal-Backbuch.pdf Royal-Backbuch-A4.pdf

.PHONY : $(SCANS_DIR)

