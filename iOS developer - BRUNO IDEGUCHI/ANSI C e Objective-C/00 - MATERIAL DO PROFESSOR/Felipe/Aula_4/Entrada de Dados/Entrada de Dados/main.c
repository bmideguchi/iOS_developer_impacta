

#include <stdio.h>

int main(int argc, const char * argv[])
{

    /* Entrada de dados
     
     A função gets() pode ser usada para enrada de texto, porém não é recomendada por motivos de segurança
     
     Tem a seguinte declaração:
     
     gets(variável que receberá a entrada);
     
     
     
     
     */
   
    int escolha;
    char nome [256];
    
    
    
    puts("Insira seu Nome: ");
    
    gets(nome);
    
    printf("Seu nome é %s\n\n", nome);
    
    
    /*
     
     Para engtrada de dados formatados utilizamos a função scanf() que tem a seguinte declaração:
     
     
     scanf("Especificador de formato", &variável que receberá a entrada);
     
     
     */
    
    puts("Digite sua escolha: ");
    
    scanf("%i",&escolha);
    
    printf("A sua escolha foi: %i", escolha);
    
    return 0;
}

