/* UIScrollView
 
 Um ScrollView é uma espécie de View que permite mostrar mais conteúdo fo que o apresentado em uma View Comum, pois possui uma barra de rolagem que permite este acesso 
 
 
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Criamos uma outlet para nossa ScrollView
@property (weak, nonatomic) IBOutlet UIScrollView *minhaScrollView;

@end
