/*
 
 Categoria é uma forma de integrar um novo método a uma classe que não temos acesso (por exemplo a classe de sistema NSString).
 
 */

#import <Foundation/Foundation.h>

@interface NSString (StringReversa)

//Aqui declaramos um método para ser executado por nossa classe NSString

+(NSString *)stringReversa: (NSString *) texto;

@end
