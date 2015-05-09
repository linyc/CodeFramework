//
//  InputBar.h
//  InputBarFollowKeyboard
//
//  Created by CY on 26/1/15.
//  Copyright (c) 2015年 LINYC. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YCInputBar;
@protocol YCInputBarDelegate <NSObject>

@required
-(BOOL)SendButtonClick:(UITextView*)textView;

@optional
-(void)WhenHide;
@end

@interface YCInputBar : NSObject<UITextViewDelegate>
-(YCInputBar*)initBar:(UIView*)mainView sendButtonTitle:(NSString*)title maxTextLength:(NSInteger)length;
-(void)ShowKeyboard;
-(void)removeSelf;

@property (nonatomic,copy) NSString *placeholder;

@property (nonatomic,strong) id <YCInputBarDelegate> delegate;
@end
