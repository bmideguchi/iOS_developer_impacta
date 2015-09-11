//
//  ViewController.m
//  UIImagePicker
//
//  Created by Felipe Martins on 19/07/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resgatar:(UIButton *)sender {
    
    // Criando um objeto do tipo UIImagePickerController
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
    
    //Definindo o tipo de dado que ele resgatará, seste caso estamos configurando para ter como sourceType o PhotoLibrary
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    // Ligando o delegate
    imagePicker.delegate = self;
    
    
    // Exibindo a tela do nosso seletor de fotos
    //presentViewController:imagePicker animated:YES completion:nil
    //presentViewController - Exibe uma view controller a partir da chamada
    //animated - Booleano que define se a chamada da viewController será animada ou não.
    //completion - Bloco de código que será executado após o processo executado pelo método
    
    [self presentViewController:imagePicker animated:YES completion:nil];
    
    
    
    
    
    
    
}

- (IBAction)capturar:(UIButton *)sender {
    
    
    // Quando tiramos uma foto com o Devide é uma ótima prática verificar se o dispositivo tem uma camera disponível, podemos fazer isso da seguinte forma:
    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        // Caso o dispositivo tenha uma câmera disponível podemos criar um imagePicker
        
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc]init];
        
        // setamos o sourceType de mesmo como câmera
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        // Ligando o delegate
        imagePicker.delegate = self;
        
        // Exibimos em tela
        [self presentViewController:imagePicker animated:YES completion:nil];
        
        
    }else{
    
        NSLog(@"Xiiiiiii, não tem câmera!!");
    
    }
    
    
}



#pragma mark - UIImagePickerControllerDelegate

// Método que é disparado quando o usuário escolhe um elemento da sua galeria de fotos
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{

    // Como parâmetros este método nos traz o picker que disparou o delegate e um dicionário com diversas informações, o info.
    // Dentre estas informações temos o item escolhido

    
    // Criando um elemento de UIImage a partir dele.
    UIImage *imagemEscolhida = [info objectForKey:@"UIImagePickerControllerOriginalImage"];

    // Colocando o elemento selecionado na imageView.
    self.imageViewFoto.image = imagemEscolhida;

    
    // Tiramos a nossa pickerContoller de cena
    
    [self dismissViewControllerAnimated:YES completion:^{
       // O completion roda quando o processo é terminado.
        
        NSLog(@"Saiu!");
    }];
}





@end
