//
//  TelaAdicionarContatoViewController.m
//  AddressBook
//
//  Created by Felipe Martins on 05/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "TelaAdicionarContatoViewController.h"

@interface TelaAdicionarContatoViewController ()

@end

@implementation TelaAdicionarContatoViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
   
    // Setando o teclado como phone.
    self.textFieldTelefone.keyboardType = UIKeyboardTypePhonePad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)adicionar:(UIBarButtonItem *)sender {
    
    // Verificando se o usuário preencheu todos os campos
    if (self.textFieldNome.text.length > 0 && self.textFieldSobrenome.text.length > 0 && self.textFieldTelefone.text.length > 0) {
        
        // Caso todos os campos estejam preenchidos corretamente
        
        
        // Resgatando os dados preenchidos  pelo usuário
        NSString *nome = self.textFieldNome.text;
        NSString *sobrenome = self.textFieldSobrenome.text;
        NSString *telefone = self.textFieldTelefone.text;
        
        // Depois dos dados já armazenados criamos a nossa rotina para alteração dos dados
        
        // Criamos uma cópia da agenda do dispositivo
        ABAddressBookRef agenda = ABAddressBookCreateWithOptions(NULL, NULL);
        
        // Criando um novo contato
        ABRecordRef novoContato = ABPersonCreate();
        
                // Definindo as propriedades do contato (nome, telefone, sobrenome).
        
        // Definindo o nome
        ABRecordSetValue(novoContato, kABPersonFirstNameProperty, (__bridge CFStringRef)nome, NULL);
        
        // Definimos o sobrenome
        ABRecordSetValue(novoContato, kABPersonLastNameProperty, (__bridge CFStringRef)sobrenome, NULL);
        
        // Para o telefone o sistema nos pede um array, então devemos proceder da seguinte forma: Criar o Array, inserir o número no array e aí sim podemos adicionar ao contato.
        
        ABMultiValueRef arrayTelefone = ABMultiValueCreateMutable(kABPersonPhoneProperty);
        
        // Adicionar o número de telefone no array
        
        ABMultiValueAddValueAndLabel(arrayTelefone, (__bridge CFTypeRef)telefone, (__bridge CFStringRef)@"Casa", NULL);
        
        // Adicionando o array que contém o telefone ao nosso contato
        ABRecordSetValue(novoContato, kABPersonPhoneProperty, arrayTelefone, NULL);
        
        // Adicionando o contato na agenda
        
        ABAddressBookAddRecord(agenda, novoContato, NULL);
        
        // Implementar a cópia da agenda de telefones real (commit).
        
        ABAddressBookSave(agenda, NULL);
        
        
        // Limpamos as textFields
        self.textFieldNome.text = nil;
        self.textFieldSobrenome.text = nil;
        self.textFieldTelefone.text = nil;
        
        
    }else{
    // Caso os campos não estejam preenchidos corretamente
    
        // Criamos uma alertView para alertar o usuário
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta!" message:@"Mano, preencha os campos corretamente!" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"Fmz", nil];
    
        [alerta show];
        
    }
    
    
    
    
    
    
}
@end
