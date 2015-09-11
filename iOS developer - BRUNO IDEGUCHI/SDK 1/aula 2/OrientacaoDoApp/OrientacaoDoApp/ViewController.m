//
//  ViewController.m
//  OrientacaoDoApp
//
//  Created by Felipe Martins on 03/06/13.
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

#pragma mark - Minhas ações

/* Podemos controlar a orientacão do nosso app via código através do método de sistema supportedInterfaceOrientations. (Método que foi englobado a partir do iOS 6)
 
 */




-(NSUInteger)supportedInterfaceOrientations{

// Permite orientações referentes ao iphone em "paisagem" (de ladinho).
    //return UIInterfaceOrientationMaskLandscape;
    
    
// Permite a orientação com o botão home para a direita.
    //return UIInterfaceOrientationMaskLandscapeRight;
    
// Permite a orientação com o botão home para a esquerda.
    //return UIInterfaceOrientationMaskLandscapeLeft;
    
// Permite a orientação com o iPhone "em pé"
    //return UIInterfaceOrientationMaskPortrait;
    
// Permite a orientação com o iPhone "De cabeça para baixo"
    //return UIInterfaceOrientationMaskPortraitUpsideDown;
    
// permite a orientação de todas as formas.
    //return UIInterfaceOrientationMaskAll;
    
// Permite todas as orientações menos o iphone de cabeça para baixo.
    return UIInterfaceOrientationMaskAllButUpsideDown;
    
    // Permite a orientação somente portrait e de ponta cabeça
   // return 7;

}














@end
