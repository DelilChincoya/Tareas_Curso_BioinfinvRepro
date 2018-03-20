# 4. Running the pipeline
*******************
### 4.1  Clean the data

In a typical analysis, data will be received from an Illumina sequencer, or some other type of sequencer as FASTQ files. The first requirement is to demultiplex, or sort, the raw data to recover the individual samples in the Illumina library. While doing this, we will use the [Phred](http://en.wikipedia.org/wiki/Phred_quality_score) scores provided in the FASTQ files to discard sequencing reads of low quality. These tasks are accomplished using the **process_radtags** program.




![radtags](http://catchenlab.life.illinois.edu/stacks/manual/process_radtags.png)



Some things to consider when running this program:

+   ** process_radtags** can handle both single-end or paired-end Illumina sequencing.

* The raw data can be compressed, or gzipped (files end with a "`.gz`" suffix).

* You can supply a list of barcodes, or indexes, to **process_radtags** in order for it to demultiplex your samples. These barcodes can be single-end barcodes or combinatorial barcodes (pairs of barcodes, one on each of the paired reads). Barcodes are specified, one per line (or in tab separated pairs per line), in a text file.

	+ If, in addition to your barcodes, you also supply a sample name in an extra column within the barcodes file, **process_radtags** will name your output files according to sample name instead of barcode.