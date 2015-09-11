//
//  ViewController.m
//  CoreMotion
//
//  Created by Felipe Martins on 07/08/13.
//  Copyright (c) 2013 Felipe Martins. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando e allocando o objeto que acessa os sensores
    self.gerenciadorDosSensores = [[CMMotionManager alloc]init];
    
    // Ligando o aceso aos sensores
    [self.gerenciadorDosSensores startDeviceMotionUpdates];
    
    
    
    // Bloco que atualiza quando o device ativa os sensores de movimento
    [self.gerenciadorDosSensores startGyroUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMGyroData *gyroData, NSError *error) {
       
        
        // Criando o objeto que acessa os dados dos sensores
        
        CMDeviceMotion *sensores = self.gerenciadorDosSensores.deviceMotion;
        
        // Resgatando os dados do acelerômetro
        CMAcceleration aceleracoes = sensores.userAcceleration;
        
        // Exibindo os dados nas nossas labels e progressViews em nossa interface
        
        self.labelX.text = [NSString stringWithFormat:@"%f", aceleracoes.x];
        self.labelY.text = [NSString stringWithFormat:@"%f", aceleracoes.y];
        self.labelZ.text = [NSString stringWithFormat:@"%f", aceleracoes.z];
        
        //
        
        self.progressX.progress = aceleracoes.x;
        self.progressY.progress = aceleracoes.y;
        self.progressZ.progress = aceleracoes.z;
        
        
        // Acessando os sensores de gravidade
        
        CMAttitude *gravidade = sensores.attitude;
        
         // Exibindo os dados nas nossas labels e progressViews em nossa interface
        
        self.labelRoll.text = [NSString stringWithFormat:@"%f", gravidade.roll];
        self.labelYaw.text = [NSString stringWithFormat:@"%f", gravidade.yaw];
        self.labelPitch.text = [NSString stringWithFormat:@"%f", gravidade.pitch];
        //
        self.progressRoll.progress = gravidade.roll;
        self.progressYaw.progress = gravidade.yaw;
        self.progressPitch.progress = gravidade.pitch;
        
        
        
        
    }];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
