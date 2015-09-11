
#include <stdio.h>

int main(int argc, const char * argv[])
{

    float nota1, nota2, nota3;
    
    
    puts("Insira a primeira nota: ");
    scanf("%f",&nota1);
    
    puts("Insira a segunda nota: ");
    scanf("%f",&nota2);
    
    puts("Insira a terceira nota: ");
    scanf("%f",&nota3);
    
    float media = (nota1+nota2+nota3)/3;
    
    
    if (media > 5) {
        
        puts("Aluno Aprovado");
    }
    
    if (media < 5) {
        
        
        puts("Aluno Reprovado");
    }
    
    
    if (media == 5) {
        
        puts("Passou Raspando");
    }
    
    
    
    printf("A média é: %.2f", media);
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

