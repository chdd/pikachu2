folder=$(dirname "$0")
v=${folder##*/}
x=$(basename "$0")
echo $x
x=${x%.*}

sh ./run/$v/base2.sh \
  --model=Model \
  --doc_emb=doc_pos_emb \
  --author_emb=author_pos_emb \
  --singer_emb=singer_pos_emb \
  --song_emb=song_pos_emb \
  --doc_trainable=0 \
  --author_trainable=0 \
  --singer_trainable=0 \
  --song_trainable=0 \
  --pretrain_day=14 \
  --feats=user,doc,day,device,author,feed,song,singer \
  --feats2=manual_keys,machine_keys,manual_tags,machine_tags,desc \
  --his_actions=read_comments,comments,likes,click_avatars,forwards,follows,favorites,negs,poss,finishs,unfinishs \
  --his_id_feats=feed \
  --mname=$x \
  $*
