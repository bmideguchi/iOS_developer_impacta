

#import <UIKit/UIKit.h>
// Importando o Framework ao projeto
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController


// Criando o objeto da classe que gerência o acesso aos sensores
@property (nonatomic, strong) CMMotionManager *gerenciadorDosSensores;

@property (weak, nonatomic) IBOutlet UILabel *labelX;
@property (weak, nonatomic) IBOutlet UILabel *labelY;
@property (weak, nonatomic) IBOutlet UILabel *labelZ;
@property (weak, nonatomic) IBOutlet UILabel *labelRoll;
@property (weak, nonatomic) IBOutlet UILabel *labelYaw;
@property (weak, nonatomic) IBOutlet UILabel *labelPitch;

//

@property (weak, nonatomic) IBOutlet UIProgressView *progressX;
@property (weak, nonatomic) IBOutlet UIProgressView *progressY;
@property (weak, nonatomic) IBOutlet UIProgressView *progressZ;
@property (weak, nonatomic) IBOutlet UIProgressView *progressRoll;
@property (weak, nonatomic) IBOutlet UIProgressView *progressYaw;
@property (weak, nonatomic) IBOutlet UIProgressView *progressPitch;





@end
