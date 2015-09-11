
#include <stdio.h>

int main(int argc, const char * argv[])
{

    // criando as variáveis
    int idadeJoaozinho, idadePedrinho, idadeJuquinha;
    
    // Colocando valor nas variáveis
    idadeJoaozinho = 100;
    idadePedrinho = 100;
    idadeJuquinha = 30;
    
    
    if (idadeJoaozinho > idadePedrinho && idadeJoaozinho > idadeJuquinha) {
        
        puts("Joãozinho é o mais velho");
        
    }
    
    if (idadePedrinho > idadeJoaozinho && idadePedrinho > idadeJuquinha) {
        
        puts("Pedrinho é o mais velho");
        
    }
    
    if (idadeJuquinha > idadeJoaozinho && idadeJuquinha > idadePedrinho) {
        
        
        puts("Juquinha é o mais velho");
        
    }
    
    
    printf("\nJoaozinho: %i\nPedrinho: %i\nJuquinha: %i\n", idadeJoaozinho,idadePedrinho,idadeJuquinha);
    
    
    
    return 0;
}

