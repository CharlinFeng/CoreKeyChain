//
//  CoreKeyChain.m
//  CoreKeyChain
//
//  Created by 冯成林 on 15/10/20.
//  Copyright © 2015年 冯成林. All rights reserved.
//

#import "CoreKeyChain.h"
#import "UICKeyChainStore.h"

#define KeyChainStore [CoreKeyChain sharedCoreKeyChain].store

@interface CoreKeyChain ()

@property (nonatomic,strong) UICKeyChainStore *store;

@end



@implementation CoreKeyChain
HMSingletonM(CoreKeyChain)


+(void)initialize{
    
    CoreKeyChain *keyChain = [CoreKeyChain sharedCoreKeyChain];
    
    keyChain.store = [UICKeyChainStore keyChainStoreWithService:[NSBundle mainBundle].bundleIdentifier];
}



+(void)setStr:(NSString *)str key:(NSString *)key{
    [[NSUserDefaults standardUserDefaults] setObject:str forKey:key];
    [KeyChainStore setString:str forKey:key];
}
+(NSString *)strForKey:(NSString *)key{
    
    NSString *str = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if(str == nil) str = [KeyChainStore stringForKey:key];
    return str;
}


+(void)setFloat:(CGFloat)f key:(NSString *)key{[self setStr:[NSString stringWithFormat:@"%@",@(f)] key:key];}
+(CGFloat)floatForKey:(NSString *)key{return [[self strForKey:key] floatValue];}

+(void)setDouble:(double)d key:(NSString *)key{[self setStr:[NSString stringWithFormat:@"%@",@(d)] key:key];}
+(double)doubleForKey:(NSString *)key{return [[self strForKey:key] doubleValue];}

+(void)setBool:(BOOL)b key:(NSString *)key{[self setStr:[NSString stringWithFormat:@"%@",@(b)] key:key];}
+(BOOL)boolForKey:(NSString *)key{return [[self strForKey:key] boolValue];}

+(void)removeValueForKey:(NSString *)key{[self setStr:nil key:key];}

@end
