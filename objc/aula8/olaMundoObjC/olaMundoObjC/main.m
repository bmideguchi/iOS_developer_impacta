
//  Em ObjC ao invés de utilizar bibliotecas utilizamos os frameworks que são uma espécie de junção de várias bibliotecas.
//  Neste caso para utilizar o framework utilizamos o #import.

//  Quando trabalhamos com ObjC podemos implementar orientação a objeto (POO). Para isso, podemos dividir os trechos de código em "arquivos.h" (interface) e "arquivos.m" (implementação).

//  O framework padrão em ObjC é o Foundation

//  Sempre que vamos manipular objetos devemos utilizar o caractere @

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

   
    //Para utilizarmos mensagens de log, ao invés de printf utilizamos o comando NSLog.
    NSLog(@"Olá mundo!");
    
    
    
    //Em ObjC temos um dado String Nativo!!!!!
    //Aqui estamos criando um objeto (que também é uma variável) do tipo NSString e alocando em memória a partir do metodo [NSString alloc].
    //Obs.: Todo objeto NECESSARIAMENTE deve ser declarado como ponteiro (*).
    NSString *nome = [NSString alloc];
    
    
    //Depois de um objeto alocado em memória, devemos iniciá-lo para que possamos interagir com ele
    nome = [nome init];
    
    //Aqui estamos criando a variável NOME
    nome = @"Garibaldo";
    
    
    //Aqui estamos acriando uma variável do tipo INTEIRO. Variáveis primitivas não são tratadas como objeto, logo, não as declare como ponteiro.
    int idade = 98;
    
    
    NSLog(@"Olá mundo! Meu nome é %@ e minha idade é %i", nome, idade);
    
    
    
    return 0;
}

