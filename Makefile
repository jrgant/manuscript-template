export MANU="manuscript"
export MANU_BLIND=${MANU}_BLINDED
export MANU_TPAGE=${MANU}_TITLEPAGE
export DATE=$$(date +%Y-%m-%d-%H%M)
export SOFFICE_PDF_CMD=/opt/libreoffice7.5/program/soffice --headless --convert-to pdf

title:
	quarto render title-page.qmd -o ${MANU_TPAGE}.docx
	${SOFFICE_PDF_CMD} ${MANU_TPAGE}.docx

manuscript:
	quarto render manuscript.qmd -o ${MANU}.docx -P blind:false
	${SOFFICE_PDF_CMD} ${MANU}.docx

blinded:
	quarto render manuscript.qmd -o ${MANU_BLIND}.docx -P blind:true
	${SOFFICE_PDF_CMD} ${MANU_BLIND}.docx

timestamp-main:
	cp ${MANU_TPAGE}.docx 	_drafts/${MANU_TPAGE}_${DATE}.docx
	cp ${MANU}.docx 		_drafts/${MANU}_${DATE}.docx
	cp ${MANU_BLIND}.docx 	_drafts/${MANU_BLIND}_${DATE}.docx
	cp ${MANU}.pdf 			_drafts/${MANU}_${DATE}.pdf
	cp ${MANU_BLIND}.pdf 	_drafts/${MANU_BLIND}_${DATE}.pdf

clean-root:
	rm *docx *pdf
