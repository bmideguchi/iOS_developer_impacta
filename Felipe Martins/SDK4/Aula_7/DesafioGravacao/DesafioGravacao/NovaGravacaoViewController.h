//
//  NovaGravacaoViewController.h
//  DesafioGravacao
//
//  Created by Felipe Martins on 28/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import <UIKit/UIKit.h>
// Importando o AVFoundationFrameWork
#import <AVFoundation/AVFoundation.h>

// Importando o UIAlertViewDelegate
@interface NovaGravacaoViewController : UIViewController <UIAlertViewDelegate>


// Criação dos Outlets e Actions do projeto. 
@property (weak, nonatomic) IBOutlet UIProgressView *progressTempo;
- (IBAction)iniciarGravacao:(UIButton *)sender;
- (IBAction)pararGravacao:(UIButton *)sender;



// Criando o nosso gravador
@property (nonatomic, strong) AVAudioRecorder *gravador;


// Criando um Array que gravará o "nome" e o "path" da gravação
@property (nonatomic, strong) NSMutableArray *arrayGravacoes;


// Atualização do progress
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) float progresso;
-(void)atualizarProgress;






@end
