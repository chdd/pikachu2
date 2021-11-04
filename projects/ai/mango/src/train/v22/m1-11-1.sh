folder=$(dirname "$0")
v=${folder##*/}
x=$(basename "$0")
echo $x
x=${x%.*}

sh ./train/${v}/base.sh \
  --use_history \
  --use_vid \
  --use_uinfo \
  --use_prev_info \
  --use_class_info \
  --use_stars \
  --use_title \
  --use_story \
  --use_active \
  --use_others=0 \
  --use_crosses \
  --use_image \
  --his_pooling='' \
  --model=Model \
  --mname=$x \
  $*