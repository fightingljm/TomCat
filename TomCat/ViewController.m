//
//  ViewController.m
//  TomCat
//
//  Created by 刘金萌 on 2019/8/16.
//  Copyright © 2019 刘金萌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomctaImg;
- (IBAction)cymbal:(id)sender;
- (IBAction)drink:(id)sender;
- (IBAction)eat:(id)sender;
- (IBAction)fart:(id)sender;
- (IBAction)pie:(id)sender;
- (IBAction)scratch:(id)sender;
@property(strong,nonatomic) NSMutableArray *imgArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imgArray = [NSMutableArray array];
}


- (IBAction)cymbal:(id)sender {
}

- (IBAction)drink:(id)sender {
    
    if(self.imgArray.count>0){
        [self.imgArray removeAllObjects];
    }
    
    // 1.找到对应的图片组
    for (int i=0; i<=80; i++) {
        NSString *imgName = [NSString stringWithFormat:@"drink_%02d.jpg",i];
        
        UIImage *img = [UIImage imageNamed:imgName];
        
        [self.imgArray addObject:img];
    }
    
    // 2.在规定的时间内播放图片
    self.tomctaImg.animationImages = self.imgArray;
    self.tomctaImg.animationRepeatCount = 1;
    self.tomctaImg.animationDuration = self.imgArray.count * 0.075;
    
    [self.tomctaImg startAnimating];
}

- (IBAction)eat:(id)sender {
}

- (IBAction)fart:(id)sender {
}

- (IBAction)pie:(id)sender {
}

- (IBAction)scratch:(id)sender {
}
@end
