//
//  ViewController.m
//  JZLStarView
//
//  Created by allenjzl on 2017/12/1.
//  Copyright © 2017年 com.Woodpecker. All rights reserved.
//

#import "ViewController.h"
#import "JZLStarView.h"


@interface ViewController ()
@property (nonatomic, strong) JZLStarView *starView;
@property (nonatomic, strong) JZLStarView *starView2;
@property (nonatomic, strong) JZLStarView *starView3;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.starView];
    [self.view addSubview:self.starView2];
    [self.view addSubview:self.starView3];

}

- (JZLStarView *)starView {
    if (!_starView) {
        _starView = [[JZLStarView alloc] initWithFrame:CGRectMake(50, 50, 200, 80) starCount:8 starStyle:HalfStar isAllowScroe:YES];
    }
    return _starView;
}

- (JZLStarView *)starView2 {
    if (!_starView2) {
        _starView2 = [[JZLStarView alloc] initWithFrame:CGRectMake(50, 200, 100, 50) starCount:5 starStyle:IncompleteStar isAllowScroe:NO];
        _starView2.currentScore = 3.2;
    }
    return _starView2;
}

- (JZLStarView *)starView3 {
    if (!_starView3) {
        _starView3 = [[JZLStarView alloc] initWithFrame:CGRectMake(50, 400, 200, 50) starCount:6 starStyle:IncompleteStar isAllowScroe:YES];
        _starView3.currentScore = 3.2;
    }
    return _starView3;
}





@end
