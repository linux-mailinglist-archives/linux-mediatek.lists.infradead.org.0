Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEB91A8D5B
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 23:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMuNiI3M/e4Lv623FMzVUq+D54qtzYHJ7hPrJynls7k=; b=pwV7fxT4PumdA/
	HaHjlQaRleU5zZ8WlG4IVYXrTjiwNAHXfxunLNNzwf4urWV7JGGqzMYZ9Blo006fDnS2d1WdQ2ku9
	7e6Q+e1xNVvwrTKrIZTWOyL+m5HudR/NiT1XAPRNZSJfMZWsdkxDhujQlesB59tGx5yvoDVo8inGX
	6hqeV31VkZOZbbQG6owdENMGMZvnBlGJtq0KS2R79Ugw7iJFGB4t2NJjLuRgKDaV3wd4N2TaMDCyG
	KMBHVTQm1rLuWwwm0F2Q53z8oRhmePD3s+kQzYy9/70Zbx5Vn7WPDLuMuX70wYtYQqI0T9o2UwGfI
	5/zQm4f6yV8AzKc7qWcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSqO-0005Jq-4R; Tue, 14 Apr 2020 21:11:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSqJ-0005Gb-76
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 21:11:40 +0000
X-UUID: 000799f2d6564dce80966f4a4477c97e-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Q0KuVQkH3OPUeMZiYOYmpsxrkYmoMi9sq3Xu3C/T3Nw=; 
 b=Q/iYAna526RwW8VCvS0SWjR3VPuOlA7FF4akz4gM559ZG2PLafkrkPpQmgdULPK3O/6PjDIVLrpnCD7ZzVPOMamvJFWSQ13VzC7hQ++YtaMs4mnsOLyA+z4AgqH/O/fmLmFV+3vLkrVQQqODMUA3GuxzGXRSvB3u/TQy2/+qk9I=;
X-UUID: 000799f2d6564dce80966f4a4477c97e-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 254404758; Tue, 14 Apr 2020 13:11:35 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 14:01:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 05:01:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 05:01:23 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 07/18] mt76: mt7915: enable Rx HE rate reporting
Date: Wed, 15 Apr 2020 05:01:05 +0800
Message-ID: <b24ee1958c7da0b2cdb336dd0e60259dfde59e28.1586895593.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586895593.git.ryder.lee@mediatek.com>
References: <cover.1586895593.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_141139_256375_02F914BB 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YF Luo <yf.luo@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless@vger.kernel.org, Sean
 Wang <sean.wang@mediatek.com>, Chih-Min Chen <chih-min.chen@mediatek.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Enable HE rate reporting in Rx path

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7915/init.c  |  2 ++
 .../net/wireless/mediatek/mt76/mt7915/mac.c   | 27 +++++++++++++++++--
 .../net/wireless/mediatek/mt76/mt7915/mac.h   |  2 ++
 .../net/wireless/mediatek/mt76/mt7915/regs.h  |  1 +
 4 files changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/init.c b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
index fb596afdf0be..f9384e1dab74 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/init.c
@@ -43,6 +43,8 @@ static void mt7915_mac_init(struct mt7915_dev *dev)
 
 	mt76_rmw_field(dev, MT_DMA_DCR0, MT_DMA_DCR0_MAX_RX_LEN, 1536);
 	mt76_rmw_field(dev, MT_MDP_DCR1, MT_MDP_DCR1_MAX_RX_LEN, 1536);
+	/* enable rx rate report */
+	mt76_set(dev, MT_DMA_DCR0, MT_DMA_DCR0_RXD_G5_EN);
 	/* disable hardware de-agg */
 	mt76_clear(dev, MT_MDP_DCR0, MT_MDP_DCR0_DAMSDU_EN);
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.c b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
index b7fed642865c..511a6d2e8dd1 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
@@ -347,6 +347,22 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 				if (i > 9)
 					return -EINVAL;
 				break;
+			case MT_PHY_TYPE_HE_MU:
+				/* fall through */
+			case MT_PHY_TYPE_HE_SU:
+			case MT_PHY_TYPE_HE_EXT_SU:
+			case MT_PHY_TYPE_HE_TB:
+				status->nss =
+					FIELD_GET(MT_PRXV_NSTS, rxv.v[0]) + 1;
+				status->encoding = RX_ENC_HE;
+				i &= GENMASK(3, 0);
+
+				if (gi <= NL80211_RATE_INFO_HE_GI_3_2)
+					status->he_gi = gi;
+
+				if (idx & MT_PRXV_TX_DCM)
+					status->he_dcm = true;
+				break;
 			default:
 				return -EINVAL;
 			}
@@ -356,7 +372,14 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 			case IEEE80211_STA_RX_BW_20:
 				break;
 			case IEEE80211_STA_RX_BW_40:
-				status->bw = RATE_INFO_BW_40;
+				if (rxv.phy & MT_PHY_TYPE_HE_EXT_SU &&
+				    (idx & MT_PRXV_TX_ER_SU_106T)) {
+					status->bw = RATE_INFO_BW_HE_RU;
+					status->he_ru =
+						NL80211_RATE_INFO_HE_RU_ALLOC_106;
+				} else {
+					status->bw = RATE_INFO_BW_40;
+				}
 				break;
 			case IEEE80211_STA_RX_BW_80:
 				status->bw = RATE_INFO_BW_80;
@@ -369,7 +392,7 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 			}
 
 			status->enc_flags |= RX_ENC_FLAG_STBC_MASK * stbc;
-			if (gi)
+			if (rxv.phy < MT_PHY_TYPE_HE_SU && gi)
 				status->enc_flags |= RX_ENC_FLAG_SHORT_GI;
 		}
 	}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.h b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
index 7da7551f98e4..712753484aee 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
@@ -97,6 +97,8 @@ enum rx_pkt_type {
 
 /* P-RXV */
 #define MT_PRXV_TX_RATE			GENMASK(6, 0)
+#define MT_PRXV_TX_DCM			BIT(4)
+#define MT_PRXV_TX_ER_SU_106T		BIT(5)
 #define MT_PRXV_NSTS			GENMASK(9, 7)
 #define MT_PRXV_HT_AD_CODE		BIT(11)
 #define MT_PRXV_RCPI3			GENMASK(31, 24)
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
index ef87579056fe..572bdc16fb2d 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/regs.h
@@ -73,6 +73,7 @@
 
 #define MT_DMA_DCR0			MT_WF_DMA(0x000)
 #define MT_DMA_DCR0_MAX_RX_LEN		GENMASK(15, 3)
+#define MT_DMA_DCR0_RXD_G5_EN		BIT(23)
 
 /* MIB: band 0(0x24800), band 1(0xa4800) */
 #define MT_WF_MIB_BASE(_band)		((_band) ? 0xa4800 : 0x24800)
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
