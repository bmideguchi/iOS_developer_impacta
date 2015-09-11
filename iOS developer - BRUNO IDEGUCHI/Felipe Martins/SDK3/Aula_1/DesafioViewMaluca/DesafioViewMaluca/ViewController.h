

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController



// Criamos uma property para nossa viewzinha
@property (weak, nonatomic) IBOutlet UIView *viewzinha;

// Criando um NSTimer
@property (nonatomic, strong) NSTimer *temporizador;


// Criamos um método para nosso botão animar
- (IBAction)animar:(UIButton *)sender;

// Método que será disparado pelo timer e animará a nossa Viewzinha

-(void)metodoQueCriaAnimacao;

@end
