//
//  ViewController.m
//  AddressBook
//
//  Created by Felipe Martins on 05/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
     
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)selecionar:(UIButton *)sender {
    
    // Iniciamos setando a variável de controle como YES, pois o método tem a intenção de selecionar.
    self.isSelecting = YES;
    
    // Criando um objeto através da classe que permite acesso a agenda de contatos
    ABPeoplePickerNavigationController *peoplePicker = [[ABPeoplePickerNavigationController alloc]init];
    
    // Ligando o delegate
    peoplePicker.peoplePickerDelegate = self;
    
    // Exibindo a tela do controller
    
    [self presentViewController:peoplePicker animated:YES completion:nil];
    
    
    
}

- (IBAction)apagar:(UIButton *)sender {

    
    // Primeiro setamos a variável de controle como NO (isSelecting)
    self.isSelecting = NO;
    
    // Criando um objeto através da classe que permite acesso a agenda de contatos
    ABPeoplePickerNavigationController *peoplePicker = [[ABPeoplePickerNavigationController alloc]init];
    
    // Ligando o delegate
    peoplePicker.peoplePickerDelegate = self;
    
    // Exibindo a tela do controller
    
    [self presentViewController:peoplePicker animated:YES completion:nil];
    

    

}

#pragma mark - Metodos de ABPeoplePickerNavigationControllerDelegate

// Método disparado quando o usuário cancela a seleção na janela de contatos.

-(void)peoplePickerNavigationControllerDidCancel:(ABPeoplePickerNavigationController *)peoplePicker{
    // caso o usuário cancele a seleção tiramos a janela.
    
    [peoplePicker dismissViewControllerAnimated:YES completion:nil];
    
    NSLog(@"Saindooooooo....!!!!");
    

}


// Método que é disparado quando o usuário escolhe um contato e define se os detalhes serão abertos ou não.
-(BOOL)peoplePickerNavigationController:(ABPeoplePickerNavigationController *)peoplePicker shouldContinueAfterSelectingPerson:(ABRecordRef)person{

    // Verificando se a vontade do usuário é selecionar ou apagar um contato
    if (self.isSelecting) {
        // Caso ele queira selecionar
        
        
                // Resgatamos os valores do contato e armazenamos em uma string
        
        //Resgatando o nome
        NSString *primeiroNome = (__bridge NSString *) ABRecordCopyValue(person, kABPersonFirstNameProperty);
        
        // Resgatando o sobrenome
        NSString *sobrenome = (__bridge NSString *)ABRecordCopyValue(person, kABPersonLastNameProperty);
        
        
        // Resgatando o telefone
        
        // Acesso ao array primitivo do contato
        ABMultiValueRef telefonesContato = ABRecordCopyValue(person, kABPersonPhoneProperty);
        //  Convertendo o array primitivo em NSArray (que utilizamos normalmente)
        NSArray *arrayTelefones = (__bridge NSArray *)ABMultiValueCopyArrayOfAllValues(telefonesContato);
    
        
        
        
        // Colocando os valores nas labels
        self.labelNome.text = primeiroNome;
        self.labelSobrenome.text = sobrenome;
        self.labelTelefone.text = [arrayTelefones objectAtIndex:0];
        
    }else{
        // Caso o usuário queira apagar um contato
    
    
        // Para apagar um contato criamos uma rotina
        
        // 1 - Criar uma cópia da agenda
        ABAddressBookRef agenda = ABAddressBookCreateWithOptions(NULL, NULL);
        
        // 2 - Definir qual contato será apagado
        ABAddressBookRemoveRecord(agenda, person, NULL);
        
        // 3 - Confirmando a operação e salvando a agenda (commit).
        
        ABAddressBookSave(agenda, NULL);
        
        // Limpando as labels
        self.labelNome.text = nil;
        self.labelSobrenome.text = nil;
        self.labelTelefone.text = nil;
        
    
    }
    
    

    //tirando a janela de contatos
    [peoplePicker dismissViewControllerAnimated:YES completion:nil];
    

    
    // Return YES - Libera a abertura da janela de contatos
    // Rturn NO - Define que a janela de detalhes não será aberta
    
    return NO; 

}



@end
