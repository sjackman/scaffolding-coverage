all:

.PHONY: all

%.sam: %.sam.orig
	sam-fixpairflags $< >$@

%.hist: %.sam
	abyss-fixmate -h $@ $< >/dev/null

%-fixmate.sam: %.sam
	abyss-fixmate -s $@ $< >/dev/null

%.sam.tsv: %.sam
	bioawk -csam 'BEGIN { OFS="\t"; print "pos", "mpos", "tlen" } \
		$$tlen > 0 {print $$pos, $$pnext, $$tlen}' $< >$@

%.bam.tsv: %.bam
	samtools view $< \
		|bioawk -csam 'BEGIN { OFS="\t"; print "pos", "mpos", "tlen" } \
		$$tlen > 0 {print $$pos, $$pnext, $$tlen}' >$@
