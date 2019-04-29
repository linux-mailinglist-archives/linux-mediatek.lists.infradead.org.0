Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF39CDE57
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 10:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QC/+bRI0HT8BGmuj/rQKhnWJg7hKq4OnrvOf6SE8XEI=; b=uvw6gS0dV1lZbg
	eVS5omSpYqIX+ung5psLF4MX1TC3ED7CpXRrQdmZgkVQENtnvxwaTZriq+CiSHfau3kIzbHnWvzl9
	X/fLXYHeEEKdm8aYsMbO/48E4bXmfoCPtEEaDLbi5Ke2hGjHbmJtwiPWhTbVW08idEF01ZRBgKned
	OO4S1+2n3ng4w7zwdjLMVbg4xQki2X7X6Bw8Bc0nMCNtPj4xQ4UxGk2mabR25IpIsLq0WjngNVvhP
	8FEooUIpQ80LWahqlYnDBZDBNcIEuwM6+pluFB+pqiemErBMmxEWwYRCwpOv5Dj5xef9a0ANrZvo6
	Tqpp3qts2OcPYkhthZig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL20b-0006hn-J7; Mon, 29 Apr 2019 08:51:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL20Y-0006hP-PE; Mon, 29 Apr 2019 08:51:31 +0000
X-UUID: 709952eb2bd647a6adc603300d618e3f-20190429
X-UUID: 709952eb2bd647a6adc603300d618e3f-20190429
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <xiaolei.li@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1812407744; Mon, 29 Apr 2019 00:51:27 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 01:51:25 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Apr 2019 16:51:17 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 29 Apr 2019 16:51:18 +0800
From: Xiaolei Li <xiaolei.li@mediatek.com>
To: <miquel.raynal@bootlin.com>, <richard@nod.at>
Subject: [RFC PATCH v3 0/1] Re-license MTK NAND driver
Date: Mon, 29 Apr 2019 16:51:15 +0800
Message-ID: <20190429085116.60081-1-xiaolei.li@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_015130_818047_5D59F83F 
X-CRM114-Status: UNSURE (   4.50  )
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
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com,
 srv_heupstream@mediatek.com, yellowriver2010@hotmail.com,
 jorge.ramirez-ortiz@linaro.org, matthias.bgg@gmail.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 yingjoe.chen@mediatek.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org, xiaolei.li@mediatek.com
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
