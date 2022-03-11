#include <stdio.h>

int main(){
    int a,b;
    scanf("%d",&a);
    scanf("%d",&b);
    
    printf("%d\n",a*(b-((b/10)*10)));
    printf("%d\n",a*((int)(b*0.1)-((((int)(b*0.1))/10)*10)));
    printf("%d\n",a*(b/100));
    printf("%d\n",a*b);
    return 0;
}