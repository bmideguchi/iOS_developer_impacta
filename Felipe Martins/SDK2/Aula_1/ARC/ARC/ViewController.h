

/* ARC - Automatic Reference Counting
 
 Antigamente quando trabalhavamos com MRC (Manual Reference Counting) eramos obrigados a gerenciar memória "na unha".
 
 Utilizando os métodos como retain, release e o método dealloc.
 
 No iOS 5 foi lançado uma nova funcionalidade de contagem automática de memória (ARC). Utilizando este novo recurso temos basicamente apenas que criar uma ligação fraca (weak) ou uma ligação forte (strong).
 
 
 strong - Ligação normalmente criada para propriedades que não sejam IBOutlets ou seja, que tenham como essencia somente código.
 
 
 weak - Normalmente utilizada para elementos que já tem uma ligação em tela.
 
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *textFieldUnica;
@property (weak, nonatomic) IBOutlet UILabel *labelValorWeak;
@property (weak, nonatomic) IBOutlet UILabel *labelValorStrong;

//

@property (nonatomic, weak) NSString *nomeWeak;
@property (nonatomic, strong) NSString *nomeStrong;

//

- (IBAction)mostrar:(UIButton *)sender;



@end
