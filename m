Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D51E1B75F0
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 Apr 2020 14:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nHZAn01Hi+o2fTZB+YO7vt68sfcVtrsm6qBZZaLbHAw=; b=SyRONxbop5ftMP
	CC1W5a94d/aW37PCmlyRoJ4Bcijp37Rp8UywrYs3h1mJYZ6T9oDQD8QxzKoVtJ9DM0rkQNJYfQjB1
	QmilLp8RZmmEOOP2MeX9HqZnvHNsULScQoGgVjtxwLhS4RU4P/75aV2w2ikGriPWAY4fP+NVsAn7Y
	2v1Ub43qMsGXib2RzzS/SNzeeBy0EKLGHeJOz4PexqHVgylc6F4k6MEeor/3Xr1/cIrCprSGGIYlC
	Mr670PjRrVBrUuYh1GdmOKJg207rTqUufzk2r5cfIZFFgVtzsKW2fUUwzrtXrZcee/GHD/sBB/z0v
	vsQiVrXEPyPe9lIjce1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxny-0004ue-LP; Fri, 24 Apr 2020 12:51:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxnv-0004l7-7B
 for linux-mediatek@lists.infradead.org; Fri, 24 Apr 2020 12:51:40 +0000
Received: from localhost.localdomain.com (unknown [151.66.196.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EAF620706;
 Fri, 24 Apr 2020 12:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587732698;
 bh=acTCKRQtc8GdP2hfA8pb2wBMyI3c/xByzORhk33F4+M=;
 h=From:To:Cc:Subject:Date:From;
 b=RwsJIdQZnBnzL7i9BruN7sIPvkKiLJgHY+CzWGCjQu6X9h1uQHytXMDkaNQR2C8wz
 tEU1/+d8wKxw4W7O4+paBCZGkm1WJ9rh/6LUKyn4Y9tjwnG9K1G8UMGDIrVy19Qg+T
 KBoYK+hFTZDT7QKZ+PBp/famj6Yned3Cn1emLPss=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7615: fix event report in mt7615_mcu_bss_event
Date: Fri, 24 Apr 2020 14:51:29 +0200
Message-Id: <19823f332eb49c3d0ab5177137e3b67c21e27a7b.1587732526.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_055139_281153_9806BA6D 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Currently mt7663 devices do not support DBDC so fw events have no info
about it. Fix mt7615_mcu_bss_event that wrongly use bss_idx as DBDC
band_idx while it is vif index.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 476f674fe2e7..aee9ee43436f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -356,11 +356,12 @@ mt7615_mcu_bss_event(struct mt7615_dev *dev, struct sk_buff *skb)
 {
 	struct mt7615_mcu_bss_event *event;
 	struct mt76_phy *mphy;
+	u8 band_idx = 0; /* DBDC support */
 
 	event = (struct mt7615_mcu_bss_event *)(skb->data +
 						sizeof(struct mt7615_mcu_rxd));
 
-	if (event->bss_idx && dev->mt76.phy2)
+	if (band_idx && dev->mt76.phy2)
 		mphy = dev->mt76.phy2;
 	else
 		mphy = &dev->mt76.phy;
-- 
2.25.3


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
