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
