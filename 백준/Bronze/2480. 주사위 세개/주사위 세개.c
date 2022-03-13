#include <stdio.h>

int main()
{
    int num1,num2,num3,reward = 0;
    
    scanf("%d %d %d",&num1,&num2,&num3);
    
    if (num1 == num2 && num1 == num3) {
        reward += 10000 + (num1 * 1000);
    } else if (num1 == num2) {
        reward += 1000 + (num1 * 100);
    } else if (num1 == num3) {
        reward += 1000 + (num1 * 100);
    } else if (num2 == num3) {
        reward += 1000 + (num2 * 100);
    } else {
        if (num1 > num2 && num2 > num3) {
            reward += num1 * 100;
        } else if (num1 > num3 && num3 > num2) {
            reward += num1 * 100;
        } else if (num2 > num1 && num1 > num3) {
            reward += num2 * 100;
        } else if (num2 > num3 && num3 > num1) {
            reward += num2 * 100;
        } else if (num3 > num1 && num1 > num2) {
            reward += num3 * 100;
        } else if (num3 > num2 && num2 > num1) {
            reward += num3 * 100;
        }
    }
    
    printf("%d",reward);
    
    return 0;
}