
/* UIDatePicker
 
 É um seletor (como um UIPickerView) baseado em roletas que tem como função principal mostrar para seleção elementos do tipo data e hora.
 
 
 
 */
#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIDatePicker *meuDatePicker;
@property (weak, nonatomic) IBOutlet UILabel *labelData;
- (IBAction)mostrar:(UIButton *)sender;
- (IBAction)trocouValorDatePicker:(UIDatePicker *)sender;

@end
