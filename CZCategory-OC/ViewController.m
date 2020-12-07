//
//  ViewController.m
//  CZCategory-OC
//
//  Created by CZ on 2020/12/4.
//

#import "ViewController.h"
#import "CZCategory.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor cz_colorWithRed:0 blue:100 green:100];
    self.imageView.backgroundColor = [UIColor cz_colorWithRed:-100 blue:100 green:100];
    
    self.view.backgroundColor = [UIColor cz_randomColor];
    

}


@end
