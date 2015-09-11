//
//  ViewController.m
//  QuickLookNavigationControlle

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)mostrar:(UIButton *)sender {
    
    
    QLPreviewController *quickLookNavigation = [[QLPreviewController alloc]init];
    
    // Ligando os delegates
    
    quickLookNavigation.delegate = self;
    quickLookNavigation.dataSource = self;
    
    // para exibir o objeto, usaremos o modo PUSH, pois estamos trabalnado com navigationController
    
    [self.navigationController pushViewController:quickLookNavigation animated:YES];
    
}




#pragma mark - QLPreviewControllerDatasource


-(NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{


// Como a idéia de um app com navigation e QuickLook é exibir sempre um item por vez, retornamos 1;
    return 1;

}


-(id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{

    // Criamod uma variável para armazenar o nome do arquivo
    NSString *nome = @"Ambiente Mac OS";

    // Criamos uma variável para receber o BUNDLE
    NSBundle *raizApp = [NSBundle mainBundle];
    
    // Criando o caminho
    
    NSString *pathArquivo = [raizApp pathForResource:nome ofType:@"pdf"];
    
    // Criando uma URL a partir da string
    
    NSURL *urlArquivo = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    // Retornando a URL
    
    return urlArquivo;

}



#pragma mark - QLPreviewControllerDelegate


-(void)previewControllerWillDismiss:(QLPreviewController *)controller{


    NSLog(@"Voltou");


}


@end
