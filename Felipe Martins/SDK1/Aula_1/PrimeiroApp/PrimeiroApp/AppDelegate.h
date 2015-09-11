

#import <UIKit/UIKit.h>

// Criando uma referência a classe ViewController
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// Aqui criamos uma property desta classe

@property (nonatomic, retain) ViewController *controlador;

@end
