Determine the required mate-pair coverage for scaffolding
================================================================================

Determine the coverage in mate-pair libraries necessary for
scaffolding.

Tony wrote...
> Here are the alignments:
> /projects/ABySS/assemblies/PG/genome/abyss-1.3.4/PG29/20121204/k109/transcriptome_scaff/no-complex/w_mp40k/mp40k.sam
>
> They were aligned to the transcriptome rescaffolded assembly:
> /projects/ABySS/assemblies/PG/genome/abyss-1.3.4/PG29/20121204/k109/transcriptome_scaff/no-complex/w_mp40k/PG29-10.fa

Pebble and Rock Band: Heuristic Resolution of Repeats and Scaffolding in the Velvet Short-Read de Novo Assembler
Daniel R. Zerbino, Gayle K. McEwen, Elliott H. Margulies, Ewan Birney
http://dx.doi.org/doi:10.1371/journal.pone.0008407.g002

## Estimating the expected number of paired-end connections between two contigs

> For each pair of contigs connected by read pairs, and for each
> insert library, we call A the length of the longer node, B the
> length of the shorter one, D the estimated distance between the two,
> and ρ the density of paired-end reads on the longer node. The
> paired-end reads are characterised by the mean μ and the standard
> deviation σ of the insert length distribution.
>
> We first define a few variables:
>
> ![variables](http://www.plosone.org/article/fetchObject.action?uri=info:doi/10.1371/journal.pone.0008407.e001&representation=PNG)
>
> We finally obtain an estimate of the expected number X of paired-end
> connections between the two contigs (cf. Text S1), using the
> probability density Q and the standard error function erf associated
> to the normal distribution:
>
> ![estimate](http://www.plosone.org/article/fetchObject.action?uri=info:doi/10.1371/journal.pone.0008407.e002&representation=PNG)
