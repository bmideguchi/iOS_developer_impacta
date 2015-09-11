
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    /* imageViewAnimada    \o/
     
     Uma das formas de realizar animação é usando uma UIImageView. Um elemento que permite também a simples exibição de uma imagem
     
     */
    

    // allocando e inicinado o array
    self.arrayImagens = [[NSMutableArray alloc]init];


    // Laço que criará os nomes das imagens
    for(int i = 0; i <= 39; i++){

        // Criando o nome
        NSString *nomeImagem = [NSString stringWithFormat:@"imagem_%i",i];
        
      //  NSLog(@"%@", nomeImagem);
        // Criando a uiimage a partir do nome formado
        
        UIImage *imagem = [UIImage imageNamed:nomeImagem];
        
        // Adicionando a imagem ao nosso array;
        
        [self.arrayImagens addObject:imagem];

    }

    NSLog(@"%@", self.arrayImagens);



    // Propriedade que controla a velocidade que animação será demonstrada
    self.imageViewUnica.animationDuration = 5.0;

    // Propriedade que controla a quantidade de repetiçoes da animação
    self.imageViewUnica.animationRepeatCount = 1;

    //Propriedade que define o objeto que fornecerá as imagens para animação
    self.imageViewUnica.animationImages = self.arrayImagens;

    // Definindo a ultima imagem a ser exibida
    self.imageViewUnica.image = [self.arrayImagens objectAtIndex:7];

    // Método que inicia a animação
    [self.imageViewUnica startAnimating];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageViewUnica release];
    [super dealloc];
}
@end
