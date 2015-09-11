//
//  Tela2ViewController.h
//  AssetsLibrary
//
//  Created by Felipe Martins on 02/09/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>

@interface Tela2ViewController : UIViewController


// Criando a propriedade que será passada pela outra tela

@property (nonatomic, strong) ALAsset *arquivoRecebido;

//
@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;

@end
