//
//  HelperImage.m
//  carlive
//
//  Created by CY on 15/4/11.
//  Copyright (c) 2015年 LINYC. All rights reserved.
//

#import "YCImagePicker.h"

@implementation YCImagePicker

#pragma mark - UIImagePicker

-(void)takePhotoWithViewCtl:(UIViewController*)viewCtl
{
    UIAlertController *alertCtl = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *actionAlbum = [UIAlertAction actionWithTitle:@"从相册获取照片" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self getPhotoWithIndex:0 viewCtl:viewCtl];
    }];
    UIAlertAction *actionCamera = [UIAlertAction actionWithTitle:@"用摄像头获取照片" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self getPhotoWithIndex:1 viewCtl:viewCtl];
    }];
    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        [alertCtl dismissViewControllerAnimated:YES completion:nil];
    }];
    
    [alertCtl addAction:actionAlbum];
    [alertCtl addAction:actionCamera];
    [alertCtl addAction:actionCancel];
    
    [viewCtl presentViewController:alertCtl animated:YES completion:nil];
}
-(void)getPhotoWithIndex:(NSInteger)index viewCtl:(UIViewController*)viewCtl
{
    UIImagePickerController *pickerCtl = [[UIImagePickerController alloc] init];
    pickerCtl.delegate = self;
    pickerCtl.allowsEditing = YES;
    
    if (index == 0) {
        pickerCtl.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
        [viewCtl presentViewController:pickerCtl animated:YES completion:nil];
    }
    else if(index == 1){
        
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            pickerCtl.sourceType = UIImagePickerControllerSourceTypeCamera;
            [viewCtl presentViewController:pickerCtl animated:YES completion:nil];
        }
        else{
            [HelperView AlertViewWithMessage:@"当前设备不支持拍照功能"];
        }
    }
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *headImg = info[UIImagePickerControllerEditedImage];
    
    NSData *imgData = UIImageJPEGRepresentation(headImg, 0.5);
    //self.imgHead.image = [UIImage imageWithData:imgData];
    
    UIImage *img = [UIImage imageWithData:imgData];
    
    if (_blockGetImage) {
        _blockGetImage(img,self);
    }
    if (_blockGetImgData) {
        _blockGetImgData(imgData,self);
    }
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}
-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
