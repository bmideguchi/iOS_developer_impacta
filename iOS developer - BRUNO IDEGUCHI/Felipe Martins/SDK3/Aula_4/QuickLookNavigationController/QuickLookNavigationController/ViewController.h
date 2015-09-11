

#import <UIKit/UIKit.h>
#import <QuickLook/QuickLook.h>


// Como estamos trabalhando com um NavigationController é importante também incluir além dos protocolos do nosso QUickLook também o protocolo UINavigationControllerDelegate

@interface ViewController : UIViewController <QLPreviewControllerDataSource, QLPreviewControllerDelegate, UINavigationControllerDelegate>



- (IBAction)mostrar:(UIButton *)sender;

@end
