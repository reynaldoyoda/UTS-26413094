awk '
BEGIN {FS=OFS=","}
{
sum=0; n=0; count=0
for(i=5;i<=NF;i++){
if ( $i > 0){n++;}
sum+=$i;
}
if(n-3 > 0)
print $2,"count:"n-3,"sum:"sum,"average:"sum/n
else
print $2,"count:"n-3,"sum:"sum,"average:0"
}' new.csv