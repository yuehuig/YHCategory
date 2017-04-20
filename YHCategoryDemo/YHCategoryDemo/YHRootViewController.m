//
//  YHRootViewController.m
//  YHCategory
//
//  Created by 郭月辉 on 2017/4/20.
//  Copyright © 2017年 Theshy. All rights reserved.
//

#import "YHRootViewController.h"
#import "YHCategory.h"

@interface YHRootViewController ()

@property (nonatomic, assign) BOOL isAnimaled;

@end

@implementation YHRootViewController
static NSString * const identifier = @"cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"YHCategory";
    
    NSLog(@"你好---%lu",(unsigned long)[@"你好" getCharacterCount]);
    NSLog(@"nihao---%lu",(unsigned long)[@"nihao" getCharacterCount]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    NSString *title = @"";
    switch (indexPath.row) {
        case 0:
            title = @"UIViewController+Animal";
            break;
            
        default:
            break;
    }
    
    cell.textLabel.text = title;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        if (self.isAnimaled == NO) {
            [self show];
            //[self showWithDuration:1 transformType:TransformTypeM34];
            //[self transitionWithEnumType:AnimationTypeCube WithSubtype:nil];
        } else {
            [self close];
            //[self closeWithDuration:1 transformType:TransformTypeM34];
        }
        self.isAnimaled = !self.isAnimaled;
    }
    
}

@end
