//
//  CSTLinkListGenerator.h
//  AlgorithmLearning
//
//  Created by chenzheng on 2020/5/30.
//  Copyright © 2020 CST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSTAlgoDefines.h"

NS_ASSUME_NONNULL_BEGIN


/// 根据 range 生成单链表
/// 带头结点,头结点中 val 为链表长度
/// @param range 指定单链表的 val 范围
CSTListNode *linkListWithRange(NSRange range);

/// 在 linkList 中删除指定值。删除成功返回 YES，删除失败返回 NO
BOOL deleteInLinkList(CSTListNode *linkList,int targetVal);

void printLinkList(CSTListNode *linkList,BOOL pretty,BOOL withHeader);

/// 单链表反转
void reverseLinkList(CSTListNode *linkList);

/// 单链表区间反转 [from,to]，从 1 开始计数
void reverseLinkListBetween(CSTListNode *linkList,int from,int to);

/// 删除链表中等于给定值 val 的所有节点
void removeElementsInLinkList(CSTListNode *linkList,int val);

NS_ASSUME_NONNULL_END
