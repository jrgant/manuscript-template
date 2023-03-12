include .env

manuscript:
	quarto render manuscript.qmd
	/opt/libreoffice7.5/program/soffice --headless --convert-to pdf ${MANUSLUG}.docx

timestamp-main:
	cp manuscript.docx ${MANUSLUG}_$$(date +%Y-%m-%d-%H%M).docx
	cp manuscript.pdf ${MANUSLUG}_$$(date +%Y-%m-%d-%H%M).pdf
