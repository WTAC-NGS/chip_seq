## Move to Notebooks to avoid links failling

cd  Notebooks/

## Merge ipython notebooks in to one
nbmerge index.ipynb \
	dataset-intro.ipynb \
	pax5-alignment.ipynb \
	manipulate-sam.ipynb \
	alignment-visualisation.ipynb \
	control-alignment.ipynb \
	identifying-enriched-areas.ipynb \
	file-formats.ipynb \
	inspecting-genomic-regions.ipynb \
	motif-analysis.ipynb >  ChIP-Seq.ipynb


## Convert the main ipynb to PDF and remove it
jupyter-nbconvert --to pdf  ChIP-Seq.ipynb
rm  ChIP-Seq.ipynb

## Convert answers ipython notebook to PDF
jupyter-nbconvert --to pdf answers.ipynb
cd ..

## move final pdfs to practicals folder
mv Notebooks/ChIP-Seq.pdf ./ChIP-Seq.pdf
mv Notebooks/answers.pdf ./ChIP-Seq-Answers.pdf


