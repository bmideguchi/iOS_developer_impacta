//
//  tabelaViewController.h
//  desafioQuickLook
//
//  Created by NoiteA on 29/07/13.
//  Copyright (c) 2013 BrunoIdeguchi. All rights reserved.
//

#import <UIKit/UIKit.h>

//Importamos o quickLook no projeto
//OBS: antes de importar, habilitamos o framework quickLook na ˜Folhinha azul˜
#import <QuickLook/QuickLook.h>

//Incluimos os delegates e o datasource que usaremos no projeto
@interface tabelaViewController : UITableViewController <QLPreviewControllerDataSource, QLPreviewControllerDelegate, UINavigationControllerDelegate>

//Criamos um array que armazenará os nomes dos PDFs
@property (nonatomic, strong) NSMutableArray *arrayPDFs;

@end
