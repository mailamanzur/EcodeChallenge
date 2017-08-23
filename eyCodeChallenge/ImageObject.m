//
//  ImageObject.m
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ImageObject.h"

@implementation ImageObject

- (NSString *)setImageURLForSize:(ImageType)type {
    
    NSString *finalUrl;
    switch (type) {
        case Thumbnail: {
            finalUrl = [NSString stringWithFormat:@"%@,_2.jpg",self.uri];
            
            break;
        }
        case Original: {
            finalUrl = [NSString stringWithFormat:@"%@,_27.jpg",self.uri];
            break;
        }
    }
    
    return finalUrl;
}


@end
