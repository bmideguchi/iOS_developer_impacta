

#import <UIKit/UIKit.h>
// Importando o framework AddressBook
#import <AddressBook/AddressBook.h>


@interface TelaAdicionarContatoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textFieldNome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldSobrenome;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTelefone;
//

- (IBAction)adicionar:(UIBarButtonItem *)sender;


@end
