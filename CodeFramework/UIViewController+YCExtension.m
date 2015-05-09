//
//  UIViewController+Extension.m
//  WisdomCommunity
//
//  Created by yuecang on 15/5/7.
//  Copyright (c) 2015年 yuecang. All rights reserved.
//

#import "UIViewController+YCExtension.h"

@implementation UIViewController (YCExtension)
-(void)actionSheetWithTitle:(NSString*)title message:(NSString*)message destuctiveTitle:(NSString*)dtitle
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:nil cancelButtonTitle:@"OK" destructiveButtonTitle:dtitle otherButtonTitles: nil];
    if (self.navigationController) {
        [actionSheet showInView:self.navigationController.view];
    }
    else{
        [actionSheet showInView:self.view];
    }
}
@end
