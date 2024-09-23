--- 
layout: post 
title: "splividoby_sizenvl" 
--- 
# 2024-09-23-周一-20：30：16：34 

## split video by size 4.79GB

```
param($file)
$i =ffprobe -i $file -show_format -v quiet
$erer=$file -split "\\"
$secneo=$erer[1] -split "\."
$filename=$secneo[0]
$a=$i -split "="
$duration=$a[14]
$index=0
$filewer=$filename+"_"+$index+".mkv"
ffmpeg -i $file -codec copy -fs 5110369740 $filewer
$nslm=ffprobe -i $filewer -show_format -v quiet
$adsf=$nslm -split "="
$dur=$adsf[14]
$floast=$duration/$dur
if([Math]::Ceiling($floast) -ne $floast){
$eeae=[Math]::Floor($floast)+1
}
else {
$eeae=$floast
}
++$index
for(; $index -lt $eeae; $index++){
$filewer=$filename+"_"+$index+".mkv"
ffmpeg -i $file -codec copy -ss $dur -fs 5110369740 $filewer
$nslm=ffprobe -i $filewer -show_format -v quiet
$adsf=$nslm -split "="
$dur=$adsf[14]
}
```

{% include copyheader.html %}

aaa, using too many $ lol, aa shit script.
