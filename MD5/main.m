
/**
 *  Project: MD5
 *  Created by Templore on 2015.05.25
 */

#import <Foundation/Foundation.h>
#import "MD5.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSLog(@"%@", [MD5 md5:@"templore"]);
    }
    
    return 0;
}
