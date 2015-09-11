//
//  ViewController.h
//  WebService


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNomeUsuario;
@property (weak, nonatomic) IBOutlet UILabel *labelID;
@property (weak, nonatomic) IBOutlet UILabel *labelNome;
@property (weak, nonatomic) IBOutlet UILabel *labelLocalidade;
@property (weak, nonatomic) IBOutlet UILabel *labelSexo;

//
- (IBAction)pesquisar:(UIButton *)sender;
@end
