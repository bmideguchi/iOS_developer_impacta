//
//  ViewController.m
//  desafioMediaPlayer
//
//  Created by NoiteA on 14/08/13.
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
    
    //Impedindo a edição da textView
    self.textViewRecebeTexto.editable = NO;
    
    //String com o nome do arquivo
    NSString *pathFile = [[NSBundle mainBundle] pathForResource:@"texto" ofType:@"txt"];
    
    //String que recebe o texto do arquivo
    self.textoParaTextView = [NSString stringWithContentsOfFile:pathFile encoding:NSUTF8StringEncoding error:nil];
    
    //exibindo o texto do arquivo na Text View
    self.textViewRecebeTexto.text = self.textoParaTextView;
    self.textViewRecebeTexto.textAlignment = NSTextAlignmentLeft;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
