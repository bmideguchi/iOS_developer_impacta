
#import <UIKit/UIKit.h>

/* Um UIImagePickerController utiliza recursos de um UINavigationController, por este motivo precisamos incluir o UINavigationControllerDelegate no projeto. Além do próprio delegate do UIImagePicker - (UIImagePickerControllerDelegate)
 
 
 
 */

@interface ViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

// Criamos uma outlet para nossa imageView
@property (weak, nonatomic) IBOutlet UIImageView *imageViewFoto;

// Criamos actions para nossos botões
- (IBAction)resgatar:(UIButton *)sender;
- (IBAction)capturar:(UIButton *)sender;

@end
