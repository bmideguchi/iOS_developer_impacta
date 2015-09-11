

#include <stdio.h>

int main(int argc, const char * argv[])
{

   /*
    
    Switch - O switch trabalha como o if, ou seja, é uma estrutura de decisão.
    
    No caso do switch, ele trabalha com uma análise caso a caso.
    
    Tem a seguinte declaração:
    
    
    switch(variável que será analisada){
    
    
    case valor:
        código a ser executado
        break;
    
    case outroValor:
        código a ser executado
        break;
    
    default:
        código a ser executado
        break;
    
}
    
    
    */
    
    
    int decisao = 3;
    
    
    switch (decisao) {
        case 0:
            
            puts("Você escolheu a opção 0");
            
            break;
        case 1:
            
            puts("Você escolheu a opção 1");
            
            break;
            
        case 2:
            
            puts("Você escolheu a opção 2");
            
            break;
            
        default:
            
            puts("Você escolheu uma opção inválida");
            
            break;
    }
    
    
    
    
    
    

    puts("Fora do switch");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
}

