Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AD71FEA58
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 06:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bzNYJhvDqHBQPt9Iq5kEl/jHM0RnYt/9gcOfJs+rQRM=; b=LjqhNhgVDPJboI
	BUJNUFYNdAFS7gAl6W3tFBCg4rdTYAXVY1t+mFbrRcYYIP8tnUX/NRdJaFGohbc+x9VNlGSbHxSob
	Atey+F+ZYZpsGg9ftYI0SkDad6ssSjUXy302SRv5BJVrDGkUvgEbkJA9zC6NztuD6peirM7D8m9Vb
	VTbvbZjbBcPsQQg1M3XLK+35aDo0l/KU1fSCNEeOC99Qj+J2pgeU9yLC1sFWchKnPeVwkKSZl/lxs
	dwR4/Y8WEUlPFiZaNzGdZ5RiL1UvmeYEjv1eyw3i451oPvFeREpgMRKMLQ3Bws1V/FwGRwnPREVgi
	atKmAk2+YH0SoCOc7GPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlmRf-0001Df-3z; Thu, 18 Jun 2020 04:46:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlmRb-0001D5-Nw
 for linux-mediatek@lists.infradead.org; Thu, 18 Jun 2020 04:46:33 +0000
X-UUID: a5e0f1810bc04bacaeac248cc020f798-20200617
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1MJwtjnSozcDYpnLZs9rWfOmBAurwZU/5UszGVVbHtU=; 
 b=WrfHfUt+7GD2i73rfx/e1He2JQckiYIfI2kSYsUzQtTqXWA0S3Qg2lAWu9YA75VEE3/CJ8FekrqSGisyUwinVQ2UoLObzsav+1XscKb1jCipR3AULtKbUURY9HXFtuGVR5TnlSeZaDk1mZoj+uQFref481oHLYUG6m4YbuCmW3c=;
X-UUID: a5e0f1810bc04bacaeac248cc020f798-20200617
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 496314206; Wed, 17 Jun 2020 20:46:22 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 21:41:54 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 12:41:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 12:41:53 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>, Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH] mt76: mt7615: add .set_tsf callback
Date: Thu, 18 Jun 2020 12:41:48 +0800
Message-ID: <f1b8ff0f2ac56d8045cb1836ae33d2e29fa766ef.1592449623.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_214631_787449_4756BFB3 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-wireless@vger.kernel.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

It is useful for IBSS Mesh to adjust t_clockdrift.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 21 +++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7615/regs.h  |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 6b4dd5d8794e..b1390efe7341 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -740,6 +740,26 @@ mt7615_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
 	return tsf.t64;
 }
 
+static void
+mt7615_set_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
+	       u64 timestamp)
+{
+	struct mt7615_dev *dev = mt7615_hw_dev(hw);
+	union {
+		u64 t64;
+		u32 t32[2];
+	} tsf = { .t64 = timestamp, };
+
+	mutex_lock(&dev->mt76.mutex);
+
+	mt76_wr(dev, MT_LPON_UTTR0, tsf.t32[0]);
+	mt76_wr(dev, MT_LPON_UTTR1, tsf.t32[1]);
+	/* TSF software overwrite */
+	mt76_set(dev, MT_LPON_T0CR, MT_LPON_T0CR_WRITE);
+
+	mutex_unlock(&dev->mt76.mutex);
+}
+
 static void
 mt7615_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
 {
@@ -1038,6 +1058,7 @@ const struct ieee80211_ops mt7615_ops = {
 	.channel_switch_beacon = mt7615_channel_switch_beacon,
 	.get_stats = mt7615_get_stats,
 	.get_tsf = mt7615_get_tsf,
+	.set_tsf = mt7615_set_tsf,
 	.get_survey = mt76_get_survey,
 	.get_antenna = mt76_get_antenna,
 	.set_antenna = mt7615_set_antenna,
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
index aee433a9eff6..f0b36b162bf3 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
@@ -417,6 +417,7 @@ enum mt7615_reg_base {
 
 #define MT_LPON_T0CR			MT_LPON(0x010)
 #define MT_LPON_T0CR_MODE		GENMASK(1, 0)
+#define MT_LPON_T0CR_WRITE		BIT(0)
 
 #define MT_LPON_UTTR0			MT_LPON(0x018)
 #define MT_LPON_UTTR1			MT_LPON(0x01c)
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
