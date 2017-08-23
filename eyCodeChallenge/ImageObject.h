//
//  ImageObject.h
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM( NSUInteger, ImageType ) {
    Thumbnail,
    Original
};

@interface ImageObject : NSObject
@property(strong, nonatomic)NSString *imageUrl;

- (NSString *)setImageURLForSize:(ImageType)type;

@end
