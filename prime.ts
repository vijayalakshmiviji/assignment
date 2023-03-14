function prime(a:number)
{
var i:number=2;
for( ;i<a;i++)
{
if(a%i==0)
break;
}
if(a==i)
console.log("prime");
else
console.log("composit");
}
prime(13);
