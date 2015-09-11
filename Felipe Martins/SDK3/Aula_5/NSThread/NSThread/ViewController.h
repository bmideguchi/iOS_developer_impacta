
/* NSThread
 
 Quando executamos um processo que exige um tempo maior de processamento em nossa MainThread, a nossa interface é travada até que o processo deja finalizado, pois o processador executa um laço por vez.
 
 NSThread é um recurso qeu nos permite executar determinado processo fora da Thread pincipal, evitando assim que um processo mais demorado acabe travando a interface do seu App.
 
 
 
 
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelContagem;


@property (nonatomic, strong) NSThread *subProcesso;


//

- (IBAction)processarMainThread:(UIButton *)sender;

- (IBAction)processarSeparado:(UIButton *)sender;


//

-(void)execucaoParalela;

-(void)atualizarInterface:(NSNumber *)numero;

//




@end
