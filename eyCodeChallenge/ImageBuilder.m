//
//  ImageBuilder.m
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ImageBuilder.h"
#import "ImageObject.h"

@implementation ImageBuilder

+ (NSArray *)groupsFromJSON:(NSData *)objectNotation error:(NSError **)error{
    
    NSError *localError = nil;
    NSDictionary *parsedObject = [NSJSONSerialization JSONObjectWithData:objectNotation options:0 error:&localError];
    
    if (localError != nil) {
        *error = localError;
        return nil;
    }
    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    if (parsedObject[@"images"])
    {
        NSArray *results = parsedObject[@"images"];
        
        for (NSDictionary *imageDic in results) {
            ImageObject *image = [ImageObject new];
            
            for (NSString *key in imageDic) {
                if ([image respondsToSelector:NSSelectorFromString(key)]) {
                    [image setValue:[imageDic valueForKey:key] forKey:key];
                }
            }
            
            [images addObject:image];
        }
    }
    
    return images;
    
}

@end
