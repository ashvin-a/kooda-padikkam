int main(){
    
    int a[] = {1, 2, 3};
    int b[] = {2, 3, 4};
    int len = sizeof(a) / sizeof(int);
    int c[len] = {0};

    for (int i = 0; i < (len); i++)
    {
        c[i] = a[i] + b[i];
    }
    for (int i = 0; i < (len); i++){
        printf("%d\n", c[i]);
    }
    return 0;
}

main();