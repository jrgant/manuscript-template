include .env

manuscript:
	quarto render manuscript.qmd
	/opt/libreoffice7.5/program/soffice --headless --convert-to pdf ${MANUSLUG}.docx

timestamp-main:
	cp ${MANUSLUG}.docx ${MANUSLUG}_$$(date +%Y-%m-%d-%H%M).docx
	cp ${MANUSLUG}.pdf ${MANUSLUG}_$$(date +%Y-%m-%d-%H%M).pdf
