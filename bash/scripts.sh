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


########################################################
# Parallelize a Bash FOR Loop
########################################################
# https://unix.stackexchange.com/a/103921
for stuff in things
do
( something
  with
  stuff ) &
done
wait # for all the something with stuff


########################################################
# Get running time of some codes
########################################################
# https://unix.stackexchange.com/questions/52313/how-to-get-execution-time-of-a-script-effectively
start=`date +%s`
stuff
end=`date +%s`
runtime=$((end-start))

