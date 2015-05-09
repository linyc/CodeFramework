//
//  HelperImage.h
//  carlive
//
//  Created by CY on 15/4/11.
//  Copyright (c) 2015年 LINYC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class YCImagePicker;

typedef void (^GetImage)(UIImage *image,YCImagePicker *me);
typedef void (^GetImageData)(NSData *imgData,YCImagePicker *me);

@interface YCImagePicker : NSObject<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

/**
 *  选择或者拍照后返回UIImage对象
 */
@property (nonatomic,copy) GetImage blockGetImage;
/**
 *  选择或者拍照后返回UIImageData对象
 */
@property (nonatomic,copy) GetImageData blockGetImgData;

/**
 *  执行拍照或选择照片操作
 *
 *  @param viewCtl viewCtl
 */
-(void)takePhotoWithViewCtl:(UIViewController*)viewCtl;

@end
