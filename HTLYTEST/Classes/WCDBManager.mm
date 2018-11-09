//
//  WCDBManager.m
//  HTLYTEST
//
//  Created by 刘渊 on 2018/11/9.
//

#import "WCDBManager.h"
#import <WCDB/WCDB.h>

@implementation WCDBManager
/**
 单例模式
 */
+ (instancetype)shared
{
    static WCDBManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[WCDBManager alloc] init];
        [manager initializeDataBase];
    });
    return manager;
}
    
    /**
     初始化数据库
     */
- (void)initializeDataBase {
    NSString *documentsPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *filePath = [documentsPath stringByAppendingPathComponent:@"HanTalkCache.sqlite"];
    NSLog(@"%@",filePath);
}
@end
