//
//  main.m
//  JLN-2_DesignPattern
//
//  Created by Jymn_Chen on 14/12/26.
//  Copyright (c) 2014年 Jymn_Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

// 1. Abstract Factory
#import "AF_Client.h"

// 2. Builder
#import "BR_Client.h"

// 3. Factory Method
#import "FM_Client.h"

// 4. Prototype
#import "PT_Client.h"

// 5. Singleton
#import "SI_Client.h"

// 6. Adaptor
#import "ADClass_Client.h"
#import "ADInstance_Client.h"

// 7. Bridge
#import "BG_Client.h"

// 8. Composite
#import "CO_Client.h"

// 9. Decorator
#import "DE_Client.h"

// 10. Facade
#import "FA_Client.h"

// 11. FlyWeight
#import "FW_Client.h"

// 12. Proxy
#import "PR_Client.h"

// 13. Chain of Responsibility
#import "COR_Client.h"

// 14. Command
#import "CM_Client.h"

// 15. Interpreter

// 16. Iterator
#import "IT_Client.h"

// 17. Mediator
#import "MD_Client.h"

// 18. Memento
#import "MM_Client.h"

// 19. Observer

// 20. State
#import "ST_Client.h"

// 21. Strategy

// 22. Template Method
#import "TM_Client.h"

// 23. Visitor
#import "VI_Client.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 1. Abstract Factory
        NSLog(@"** 1 ** Abstract Factory");
        AF_Client *af_client = [AF_Client new];
        [af_client createMacGUI];
        [af_client createLinuxGUI];
        NSLog(@"--------------------");
        
        // 2. Builder
        NSLog(@"** 2 ** Builder");
        BR_Client *br_client = [BR_Client new];
        [br_client constructUSACar];
        [br_client constructJPNCar];
        NSLog(@"--------------------");
        
        // 3. Factory Method
        NSLog(@"** 3 ** Factory Method");
        FM_Client *fm_client = [FM_Client new];
        [fm_client createProductA];
        [fm_client createProductB];
        NSLog(@"--------------------");
        
        // 4. Prototype
        NSLog(@"** 4 ** Prototype");
        PT_Client *pt_client = [PT_Client new];
        [pt_client drawColorTextAndRectangles];
        NSLog(@"--------------------");
        
        // 5. Singleton
        NSLog(@"** 5 ** Singleton");
        SI_Client *si_client = [SI_Client new];
        [si_client getAllFileSystem];
        NSLog(@"--------------------");
        
        // 6. Adaptor
        NSLog(@"** 6 ** Adaptor");
        ADClass_Client *adc_client = [ADClass_Client new];
        [adc_client scienceCalculateAdd:10 to:10];
        ADInstance_Client *adi_client = [ADInstance_Client new];
        [adi_client calculator_addOperation];
        [adi_client calculator_minusOperation];
        NSLog(@"--------------------");
        
        // 7. Bridge
        NSLog(@"** 7 ** Bridge");
        BG_Client *bg_client = [BG_Client new];
        [bg_client drawMacWindowBorder];
        [bg_client drawLinuxWindowCloseBox];
        NSLog(@"--------------------");
        
        // 8. Composite
        NSLog(@"** 8 ** Composite");
        CO_Client *co_client = [CO_Client new];
        [co_client drawPicture];
        [co_client drawLine];
        [co_client drawText];
        NSLog(@"--------------------");
        
        // 9. Decorator
        NSLog(@"** 9 ** Decorator");
        DE_Client *de_client = [DE_Client new];
        [de_client componentOperation];
        [de_client decoratorOperation];
        NSLog(@"--------------------");
        
        // 10. Facade
        NSLog(@"** 10 ** Facade");
        FA_Client *fa_client = [FA_Client new];
        [fa_client compileOperation];
        NSLog(@"--------------------");
        
        // 11. FlyWeight
        NSLog(@"** 11 ** FlyWeight");
        FW_Client *fw_client = [FW_Client new];
        [fw_client getAllNumbers];
        NSLog(@"--------------------");
        
        // 12. Proxy
        NSLog(@"** 12 ** Proxy");
        PR_Client *pr_client = [PR_Client new];
        [pr_client requestToSmartReference];
        NSLog(@"------");
        [pr_client requestToProtectionProxy];
        NSLog(@"--------------------");
        
        // 13. Chain of Responsibility
        NSLog(@"** 13 ** Chain of Responsibility");
        COR_Client *cor_client = [COR_Client new];
        [cor_client handleSubMessage];
        NSLog(@"------");
        [cor_client handleSuperMessage];
        NSLog(@"------");
        [cor_client handleExceptionMessage];
        NSLog(@"--------------------");
        
        // 14. Command
        NSLog(@"** 14 ** Command");
        CM_Client *cm_client = [CM_Client new];
        [cm_client watchTV];
        NSLog(@"--------------------");
        
        // 15. Interpreter
        NSLog(@"** 15 ** Interpreter");
        NSLog(@"--------------------");
        
        // 16. Iterator
        NSLog(@"** 16 ** Iterator");
        IT_Client *it_client = [IT_Client new];
        [it_client iterateArray];
        NSLog(@"------");
        [it_client iterateDictionary];
        NSLog(@"--------------------");
        
        // 17. Mediator
        NSLog(@"** 17 ** Mediator");
        MD_Client *md_client = [MD_Client new];
        [md_client colleaguesChat];
        NSLog(@"--------------------");
        
        // 18. Memento
        NSLog(@"** 18 ** Memento");
        MM_Client *mm_client = [MM_Client new];
        [mm_client useMemento];
        NSLog(@"--------------------");
        
        // 19. Observer
        NSLog(@"** 19 ** Observer");
        NSLog(@"--------------------");
        
        // 20. State
        NSLog(@"** 20 ** State");
        ST_Client *st_client = [ST_Client new];
        [st_client tcpConnect];
        NSLog(@"--------------------");
        
        // 21. Strategy
        NSLog(@"** 21 ** Strategy");
        NSLog(@"--------------------");
        
        // 22. Template Method
        NSLog(@"** 22 ** Template Method");
        TM_Client *tm_client = [TM_Client new];
        [tm_client displayChar];
        [tm_client displayString];
        NSLog(@"--------------------");
        
        // 23. Visitor
        NSLog(@"** 23 ** Visitor");
        VI_Client *vi_client = [VI_Client new];
        [vi_client visitAllElements];
        NSLog(@"--------------------");
        
    }
    return 0;
}
