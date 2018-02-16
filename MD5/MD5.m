
/**
 *  Project: MD5
 *  Created by Templore on 2015.05.25
 */

#import "MD5.h"
#import "CommonCrypto/CommonDigest.h"

@implementation MD5

+ (NSString *)md5:(NSString *)rawString
{
    const char *cStr = [rawString UTF8String];
    
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    
    NSMutableString *hash = [NSMutableString string];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
    {
        [hash appendFormat:@"%02X", result[i]];
    }
    
    NSString *md5 = [hash lowercaseString];
    
    return md5;
}

@end