Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7028DC11
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 08:38:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xSOFpJvAHKQxW9xoiL2bMvXmb0t25G6jvjcYb7btTrs=; b=EwIu49bnihLIiG
	6KE0c++whqFabI8kbrsSBGUf1WqzJypWDk+ZjVlpro703wcF/BLok0JWLtW7ZaovTWcuaXgBBMO0W
	+GdQEbaIUVfcvHQkVLTaAIOF/1WlJ3KzqVerW20VkOGJcGR/RPcWiVhp3+H9exm/ETKNAzTzaYipO
	3Vrx/Glc6vxWjE+3VEbNOh17Ic0k7FvQ+kuMX0P41RaWwv38njTIaSEAvmo6oI2EFE4m8M0c1Pfio
	jlveqhJG9WMbjd71nRyXoDbdpUg7eFh7mmeqbu+1LxSbDFtSGA4Hz97AlZ2mMwO8/2etDrrjzdxFz
	N8jUuI2ileyBea8KDyCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKzwD-0005dQ-FR; Mon, 29 Apr 2019 06:38:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKzw2-0005Ss-HY; Mon, 29 Apr 2019 06:38:43 +0000
X-UUID: 84e19a367dd543558feaff10e515bcf1-20190428
X-UUID: 84e19a367dd543558feaff10e515bcf1-20190428
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1605268737; Sun, 28 Apr 2019 22:38:39 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 28 Apr 2019 23:38:38 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 14:38:36 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 14:38:36 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [PATCH 0/5] MTK NAND driver improvements and fixes
Date: Mon, 29 Apr 2019 14:38:29 +0800
Message-ID: <20190429063834.45967-1-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 42CF0C37319A5446CCD51CF3BB79BF061238EA6C185D6EC7417B1474532625C92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_233842_586966_A5D23E0E 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, xiaolei.li@mediatek.com,
 linux-mtd@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello Maintainers,

The following patch set is used to do MTK NAND driver improvements and
bug fixes, include:
* Fix low level time calculation of read/write cycle to meet tRC_min
  and tWC_min requirements.
* Refine RE# pulse width calculation and data sampling to improve read
  performance.
* Add CS validity check.
* Fix oob buffer pointer wrongly setting and empty page threshold setting.

Changes relative to:
--------------------

tree    : git://git.infradead.org/linux-mtd.git
branch  : master
commit  :
        'commit 3e35730dd754 ("mtd: powernv_flash: Fix device
         registration error")

Tests:
------

* ubifs and jffs2 are validated on NAND device MT29F16G08ADBCA by
  'dd' command.
* all drivers/mtd/tests/* pass.
* speed test:
  eraseblock write speed is 11087 KiB/s
  eraseblock read speed is 19986 KiB/s
  page write speed is 10689 KiB/s
  page read speed is 18724 KiB/s
  2 page write speed is 10611 KiB/s
  2 page read speed is 18713 KiB/s
  erase speed is 103696 KiB/s
  2x multi-block erase speed is 354248 KiB/s
  4x multi-block erase speed is 350459 KiB/s
  8x multi-block erase speed is 356173 KiB/s
  16x multi-block erase speed is 356173 KiB/s
  32x multi-block erase speed is 358120 KiB/s
  64x multi-block erase speed is 356173 KiB/s

Xiaolei Li (5):
  mtd: rawnand: mtk: Correct low level time calculation of r/w cycle
  mtd: rawnand: mtk: Improve data sampling timing for read cycle
  mtd: rawnand: mtk: Add validity check for CE# pin setting
  mtd: rawnand: mtk: Fix wrongly assigned oob buffer pointer issue
  mtd: rawnand: mtk: Setup empty page threshold correctly

 drivers/mtd/nand/raw/mtk_nand.c | 73 ++++++++++++++++++++++++++-------
 1 file changed, 59 insertions(+), 14 deletions(-)

--
2.18.0



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
