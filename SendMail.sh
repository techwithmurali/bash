finalHtml="$(cat /scratch/work_area/final.html)"
wrdCount=`echo $finalHtml|wc -c`
echo $wrdCount

if [ $wrdCount -gt 450 ]
then
echo "$finalHtml" | mutt \
-s "This is a test Mail" \
-e "set content_type=text/html" \
-e "my_hdr From:testmail@oracle.com" \
-c muralidharan.rengarajan@oracle.com \
muralidharan.rengarajan@oracle.com
fi

echo $finalHtml > final.html