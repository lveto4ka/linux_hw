#!/bin/bash
mkdir terminal_task/work
mkdir terminal_task/results
awk -F '\t' '$3 == "gene" &&
$9 ~ /gene_type=unprocessed_pseudogene/ {
sub(/.*gene_name=/, "", $9)
sub(/;.*/, "", $9)
print $1 "\t" $4 "\t" $5 "\t" $7 "\t" $9
}
' data/gencode.v41.basic.annotation.gff3 > terminal_task/work/pseudogene.gff3
awk -F '\t' '{
    if ($4 == "+") {
        print $1 "\t" $2 "\t" $2+1 "\t" $4 "\t" $5
    }
    else {
        print $1 "\t" $3 "\t" $3+1 "\t" $4 "\t" $5
    }
}' terminal_task/work/pseudogene.gff3 > terminal_task/results/result.tsv

