export MANUSLUG="manuscript"
export DATE=$$(date +%Y-%m-%d-%H%M)

title:
	quarto render title-page.qmd -o ${MANUSLUG}_titlepage.docx
	/opt/libreoffice7.5/program/soffice --headless --convert-to pdf ${MANUSLUG}_titlepage.docx

manuscript:
	quarto render manuscript.qmd -o ${MANUSLUG}.docx -P blind:false
	/opt/libreoffice7.5/program/soffice --headless --convert-to pdf ${MANUSLUG}.docx

blinded:
	quarto render manuscript.qmd -o ${MANUSLUG}_BLINDED.docx -P blind:true
	/opt/libreoffice7.5/program/soffice --headless --convert-to pdf ${MANUSLUG}_BLINDED.docx

timestamp-main:
	cp ${MANUSLUG}_titlepage.docx ${MANUSLUG}_${DATE}.docx
	cp ${MANUSLUG}.docx ${MANUSLUG}_${DATE}.docx
	cp ${MANUSLUG}_BLINDED.docx ${MANUSLUG}_BLINDED_${DATE}.docx
	cp ${MANUSLUG}.pdf ${MANUSLUG}_${DATE}.pdf
	cp ${MANUSLUG}.pdf ${MANUSLUG}_BLINDED_${DATE}.pdf
