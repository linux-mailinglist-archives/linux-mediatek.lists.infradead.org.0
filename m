Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF3A160B3
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 11:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hzyF1sMfHf1dfiHL7hB4Wc4wmyaELDHBIQpg4jcdYDk=; b=p0fTEe1Di17JNx
	t4K8a+7iQkjdJ4XM630R+cC2ar3PGNvhQzYAGP1FjKXsXUgLIRuYTuLmfyu1als0ItABAxqu3UKy2
	Em0RYBl6dQlvnElsIQiYoVskCA6C8c4tZFyq7qyx6SqoaiWom6U/PGjoxTd8avyUMJmxjqwlxKjMp
	DvtbWpw6agNor9y/NAaKyQQ1yS6XLt++9jIVb08t6CBRodebbfPv8MLykgj85CKrr8sBzz2lq7hXC
	kp92zObnT4Pe3X9vvH8d3Oou+ggFIV+5yuFttcNjNtTYEz3Ny6WQsWI9azXqeFv13VNzC9Ap6zMdh
	1T9mrfCXg+LuhTs8FkWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwHE-000663-SK; Tue, 07 May 2019 09:20:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwH5-0005wt-2t; Tue, 07 May 2019 09:20:36 +0000
X-UUID: 0d2ff4f8909a483c9439cdddb3e88489-20190507
X-UUID: 0d2ff4f8909a483c9439cdddb3e88489-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2084016634; Tue, 07 May 2019 01:20:25 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 02:20:23 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 17:20:21 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 7 May 2019 17:20:21 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [RFC PATCH v4 0/1] Re-license MTK NAND driver
Date: Tue, 7 May 2019 17:20:19 +0800
Message-ID: <20190507092020.1917-1-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_022035_130125_6F2695C5 
X-CRM114-Status: UNSURE (   5.45  )
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
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com, arnd@arndb.de,
 srv_heupstream@mediatek.com, yamada.masahiro@socionext.com,
 yellowriver2010@hotmail.com, gustavo@embeddedor.com,
 jorge.ramirez-ortiz@linaro.org, matthias.bgg@gmail.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 weiyongjun1@huawei.com, yingjoe.chen@mediatek.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org, xiaolei.li@mediatek.com,
 rogercc.lin@mediatek.com, dan.carpenter@oracle.com, peterpandong@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

Currently, MTK NAND driver is licensed as GPL. And we would like to
modify and publish it in bootloader with MIT license. So, here we send
this RFC patch to solicit ACKs from MTK NAND driver authors and
contributors whether we can re-license MTK NAND driver as dual MIT/GPL.

Thanks and looking forward to your reply,
Xiaolei

Patch v4:
---------
- Append ACK from Miquel, Boris, RogerCC, Ryder, Rafal.
- Use "git log --follow" to find all contributors and add them all in Cc list.

Patch v3:
---------
- Add license text replacement description in commit log.

Patch v2:
---------
- Add Ryder, Rafal, Wen in CC list.
- Introduce why we want to re-license MTK NAND driver.

Xiaolei Li (1):
  mtd: rawnand: mtk: Re-license MTK NAND driver as Dual MIT/GPL

 drivers/mtd/nand/raw/mtk_ecc.c  | 12 ++----------
 drivers/mtd/nand/raw/mtk_ecc.h  |  4 +---
 drivers/mtd/nand/raw/mtk_nand.c | 12 ++----------
 3 files changed, 5 insertions(+), 23 deletions(-)

-- 
2.18.0



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
