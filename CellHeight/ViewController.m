//
//  ViewController.m
//  CellHeight
//
//  Created by zhoupeng on 2016/10/11.
//  Copyright © 2016年 zhoupeng. All rights reserved.
//
#define Identifier @"DetailTableViewCell"
#import "ViewController.h"
#import "Masonry.h"
#import "DetailTableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "TestModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(strong,nonatomic)NSMutableArray *titleArray;

@end

@implementation ViewController
{
    TestModel *testModel;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //数据
    [self setDisPlayData];
    
    //view
    [self setViewDisPlay];
    
    
}

-(void)setDisPlayData
{
    self.titleArray = [NSMutableArray array];
    
    NSArray *titleArray = [NSArray arrayWithObjects:@"都说人生一世，草木一秋。但草木有轮回，人生却无再世。真正让人羡慕的，却是那些无情的草木。",@"人的一生，真像那草木的一秋。童年冒芽、少年开花、青年花事、成年结果。过了四十五岁之后，人就像果子离开了树，轻松是轻松了，却显出了几许的沧桑与凄凉。心，不知不觉地老了，老得几乎听不到自己的心还在跳动。",@"小的时候，人走急了，常听到自己的心在卟通卟通的跳动；喝了一肚子的井水，跑起步来，也能听到水在肚子里翻涌。四十五岁之后，每当夜深人静时，我却听不到自己的心在跳动。不知不觉中，没有了争强好胜之心，多了许多人生命定的思想。对那唾手可得的东西，也不再去刻意的追求，而更多的是崇尚顺其自然。流水不争先，该到海洋的它总会到海洋，如果不幸流入了沙漠，也会绿了一方风景。",@"下雨天，以前常用爬楼梯来代替跑步。如今，上到自家五楼，我觉得那七转八拐的楼梯好长好长。心跳自然是加快了许多，但我依旧听不到自己心跳的声音。",@"心在变老，让人感受最深的就是觉出了时间的来去匆匆。一天在自己的一睁眼一闭眼中就过去了，一个星期在自己的一疏忽一忐忑中就过去了，一个月在自己的东走走西看看中就过去了，一年在自己的一迷茫一悔恨中就过去了。日子就这样从指尖滑过，心也在渐渐变老。",@"父母在，不言老。老母亲已是九十多岁的老人了，都还在从事力所能及的体力劳动，按说我不应当如此未老先衰。但心的衰老却是人力阻止不了的，它是一个心的蜕变过程；或许是在一个不经意的下午里，你会觉得自己突然心灰意懒，力不从心。父辈渐入黄土，下辈变成陌生，同龄人的讣告也接踵而至，曾经年轻的心在慢慢变老。 ",@"没有了激情，失去了目标，不在乎成绩的好坏，不在意人们的品头论足，只活在自己既定的环境里。没有工作激情，是因为发现自己已经没有了上升的空间；没有生活热情，是因为觉得自己此生早已命定。虽然还没有到盖棺定论的时候，但我发现我的心已慢慢变老。就像一只温水里的青蛙，心，在不知不觉里被水煮烂了。烂了心的青蛙，是永远也跳不出锅子的。",@"突然觉得自己很不值，自以为是个人才，却落得如此这般的下场。不要说做过什么惊天动地的事业，就连平日里说过的话，做过的事在心里都没有丝毫的印记。回想起来，这一生竟然没有什么值得称道的地方。农民虽然平凡，他却种一年的庄稼就有一年的收成。而我的收成呢？悲乎！",@"都说不以物喜，不以已悲。此生没居过庙堂之高，也没处过江湖之远，是不知道“忧”为何物的。但心在变老，又怎一个“悲”字了得呢……", nil];
    NSArray *titleArray1 = [NSArray arrayWithObjects:@"Youth is not a time of life; it is a state of mind; it is not a matter of rosy cheeks, red lips and supple knees; it is a matter of the will, a quality of the imagination, a vigor of the emotions; it is the freshness of the deep springs of life.",@"Youth means a temperamental predominance of courage over timidity, of the appetite for adventure over the love of ease. This often exists in a man of 60 more than a boy of 20. Nobody grows old merely by a number of years. We grow old by deserting our ideals. ",@"Years may wrinkle the skin, but to give up enthusiasm wrinkles the soul. Worry, fear, self-distrust bows the heart and turns the spirit back to dust. ",@"Whether 60 or 16, there is in every human being’s heart the lure of wonders, the unfailing appetite for what’s next and the joy of the game of living. In the center of your heart and my heart, there is a wireless station; so long as it receives messages of beauty, hope, courage and power from man and from the infinite, so long as you are young.",@"When your aerials are down, and your spirit is covered with snows of cynicism and the ice of pessimism, then you’ve grown old, even at 20; but as long as your aerials are up, to catch waves of optimism, there’s hope you may die young at 80. ",@"All of us have read thrilling stories in which the hero had only a limited and specified time to live. Sometimes it was as long as a year, sometimes as short as 24 hours. But always we were interested in discovering just how the doomed hero chose to spend his last days or his last hours. I speak, of course, of free men who have a choice, not condemned criminals whose sphere of activities is strictly delimited. ",@"Such stories set us thinking, wondering what we should do under similar circumstances. What events, what experiences, what associations should we crowd into those last hours as mortal beings, what regrets? ",@"Sometimes I have thought it would be an excellent rule to live each day as if we should die tomorrow. Such an attitude would emphasize sharply the values of life. We should live each day with gentleness, vigor and a keenness of appreciation which are often lost when time stretches before us in the constant panorama of more days and months and years to come. There are those, of course, who would adopt the Epicurean motto of “Eat, drink, and be merry”. But most people would be chastened by the certainty of impending death. ",@"In stories the doomed hero is usually saved at the last minute by some stroke of fortune, but almost always his sense of values is changed. He becomes more appreciative of the meaning of life and its permanent spiritual values. It has often been noted that those who live, or have lived, in the shadow of death bring a mellow sweetness to everything they do", nil];
    
    for (int i = 0; i < titleArray1.count; i++) {
        TestModel *model = [[TestModel alloc]init];
        model.title = [titleArray objectAtIndex:i];
        model.title2 = [titleArray1 objectAtIndex:i];
        [self.titleArray addObject:model];
    }

}

-(void)setViewDisPlay
{
    UITableView *_tableView = [[UITableView alloc]init];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor whiteColor];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator = NO;
    [_tableView registerClass:[DetailTableViewCell class] forCellReuseIdentifier:Identifier];
    [self.view addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(0);
        make.right.offset(0);
        make.top.offset(20);
        make.bottom.offset(0);
        
    }];

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    cell.model = [self.titleArray objectAtIndex:indexPath.row];
    return  cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //高度无缓存，每次都要计算
//    return [tableView fd_heightForCellWithIdentifier:@"details" configuration:^(DetailTableViewCell *cell) {
//        cell.fd_enforceFrameLayout = NO; 
//        cell.title = [self.titleArray objectAtIndex:indexPath.row];
//    }];
    
    //通过indexpath缓存高度
    return [tableView fd_heightForCellWithIdentifier:Identifier cacheByIndexPath:indexPath configuration:^(DetailTableViewCell *cell) {
        cell.fd_enforceFrameLayout = NO;
        cell.model = [self.titleArray objectAtIndex:indexPath.row];


    }];
    
    //通过唯一标识缓存高度
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.titleArray.count;
}


@end
