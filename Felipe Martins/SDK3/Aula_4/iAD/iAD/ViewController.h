
#import <UIKit/UIKit.h>
// Importando o frameWork

#import <iAd/iAd.h>

@interface ViewController : UIViewController <ADBannerViewDelegate>

@property (weak, nonatomic) IBOutlet ADBannerView *meuBanner;
@end
