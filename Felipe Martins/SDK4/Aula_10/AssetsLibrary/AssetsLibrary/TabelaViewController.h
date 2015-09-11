/*
 
 Assets -> É uma forma de acessar os dados do usuário do Photoapp sem que ele necessáriamente precise selecioná-los ou visuáliza-los.
 
 */

#import <UIKit/UIKit.h>
// Importando o AssetsLibrary ao documento
#import <AssetsLibrary/AssetsLibrary.h>

@interface TabelaViewController : UITableViewController

// criando o objeto de AssetsLibrary que receberá a biblioteca do usuário
@property (nonatomic, strong) ALAssetsLibrary *bibliotecaUsuario;

// Criando um mutable Array para armazenar as informações
@property (nonatomic, strong) NSMutableArray * arrayListaArquivo;




@end
