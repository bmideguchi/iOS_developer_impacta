/*
 NSThread
 
    Quando executamos um processo que exige um tempo maior de processamento em nossa mainThread, a nossa interface é travada até que o processo seja finalizado, pois o processador executa um laço por vez.
 
 NSThread é um recurso que nos permite executar determinado processo fora da thread principal, evitando assim que um processo mais demorado acabe travando a interface do seu app.
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelContagem;

@property (nonatomic, strong) NSThread *subProcesso;

- (IBAction)processarMainThread:(UIButton *)sender;

- (IBAction)processarSeparado:(UIButton *)sender;

//escrevi errado, era PARALELA
-(void)execucaoParaTela;

-(void)atualizarInterface:(NSNumber *)numero;

@end
