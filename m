Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 753521A4424
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 11:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0APMorKiYGLz2eLMj0kir7fncmzYDvTwImeB9pXDrAY=; b=Tnf70m/kDOozId
	hKG52ZNX+sJD1zurBkiruQQ6GD4Eu1n6oXIx4hCbflhJ4tOGGnj7VApjuaO0PoFK5H5nSaYHVz8f4
	sdyauiq4rKX7rrXv/o2igI8drpzfjeZy5TsS4Fo3w3ER1avLNNkhQvdXgPQUlU2C7a7JhodwCMESe
	0ydahADFJo2XgxNHrkEqUs0ToSe7/iYC2DuUKxdJfz7zGuQsGznEve5iRX/UhAeqR3O10XlUj4iZL
	885czXNlxNXdwYIaz/NqsFaRnwxWC4vFc6dYfYq1z6M2ZZREMFbfZ7R5FZ0HeQMlKCXHnZW3wytOz
	YWYGFZK04BBaLqMNtmPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpYy-0004yu-5d; Fri, 10 Apr 2020 09:03:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpYs-0004sa-KL
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 09:02:55 +0000
X-UUID: 1065ef6e2d8a4488ade0e7224fbd9c14-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Q7vYceF8wcaJFxEzBhMAy15i6reVJ7NOYyhn/fL7Dc0=; 
 b=S2UIgwnvVA1xJiU9+/kXMA6X0udXPpFeR0eODi7cPuRCCIE1gsuTQ8JFJTAiVgcJOega7O5jGh8M1Cg7QHgTzizbbQueIxr1FFsasf5vAmDSTSFPMZtY2w27XjoGp5c7CzgGs0BeOoswD+L6tJ2c/a+4pfAfYH9D3RtHKtqI/W0=;
X-UUID: 1065ef6e2d8a4488ade0e7224fbd9c14-20200410
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2097266369; Fri, 10 Apr 2020 01:02:47 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 01:55:03 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 16:54:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 10 Apr 2020 16:54:55 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 04/16] mt76: adjust wcid size to support new 802.11ax
 generation
Date: Fri, 10 Apr 2020 16:54:41 +0800
Message-ID: <85bc522a5cd6239c03d249dfba88d4523e95178f.1586507878.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586507878.git.ryder.lee@mediatek.com>
References: <cover.1586507878.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 223F172043F60E650D16C8AA02142F0696146296BD88C483A8714D477CF3D0722000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_020254_683333_51FCF8C1 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: YF Luo <yf.luo@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, Sean
 Wang <sean.wang@mediatek.com>, Chih-Min Chen <chih-min.chen@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The newer 802.11ax devices (i.e. MT7915E) can connect to much more
peers than previous generations.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt76.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 8d27af61b62e..97882b9306a2 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -181,7 +181,7 @@ enum mt76_wcid_flags {
 	MT_WCID_FLAG_PS,
 };
 
-#define MT76_N_WCIDS 128
+#define MT76_N_WCIDS 288
 
 /* stored in ieee80211_tx_info::hw_queue */
 #define MT_TX_HW_QUEUE_EXT_PHY		BIT(3)
@@ -201,7 +201,7 @@ struct mt76_wcid {
 	struct ewma_signal rssi;
 	int inactive_count;
 
-	u8 idx;
+	u16 idx;
 	u8 hw_key_idx;
 
 	u8 sta:1;
@@ -268,7 +268,7 @@ struct mt76_rx_tid {
 
 struct mt76_tx_cb {
 	unsigned long jiffies;
-	u8 wcid;
+	u16 wcid;
 	u8 pktid;
 	u8 flags;
 };
@@ -441,7 +441,7 @@ struct mt76_mmio {
 struct mt76_rx_status {
 	union {
 		struct mt76_wcid *wcid;
-		u8 wcid_idx;
+		u16 wcid_idx;
 	};
 
 	unsigned long reorder_time;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
