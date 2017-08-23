//
//  ApiNetworkingManager.h
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ImageSuccessBlock)(id response);
typedef void (^ImageFailureBlock)(NSError *thError);

@interface ApiNetworkingManager : NSObject

-(void)fetchImageWithSuccess:(ImageSuccessBlock)success failure:(ImageFailureBlock)failure;

@end
