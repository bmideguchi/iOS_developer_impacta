//
//  main.m
//  novaClasse
//
//  Created by NoiteA on 22/05/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <Foundation/Foundation.h>










/*
 
 para criarmos uma classe devemos utilizar @interface e marcamos o final da definição de nossa classe com @end.
 
 Boas práticas: Ao declarar uma classe, colocar a primeira letra em maiúsculo (ex.: Pessoa).
 
 */










//Inicia a interface
@interface Pessoa : NSObject{

    //Criação das propriedades
    NSString *nome;
    int sala;

}

//Entre a última chave e o @end (que é o espaço para meus métodos) colocamos os respectivos métodos.

//Para acessar as propriedades de uma classe somos obrigados a criar os métodos de acesso, chamados de GETTERS e SETTERS.

//GETTERS - Para resgatar os valores das propriedades
-(NSString*)getNome;
-(int)getSala;

//SETTERS - Para alteração dos valores
-(void)setNome:(NSString *)novoNome;
-(void)setSala:(int)novaSala;

//Termina a interface
@end








//começa a implementação
@implementation Pessoa

//Implementação dos métodos GETTERS

-(NSString *)getNome{
    return nome;
}

-(int)getSala{
    return sala;
}

//Implementação dos métodos SETTERS

-(void)setNome:(NSString *)novoNome{
    nome = novoNome;
}


-(void)setSala:(int)novaSala{
    sala = novaSala;
}

//termina a implementação
@end









int main(int argc, const char * argv[])
{

    /*
     
     Abaixo estamos criando um objeto de nome novaPessoa, esse objeto herda todas as propriedades e métodos definidos na classe Pessoa.
     
     Após criarmos o objeto utilizamos ALLOC para alocar o mesmo na memória.
     
     O método [init] fará com que o memo seja iniciado.
     
     */
    
    
    //Aqui estamos alocando e iniciando memória
    Pessoa *novaPessoa = [[Pessoa alloc] init ];
    
    
    //Após um objeto alocado e inicializado podemos interagir com o mesmo.
    [novaPessoa setNome:@"Garibaldo"];
    [novaPessoa setSala:23];
    
    
    
    //Resgatando os valores por meio de nossos métodos GETTERS
    NSLog(@"Nome: %@", [novaPessoa getNome]);
    NSLog(@"Sala: %i", [novaPessoa getSala]);
    
    
    
    //------------------- COLOCANDO MAIS UMA PESSOA (Um novo objeto da classe PESSOA) ------------------//
    
    
    Pessoa *novaPessoa2 = [[Pessoa alloc]init];
    
    [novaPessoa2 setNome:@"Filisbina"];
    [novaPessoa2 setSala:23];
    
    NSLog(@"Nome2: %@", [novaPessoa2 getNome]);
    NSLog(@"Sala2: %i", [novaPessoa2 getSala]);
    
    return 0;
}

