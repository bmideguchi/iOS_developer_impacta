/* QuickLook
 
 QuickLook é um FRAMEWORK que permite que um app tenha uma pré visualização de vários tipos de arquivos, como alguns recursos como impressão, compartilhamento em redes sociais e envio por e-mail.
 
 
 Como QuickLook é um FRAMEWORK precisamos incluí-lo ao projeto para termos aceso a seus recursos, isto pode ser feito pela guia "Linked Frameworks and Libraries" no "Sumary" do nosso projeto. (Folhinha azul).
 
 
 */

#import <UIKit/UIKit.h>


// Além de incluir o FrameWork ao projeto temos também que importar o mesmo para o documento, para que nossa ViewController tenha acesso a seus recursos.

#import <QuickLook/QuickLook.h>


// Assim como uma tableView um objeto de quickLook possui um datasource e um delegate. E devemos importá-los ao projeto

@interface ViewController : UIViewController <QLPreviewControllerDataSource, QLPreviewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageViewUnica;



// Criando um NSMutableArray que receberá os nomes de nossas fotos

@property (nonatomic, strong) NSMutableArray * arrayNomesFotos;

//



- (IBAction)escolher:(UIButton *)sender;

@end
