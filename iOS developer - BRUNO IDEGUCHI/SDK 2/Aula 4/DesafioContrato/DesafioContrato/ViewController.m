//
//  ViewController.m
//  DesafioContrato
//
//  Created by Felipe Martins on 05/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

// Importando nossa segunda tela para termos acesso as sua propriedades.
#import "Tela2ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Ligamos o delegate pelo storyBoard da seguinte forma: clicamos sobre a textField com o botão direito do mouse, pegamos a bolinha da ligação da opção delegate e arrastamos até a representação gráfica do nosso ViewController (DragonBall).
    
    // Colocando os placeholders em nossos textFields
    self.textFieldNome.placeholder = @"Digite seu nome";
    self.textFieldRG.placeholder = @"Digite seu RG";
    self.textFieldCidade.placeholder = @"Digite sua cidade";
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Minhas Ações

// Método que roda sempre que um segue é executado
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{

    // verificar se o segue é o segueTela2
    
    if ([segue.identifier isEqualToString:@"segueTela2"]) {
        // Caso o segue seja o segueTela2
        
       
        // Criando um objeto que referencia nossa segunda tela
        Tela2ViewController *segundaTela = (Tela2ViewController *)segue.destinationViewController;
        
        // Criando um dicionario para armazenar os dados
        NSDictionary *dicionarioDados = [[NSDictionary alloc]initWithObjectsAndKeys:self.textFieldNome.text, @"nome",self.textFieldRG.text, @"RG",self.textFieldCidade.text,@"cidade",nil];

            // Passando os dados para nosso dicionario da outra tela.
        segundaTela.dicionarioDadosTelaPrincipal = dicionarioDados;
        
    }
    


}






#pragma mark - UITextFieldDelegate


-(BOOL)textFieldShouldReturn:(UITextField *)textField{

    // Criando o efeito de navegação.
    
    // Verificamod se a textField é a textFieldNome
    if ([textField isEqual:self.textFieldNome]) {
        // Se é a textFieldNome
        
        
        // Damos o foco para a textFieldRG que se encontra logo abaixo em nosso layout
        [self.textFieldRG becomeFirstResponder];
        
    
    }else if ([textField isEqual:self.textFieldRG]){
    // Se a textField com foco for a textFieldRG
    
        // Damos o foco para a textFieldCidade
        [self.textFieldCidade becomeFirstResponder];
    
    
    }else{
    
        // Tiramos o foco da textFieldCidade e liberamos o teclado.
        [textField resignFirstResponder];
    
    }
    
    


    return YES;
}

@end
