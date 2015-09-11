
/*
 ==========| UIPickerView |==========
 
 Um picker é um elemento padrão do UIKit que tem como funcionalidade ser um seletor de opções pré estabelecidas. 
 
 
 ==========| DELEGATE |==========
 
 Responsável pelas interações do usuário
 
 
 ==========| DataSource |==========
 
 Responsável pela construção da parte de dados a serem exibidos pelo objeto.
 */

#import <UIKit/UIKit.h>


@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *meuPickerView;

//Criando um array que conterá os dados a serem informados

@property (strong, nonatomic) NSArray *arrayDados;


@end
