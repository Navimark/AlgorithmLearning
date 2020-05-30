//
//  CSTAlgoDefines.h
//  AlgorithmLearning
//
//  Created by chenzheng on 2020/5/30.
//  Copyright © 2020 CST. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

struct ListNode {
    NSInteger val;
    struct ListNode *next;
};
typedef struct ListNode CSTListNode;

@interface CSTAlgoDefines : NSObject

@end

NS_ASSUME_NONNULL_END
