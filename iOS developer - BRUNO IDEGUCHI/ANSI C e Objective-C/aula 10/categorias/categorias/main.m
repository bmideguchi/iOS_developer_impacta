
#import <Foundation/Foundation.h>

#import "NSString+StringReversa.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *nomeReverso = [NSString stringReversa:@"Garibaldo Junior"];
        
        NSLog(@"Nome ao contrário: %@", nomeReverso);
        
    }
    return 0;
}

