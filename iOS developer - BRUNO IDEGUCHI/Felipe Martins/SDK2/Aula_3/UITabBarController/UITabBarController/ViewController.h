/* UITabBarController
 
 É um modo de aplicação com várias telas que são controladas por tabulação.
 
 Lembrando quye quando temos mais de uma ViewController, precisamos criar suas respectivas classes controladoras.( Viewcontroller.h e ViewController.m )
 
 
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



@property (weak, nonatomic) IBOutlet UILabel *labelTexto;

- (IBAction)alterarSlider:(UISlider *)sender;

@end
