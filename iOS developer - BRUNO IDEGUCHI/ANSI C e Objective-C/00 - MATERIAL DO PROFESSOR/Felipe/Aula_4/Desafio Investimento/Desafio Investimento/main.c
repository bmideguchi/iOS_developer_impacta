

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float valor;
    int opcao;
    
    puts("Insira o valor que pretende investir: ");
    scanf("%f",&valor);
    
    
    if (valor <= 1000) {
        
        
        puts("Você tem direito a 2 linhas de investimento:\n -Linha Bronze com rendimento anual de 5% (Conservador)\n -Linha Prata com redimento anual de 10%");
        puts("\nDigite 1 para linha Bronze ou 2 para linha Prata");
        
        scanf("%i",&opcao);
        
        switch (opcao) {
            case 1:
                
                printf("Você escolheu a opção Bronze, investiu %.2f e terá um retorno de %.2f",valor,valor*1.05);
                
                break;
                
            case 2:
                
                printf("Você escolheu a opção Prata, investiu %.2f e terá um retorno de %.2f", valor, valor*1.10);
                break;
                
            default:
                
                puts("Você inseriu uma opção inválida, não poderemos calcular seu investimento");
                
                break;
        }
        
        
        
        
    }else{
    
        puts("Você tem direito a 2 linhas de investimento:\n -Linha Ouro com rendimento anual de 15% (Conservador)\n -Linha Diamante com redimento anual de 20%");
        puts("\nDigite 1 para linha Ouro ou 2 para linha Diamante");
        
        scanf("%i",&opcao);
        
        
        switch (opcao) {
            case 1:
                
                 printf("Você escolheu a opção Ouro, investiu %.2f e terá um retorno de %.2f",valor,valor*1.15);
                
                break;
                
            case 2:
                 printf("Você escolheu a opção Diamante, investiu %.2f e terá um retorno de %.2f",valor,valor*1.20);
                
                break;
                
            default:
                
                puts("Você inseriu uma opção inválida, não podemos calcular seu investimento");
                
                break;
        }
        
    
    
    
    
    
    
    
    }
    
   
    
    
    return 0;
}

