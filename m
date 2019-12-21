Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4081287E9
	for <lists+linux-mediatek@lfdr.de>; Sat, 21 Dec 2019 08:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FwCM+vKm8Z+DZJlRtNnQAR8r7ItWhDqxTwci363yj3c=; b=ZVuC3/f03oEjJA
	bfnLu37Y4MUo+qz/OAbPkXmdxcJ2K9BbL9a9Kkg4gD7BU8DxkrNctOABY72xM6QcSSgWy1DJQZqh5
	xUjCwgV8ZiWhXI15H+j7rXibhZ+LkCEnCZ+exOx0awD/9SW8S/k6DBlJXHHoYZOXbBgvntg0JVcxd
	ZcjPsE6FDQeohlLe2tiduUHVwWdx6tq4e6agQua/qHWkT1zWfYeP5UBhX3+O2RQ9NMiTyz3V3Z3HX
	Cnn9I3KGooXVXZtlpAPB65DW83lk3BVF58A0epyUCeT5lTEXyrUPDuGsO6wwHjHN+OGruh/o8taaE
	O9ySE9hz8du51bGCVQWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiZ0t-0002xs-55; Sat, 21 Dec 2019 07:17:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiZ0p-0002xD-Q5
 for linux-mediatek@lists.infradead.org; Sat, 21 Dec 2019 07:17:22 +0000
X-UUID: e43c2fbe4a9545d997e0cdf157bc39f3-20191220
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6a1RKfO0AH2bkibQkHqHEE9QU8OujxhL2WQH1gq5fq4=; 
 b=cqqFjOccVxh6YQ/wcKv4ytO37RDX6T1qtnzbbrv3V7O3rKPnpQcI1Wwk32mnJxB49Qz3O4gZYIPflkviRyX2WvBBIoACxK/WgHJqctcqBbid4Dl4I3/dJOR6HebBcJw3gNsar9+hRCGy/Gx+x9aQlDe7Pj4chpn1PdFERl06pLw=;
X-UUID: e43c2fbe4a9545d997e0cdf157bc39f3-20191220
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1889264981; Fri, 20 Dec 2019 23:17:12 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Dec 2019 23:17:29 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 21 Dec 2019 15:17:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 21 Dec 2019 15:16:20 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH] mt76: mt7615: fix MT7615_CFEND_RATE_DEFAULT value
Date: Sat, 21 Dec 2019 15:17:00 +0800
Message-ID: <373ef6c1a4a0252cc21dde3f08e618a62629ba38.1576911997.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_231719_854341_42F1C920 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-mediatek@lists.infradead.org, Ryder Lee <ryder.lee@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix defualt CFEND_RATE and replace hardcode values.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7615/init.c   | 4 ++--
 drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h | 3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index 442736ceabe5..94a0dc8bfa28 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -35,8 +35,8 @@ static void mt7615_mac_init(struct mt7615_dev *dev)
 	mt76_wr(dev, MT_TMAC_TRCR1, val);
 
 	val = MT_AGG_ACR_PKT_TIME_EN | MT_AGG_ACR_NO_BA_AR_RULE |
-	      FIELD_PREP(MT_AGG_ACR_CFEND_RATE, 0x49) | /* 24M */
-	      FIELD_PREP(MT_AGG_ACR_BAR_RATE, 0x4b); /* 6M */
+	      FIELD_PREP(MT_AGG_ACR_CFEND_RATE, MT7615_CFEND_RATE_DEFAULT) |
+	      FIELD_PREP(MT_AGG_ACR_BAR_RATE, MT7615_BAR_RATE_DEFAULT);
 	mt76_wr(dev, MT_AGG_ACR0, val);
 	mt76_wr(dev, MT_AGG_ACR1, val);
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 554bd04d6d81..48810eda1cd6 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -40,7 +40,8 @@
 #define MT_CHFREQ_DBDC_IDX	BIT(6)
 #define MT_CHFREQ_SEQ		GENMASK(5, 0)
 
-#define MT7615_CFEND_RATE_DEFAULT	0x69 /* chip default (24M) */
+#define MT7615_BAR_RATE_DEFAULT		0x4b /* OFDM 6M */
+#define MT7615_CFEND_RATE_DEFAULT	0x49 /* OFDM 24M */
 #define MT7615_CFEND_RATE_11B		0x03 /* 11B LP, 11M */
 
 struct mt7615_vif;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
