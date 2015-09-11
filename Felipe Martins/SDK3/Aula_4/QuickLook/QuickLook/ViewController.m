
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Iniciando nosso array
    
    self.arrayNomesFotos = [[NSMutableArray alloc]init];
    
    // Populando o array das fotos através de um FOR para criação dos nomes
    for (int i = 1; i <= 20; i++) {
    
        NSString *nomeFoto = [NSString stringWithFormat:@"IMG_%i", i];
        
        [self.arrayNomesFotos addObject:nomeFoto];
        
    }
    
    
    NSLog(@"%@", self.arrayNomesFotos);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)escolher:(UIButton *)sender {
    
    
    // Criando um objeto do tipo QuickLook (visualizador de arquivos).
    QLPreviewController *quickLook = [[QLPreviewController alloc]init];
    
    // Ligando o delegate e o datasource
    quickLook.delegate = self;
    quickLook.dataSource = self;
    
    // Exibindo o quickLook
    
    [self presentViewController:quickLook animated:YES completion:nil];
    
}


#pragma mark - QLPreviewControllerDatasource


// Método que define a quantidade de itens que serão exibidos em nosso quickLook

-(NSInteger)numberOfPreviewItemsInPreviewController:(QLPreviewController *)controller{



// Retornamos a quantidade de itens em nosso array
    return self.arrayNomesFotos.count;

    

}


// Método que define a URL do arquivo que será exibido

-(id<QLPreviewItem>)previewController:(QLPreviewController *)controller previewItemAtIndex:(NSInteger)index{
// este método pede como retorno uma URL do aqrquivo que será exibido, criaremos a URL abaixo.

    NSString *nome = [self.arrayNomesFotos objectAtIndex:index];

    //Nossos arquivos estão armazenados na pasta RAIZ do nosso App, esta pasta é representada pelo BUNDLE
    //Criamos uma variável para armazenar o BUNDLE
    
    NSBundle *raizApp = [NSBundle mainBundle];
    
    // Criando o caminho até o arquivo
    NSString *pathArquivo = [raizApp pathForResource:nome ofType:@"JPG"];
    
    // Convertendo a string em URL
    
    NSURL *urlArquivo = [[NSURL alloc]initFileURLWithPath:pathArquivo];
    
    // Retornando a URL que contém o endereço
    return urlArquivo;

}




#pragma mark - QLPreviewControllerDelegate


-(void)previewControllerWillDismiss:(QLPreviewController *)controller{

// Resgatando o índice atual do QuickLook
    int indice = controller.currentPreviewItemIndex;
    
    // Criando o nome do arquivo baseado em nosso array de nomes e o índice do quickLook
    NSString *nome = [self.arrayNomesFotos objectAtIndex:indice];
    
    // Criando o nome completo
    NSString *nomeCompleto = [NSString stringWithFormat:@"%@.JPG", nome];
    
    
    // Exibindo na tela
    
    self.imageViewUnica.image = [UIImage imageNamed:nomeCompleto];


}



@end
