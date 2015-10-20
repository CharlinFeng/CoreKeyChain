//
//  CoreKeyChain.h
//  CoreKeyChain
//
//  Created by 冯成林 on 15/10/20.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreKeyChainSingleton.h"
#import <UIKit/UIKit.h>

@interface CoreKeyChain : NSObject
HMSingletonH(CoreKeyChain)


+(void)setStr:(NSString *)str key:(NSString *)key;
+(NSString *)strForKey:(NSString *)key;


+(void)setFloat:(CGFloat)f key:(NSString *)key;
+(CGFloat)floatForKey:(NSString *)key;

+(void)setDouble:(double)d key:(NSString *)key;
+(double)doubleForKey:(NSString *)key;

+(void)setBool:(BOOL)b key:(NSString *)key;
+(BOOL)boolForKey:(NSString *)key;


+(void)removeValueForKey:(NSString *)key;


@end
