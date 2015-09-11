
/* UIPickerView
 
 Um picker é um elemento padrão do nosso UIKit que tem como funcionalidade ser um seletor de opções pré estadelecidas. Permite ao usuário fazer esta seleção por meio de uma espécie de roleta.
 
 Delegate - Responsável por retornar as interações do usuário no objeto em tela.
 
 DataSource - Responsável pela constução da parte de dados a serem exibidos pelo objeto.
 
 
 */

#import <UIKit/UIKit.h>

// Importamos seu respectivo dataSource e delegate
@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

// Criamos uma outlet para o pickerView
@property (weak, nonatomic) IBOutlet UIPickerView *meuPickerView;


// Criando um array que conterá os dados a serem informados

@property (nonatomic, strong) NSArray *arrayDados;


@end
