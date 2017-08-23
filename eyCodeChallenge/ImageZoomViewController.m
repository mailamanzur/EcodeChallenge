//
//  ImageZoomViewController.m
//  eyCodeChallenge
//
//  Created by Maila  Manzur on 23/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ImageZoomViewController.h"
#import "ImageObject.h"
#import "UIImageView+Utils.h"

@interface ImageZoomViewController ()

@end

@implementation ImageZoomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureView];
    
}

- (void)configureView {
    
  [self.zoomView setImageFromURL:[NSURL URLWithString:[_originalImages setImageURLForSize:Original]]];

    
}


@end
