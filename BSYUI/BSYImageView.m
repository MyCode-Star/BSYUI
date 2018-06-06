//
//  BSYImageView.m
//  BSYUI
//
//  Created by 白仕云 on 2018/6/6.
//  Copyright © 2018年 BSY.com. All rights reserved.
//

#import "BSYImageView.h"

@implementation BSYImageView


/**
 设置图片
 */
-(BSYImageView * (^)(UIImage * ))bsy_image
{
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}

/**
 设置高亮图片
 */
-(BSYImageView * (^)(UIImage * ))bsy_highlightedImage
{
    return ^(UIImage *lightedImage){
        self.highlightedImage = lightedImage;
        return self;
    };
}

/**
 设置UI位置大小
 */
-(BSYImageView * (^)(CGRect ))bsy_Rect
{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

/**
 设置UI的背景
 */
-(BSYImageView *(^)(UIColor *))bsy_backColor
{
    return ^(UIColor *backColor) {
        self.backgroundColor = backColor;
        return self;
    };
}

/**
 设置边框颜色
 */
-(BSYImageView *(^)(UIColor *))bsy_borderColor
{
    return ^(UIColor *borderColor){
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

/**
 设置边框宽度
 */
-(BSYImageView *(^)(CGFloat))bsy_borderWith
{
    return ^(CGFloat borderWith){
        self.layer.borderWidth = borderWith;
        return self;
    };
}

/**
 设置边框弧度
 */
-(BSYImageView *(^)(CGFloat ))bsy_cornerRadius{

    return ^(CGFloat cornerRadius){
        self.layer.cornerRadius =cornerRadius;
        return self;
    };
}


/**
 设置裁切
 */
-(BSYImageView *(^)(bool ))bsy_masksToBounds{

    return ^(bool masksToBounds){
        self.layer.masksToBounds =masksToBounds;
        return self;
    };
}
@end
