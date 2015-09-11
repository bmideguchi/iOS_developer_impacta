

#import <Foundation/Foundation.h>

#import "Carro.h"
#import "Moto.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Criação de um objeto da classe Carro
        Carro *novoCarro = [[Carro alloc]init];
        
        //Atribuindo valores as propriedades que foram herdadas da classe veículo
        novoCarro.qtdRodas = 4;
        novoCarro.combustivel = @"Gasosa";
        
        //Atribuindo valores as propriedades da classe Carro
        novoCarro.qtdPortas = 4;
        novoCarro.aroRodas = 20;
        
        //Resgatando os valores de suas propriedades
        NSLog(@"O carro é movido a: %@", novoCarro.combustivel);
        NSLog(@"O carro tem: %i rodas", novoCarro.qtdRodas);
        NSLog(@"O carro tem: %i portas", novoCarro.qtdPortas);
        NSLog(@"O carro tem rodas de aro: %i\n\n", novoCarro.aroRodas);
        
        //----------------------------------------------------------------------
        
        //Criando um objeto da classe Moto
        
        Moto *novaMoto = [[Moto alloc]init];
        
        //Atribuindo valores para as propriedades que foram herdadas da classe veículo
        novaMoto.qtdRodas = 2;
        novaMoto.combustivel = @"Gasosa";
        
        //Atribuindo valores as propriedades da classe moto
        novaMoto.modalidade = @"Fuga";
        novaMoto.cilindradas = 1800;
        
        //Exibindo os valores de suas propriedades
        NSLog(@"A moto é movida a %@", novaMoto.combustivel);
        NSLog(@"A moto tem: %i rodas", novoCarro.qtdRodas);
        NSLog(@"A modalidade da moto é: %@", novaMoto.modalidade);
        NSLog(@"A moto tem: %i cilindradas\n\n", novaMoto.cilindradas);
        
    }
    return 0;
}

