//
//  GameList.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import Foundation

let games = [GameData(name: "Monster Hunter", year: "2004", description: "《魔物獵人》是由卡普空開發及發布，並且是魔物獵人系列中的第一個遊戲。《魔物獵人》於2004年3月11日在日本發布，並分別於同年9月21日及2005年5月27日在北美及PAL區發布。", generation: "第一代封面", version: "One"),
GameData(name: "Monster Hunter G", year: "2005", description: "是《魔物獵人》的重製擴充版，於2005年1月20日在日本發布。同年，此遊戲被重製和移植至PlayStation Portable上，並以「魔物獵人攜帶版」之名發布。此遊戲相對前作新增了很多新元素，如武器雙劍、新怪物、以及「亞種」怪物的出現。於2009年4月23日，《魔物獵人G》被移植至Wii平台上，並被重新發布。", generation: "第二代封面", version: "OneG"),
GameData(name: "Monster Hunter 2", year: "2006", description: "《魔物獵人2》是日本電子遊戲公司卡普空於2006年2月16日推出的PlayStation 2動作角色扮演遊戲。此遊戲僅在日本發售。[1]於2007年7月19日，卡普空發布了《魔物獵人2》的修訂版本《魔物獵人2 最佳版》。", generation: "第六代封面", version: "Two"),
GameData(name: "Monster Hunter Portable 2nd", year: "2007", description: "魔物獵人攜帶版2nd》是魔物獵人系列中的第二個攜帶版遊戲，其設定部份基於PlayStation 2前作《魔物獵人2》。因為《魔物獵人2》從沒有在日本國外發售，所以卡普空才製作此遊戲供日本國外玩家遊玩。", generation: "第七代封面", version: "TwoP"),
GameData(name: "Monster Hunter Portable 2nd G", year: "2008", description: "《魔物獵人攜帶版2nd G》是《魔物獵人攜帶版2nd》的加強版，並且於2008年3月27日在日本發布。於2008年東京電玩展中，卡普空宣布此遊戲將會於2009年春在北美以「魔物獵人 自由聯合」之名發布。[2]於2009年遊戲開發者大會中，卡普空宣布此遊戲將會於2009年6月23日北美發布。", generation: "第吧代封面", version: "TwoG"),
GameData(name: "Monster Hunter Tri", year: "2009", description: "就如以往的魔物獵人遊戲，《魔物獵人 3》的遊戲內容仍然主要圍繞著任務、獵人和狩獵。遊戲增加了很多新元素，例如新狩獵場地「孤島」等。獵人亦能夠潛入水中狩獵，使遊戲擁有更多的遊玩方式。《魔物獵人 3》增加了不少新的魔物品種，如水蜥龍、海龍等，但卻取消了狩獵笛、雙劍、銃槍和弓箭這些狩獵武器。", generation: "第十一代封面", version: "Three"),
GameData(name: "Monster Hunter Portable 3rd", year: "2010", description: "《魔物獵人攜帶版3rd》相對前作引入了新的狩獵區域、隨從貓、怪物等，並修訂了其戰鬥系統。[2]儘管此遊戲名為「攜帶版3rd」，但它並非《魔物獵人攜帶版2nd G》或《魔物獵人3》的更新版，而是一個完全獨立的遊戲，且與前作有著很大的差別。", generation: "第十二代封面", version: "ThreeP"),
GameData(name: "Monster Hunter 3 Ultimate", year: "2011", description: "是一款由Capcom開發並發行在任天堂3DS平台上的動作遊戲，本作也是《魔物獵人》系列在任天堂掌機平台上的第一作。作為《魔物獵人3》的加強版，《魔物獵人3G》的遊戲要素基於3代，但不同於《魔物獵人攜帶版3rd》中取消了水中狩獵，3G保留了3代中的這個特色。", generation: "第十三代封面", version: "ThreeG"),
GameData(name: "Monster Hunter 4", year: "2013", description: "是一款由卡普空開發並發行在任天堂3DS平台上的動作角色扮演遊戲。本作是《魔物獵人》系列的第四款正統續作，也是該系列首次在掌機平台推出正統續作。", generation: "第十五代封面", version: "Four"),
GameData(name: "Monster Hunter 4 Ultimate", year: "2014", description: "魔物獵人 4 G》也將在十週年紀念的今年（2014）推出。同時，CAPCOM 也強調 4G 可以幾乎完整繼承前作《魔物獵人 4》的存檔繼續遊玩。", generation: "第十六代封面", version: "FourG"),
GameData(name: "Monster Hunter Cross", year: "2015", description: "魔物獵人X》由卡普空製作和發行。本遊戲收到普遍好評。據卡普空報導，至2016年9月，本遊戲在全球範圍共售出超過410萬份。本遊戲的加強版《魔物獵人XX》已經在任天堂3DS上推出並將在任天堂Switch上推出。", generation: "x", version: "X"),
GameData(name: "Monster Hunter Double Cross", year: "2017", description: "是一款由卡普空開發並發行在任天堂3DS和任天堂Switch上的動作角色扮演遊戲。本作是《魔物獵人X》的資料片，也是系列在任天堂3DS上推出的第6部作品，同時也將是系列首次登陸任天堂Switch。遊戲於2017年3月18日在日本地區和繁體中文區發售了任天堂3DS版本。3DS版本還有立體映象。", generation: "mhxx", version: "XX"),
GameData(name: "Monster Hunter: World", year: "2018", description: "遊戲最初於E3 2017上宣布。根據製作人辻本良三和德田優也的說法，《魔物獵人 世界》將會是《魔物獵人系列》的主系列作品[8]。德田優也和藤岡要曾是《魔物獵人4》的總監。", generation: "mhw", version: "Mhw"),
GameData(name: "Monster Hunter: World Iceborne", year: "2019", description: "魔物獵人 Monster Hunter World（MHW）在 9 月推出的最大型 DLC 「Iceborne」，終於由 Capcom 帶來了更多的情報。今次的《MONSTER HUNTER: WORLD》特備節目 2019，一口氣公開和解釋了新地區的消息和多數新魔物的生態。", generation: "mhwi", version: "Mhwi")]
