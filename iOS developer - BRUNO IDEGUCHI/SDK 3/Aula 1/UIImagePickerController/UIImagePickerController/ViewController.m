//
//  ViewController.m
//  UIImagePickerController
//
//  Created by NoiteA on 19/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
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
    
    //Criando um objeto do tipo UIImagePickerController
    UIImagePickerController * imagePicker = [[UIImagePickerController alloc]init];
    
    //Definir o tipo de dado que ele resgatará. Neste caso, estamos configurando para ter como sourceType o PhotoLibrary
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    //Ligando o delegate
    imagePicker.delegate = self;
    
    //Exibindo a tela do nosso seletor de fotos
    //obs: presentViewController - Exibe uma view controller a partir da chamada
    [self presentViewController:imagePicker animated:YES completion:nil];
}



#pragma mark - UIImagePickerControllerDelegate

- (IBAction)capturar:(UIButton *)sender {
    
    //Quando tiramos uma foto com o Device é uma ótima prática verificar se o dispositivo tem uma camera disponível, podemos fazer isso da seguinte forma:
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //Caso o dispositivo tenha uma câmetra disponível podemos criar um imagePicker
        UIImagePickerController * imagePicker = [[UIImagePickerController alloc]init];
        
        //Setamos o sourceType do mesmo como câmera
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        //Ligando o delegate
        imagePicker.delegate = self;
        
        //Exibimos em tela
        [self presentViewController:imagePicker animated:YES completion:nil];
    }
    
    else{
        NSLog(@"Xiiii, não tem câmera!");
    }
    
}

//Método que é disparado quando o usuário escolhe um elemento da sua galeria de fotos
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //Como parâmetros, este método nos traz o picker que disparou o delegate e um dicionário com diversas informações, o "info". Dentre essas informações, temos o item escolhido.
    
    //Criando um elemento de UIImage a partir dele
    
    UIImage *imagemEscolhida = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    //Colocamos o elemento selecionado na imageView
    self.imageViewFoto.image = imagemEscolhida;
    
    //Tiramos a pickerViewController de cena
    [self dismissViewControllerAnimated:YES completion:^{
        //O completion roda quando o processo é terminado
        NSLog(@"Saiu!");
    }];
}

@end
