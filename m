Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52760144F7
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 09:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=piWVS8hji3ELaof8LyGf5opyUSCg1b79yU8X7QPrvMs=; b=qx4/Pj7mf5vBhnvQ1sUm+RnVn+
	1IEeFcZsFM2BRzdlJ6xBcd1g0mpITSa4c3zpT70DxnWKfI5loZqjIcERACPi1OcdMdYLKdhmsMFq1
	1r0fobRXcAlGHa+Z9/+3qmCZMq+8ueKV6psVGfiLEky7wfzLDhiX7wBwDAtJ0X+nwzOqCq/fykRGk
	Tszaim8WJqHgUmoEy9jioEnA0BZgwAInqBnIagcorcW/xhHAQ3qu3UglkAX4xTA54XsBVZ7IZwg14
	KBf65tDpNFxD6tbNHrKrybQakrfxRjOA12W/3XbaA2Pss9AgkDKh3i/14HcOco3O7qidyYyaHWEKx
	j2VBbVwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXhM-0001IN-PI; Mon, 06 May 2019 07:06:04 +0000
Received: from mxhk.zte.com.cn ([63.217.80.70])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXh2-000808-13; Mon, 06 May 2019 07:05:45 +0000
Received: from mse-fl1.zte.com.cn (unknown [10.30.14.238])
 by Forcepoint Email with ESMTPS id DA82BDDDD39076BBC7BB;
 Mon,  6 May 2019 15:03:30 +0800 (CST)
Received: from notes_smtp.zte.com.cn ([10.30.1.239])
 by mse-fl1.zte.com.cn with ESMTP id x4673Q2e021653;
 Mon, 6 May 2019 15:03:26 +0800 (GMT-8)
 (envelope-from wen.yang99@zte.com.cn)
Received: from fox-host8.localdomain ([10.74.120.8])
 by szsmtp06.zte.com.cn (Lotus Domino Release 8.5.3FP6)
 with ESMTP id 2019050615033055-10027950 ;
 Mon, 6 May 2019 15:03:30 +0800 
From: Wen Yang <wen.yang99@zte.com.cn>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] media: mtk-vcodec: fix leaked of_node references
Date: Mon, 6 May 2019 15:05:17 +0800
Message-Id: <1557126318-21487-4-git-send-email-wen.yang99@zte.com.cn>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1557126318-21487-1-git-send-email-wen.yang99@zte.com.cn>
References: <1557126318-21487-1-git-send-email-wen.yang99@zte.com.cn>
X-MIMETrack: Itemize by SMTP Server on SZSMTP06/server/zte_ltd(Release
 8.5.3FP6|November 21, 2013) at 2019-05-06 15:03:30,
 Serialize by Router on notes_smtp/zte_ltd(Release 9.0.1FP7|August  17, 2016) at
 2019-05-06 15:03:24, Serialize complete at 2019-05-06 15:03:24
X-MAIL: mse-fl1.zte.com.cn x4673Q2e021653
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_000544_219980_FCE38139 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [63.217.80.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wang.yi59@zte.com.cn, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Wen Yang <wen.yang99@zte.com.cn>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The call to of_find_device_by_node returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c:60:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 38, but without a corresponding object release within this function.
drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c:63:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 38, but without a corresponding object release within this function.
drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c:72:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 38, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Tiffany Lin <tiffany.lin@mediatek.com>
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-media@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
index 7884465..11c45c5 100644
--- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
+++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c
@@ -42,8 +42,8 @@ int mtk_vcodec_init_dec_pm(struct mtk_vcodec_dev *mtkdev)
 	}
 
 	pdev = of_find_device_by_node(node);
+	of_node_put(node);
 	if (WARN_ON(!pdev)) {
-		of_node_put(node);
 		return -1;
 	}
 	pm->larbvdec = &pdev->dev;
-- 
2.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
