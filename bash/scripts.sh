########################################################
# example of using bash array of strings
########################################################

text=()
text+=("/export/fs04/a12/rhuang/kws/kws_exp/shay/s5c/data/train/text")
text+=("/export/fs04/a12/rhuang/kws/kws_exp/shay/s5c/data/train_dev/text")
text+=("/export/fs04/a12/rhuang/kws/kws_exp/shay/s5c/data/std2006_dev/text")
text+=("/export/fs04/a12/rhuang/kws/kws_exp/shay/s5c/data/std2006_eval/text")
wc $(printf " %s" "${text[@]}")
inputfiles=$(printf " -i %s " "${text[@]}")    # be careful of the space before -i
python ... inputfiles ...


########################################################
# exmple of adding an extra column (e.g. uid) in front of each line of a file
########################################################

fisher_text="/export/fs04/a12/rhuang/kws/kws_exp/shay/s5c/data/local/lm/fisher/text1.gz"
# method 1:
zcat $fisher_text | sed 's/^/uid /' > $workdir/fisher_text.txt
# method 2:
zcat $fisher_text | awk '{print "line-"FNR" "$0}' > $workdir/fisher_text.txt


