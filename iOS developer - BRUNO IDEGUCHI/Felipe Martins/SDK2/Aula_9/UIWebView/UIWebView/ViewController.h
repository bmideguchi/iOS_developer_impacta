/* UIWebView
 
 Elemento utilizado para renderizar páginas web e elementos baseados em URLs
 
 */


#import <UIKit/UIKit.h>

// Adicionando o UIWebViewDelegate ao projeto
@interface ViewController : UIViewController <UIWebViewDelegate>

// Criamos um outlet para a webView
@property (weak, nonatomic) IBOutlet UIWebView *minhaWebView;

// Criamos actions para os botões
- (IBAction)carregar:(UIButton *)sender;
- (IBAction)voltar:(UIButton *)sender;
- (IBAction)avancar:(UIButton *)sender;


@end
