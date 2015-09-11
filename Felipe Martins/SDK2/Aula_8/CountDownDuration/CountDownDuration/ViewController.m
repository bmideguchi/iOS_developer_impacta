
/* ContDown é uma forma de apresentação de um UIDatePicker, este tipo de picker representa normalmente uma contagem regressiva baseada em segundos.
 
 A propriedade countDownDuration é baseada em um NSTimeInterval (segundos)
 
 
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.labelSegundos.text = nil;
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)iniciar:(UIButton *)sender {
    
    
    self.labelSegundos.text = [NSString stringWithFormat:@"%.0f", self.meuDatePicker.countDownDuration];
    
}
@end
