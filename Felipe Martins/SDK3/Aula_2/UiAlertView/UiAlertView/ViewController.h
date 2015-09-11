/*UIAlertView
 
 É uma forma de apresentar uma espécie de "popup" para o  usuário que pode receber interações.

 
 */

#import <UIKit/UIKit.h>

// Incluindo o delegate no projeto, para termos acesso as interações
@interface ViewController : UIViewController <UIAlertViewDelegate>



// Criamos actions para os botões que dispararão nossos alerts
- (IBAction)ativarAlertaSimples:(UIButton *)sender;

- (IBAction)ativarAlertaTexto:(UIButton *)sender;
- (IBAction)ativarAlertaSenha:(UIButton *)sender;

- (IBAction)ativarAlertaLogin:(UIButton *)sender;


@end
