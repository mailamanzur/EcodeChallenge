//
//  ImageZoomViewController.h
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ImageObject;

@interface ImageZoomViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *zoomView;
@property (strong, nonatomic)ImageObject *originalImages;
@property (strong, nonatomic)NSString *showImage;

@end
