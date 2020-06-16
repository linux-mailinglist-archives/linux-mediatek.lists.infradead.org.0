Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82581FB14D
	for <lists+linux-mediatek@lfdr.de>; Tue, 16 Jun 2020 14:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/QDAPm+M+prTExB8Z0/Ugdg2W9hcoIDJphq3U4738Q=; b=R0auwFEI+yqHBX
	4VoelNvEX88+qYKU2tdcx6Hh9XbGSYsrGnWisXtlXEEE4b8oMM0IEGzcghQJmshsmh/6JHdBLZDAx
	5gxLNcvOdHVoFsayAnRa6ruOSuNdY9LNRzpfbS/e/LGZPEv+m3GhFIMIIvNqYNpOjtTMLZY7qZ5wi
	uAzFlOHuZOC+lUcbF3K4DiDHSYuc9uawQPKlDo46j8yu+5jvdwTvr8LZUv673COP/xOvJLq9NODb6
	tsX1RUMXB5AQ7KfCSdtQDEpssQx8D5yjagcBsHCLs0Ph61JEbJkB1b4zd26FzHehdVbGagQOaM4Gz
	KQV5W03+EO5gfF1OEemw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlB9S-0005Cw-NO; Tue, 16 Jun 2020 12:57:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlB9E-0004yO-3N
 for linux-mediatek@lists.infradead.org; Tue, 16 Jun 2020 12:57:06 +0000
X-UUID: b0c39a04d95a43bda17ad42a4aae2da8-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=EHgc6usT4G4/hgz5NXvICcMpwnoY3iXu64idsp5U1Jk=; 
 b=EIYB4/3vD7Ztr5GShYgQpCfwCH/+CrO1rW9aHe5l6dMI3WaPyvksPVPAGC1qhy2K4Z/h/+uGsGgR17DPOXrG10dqQXnzhIdqJtG+hJGvf+wPqFjNPl3C1uyjOOpB35tlCTaWKUgQArzBOUIvDTGPwmS/zt+8Eq63z3vU9NGWUcE=;
X-UUID: b0c39a04d95a43bda17ad42a4aae2da8-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <shayne.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2118819590; Tue, 16 Jun 2020 04:56:49 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 05:47:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:46:59 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 16 Jun 2020 20:46:58 +0800
From: Shayne Chen <shayne.chen@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>
Subject: [PATCH 3/4] mt76: mt7915: add support for DT rate power limits
Date: Tue, 16 Jun 2020 20:46:12 +0800
Message-ID: <279b29408c742c4b043e7af11217dcd5eeb7b8c2.1592276165.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <9ae2b6233284b60206e3513f7bf2eb03d2fbd724.1592276165.git.ryder.lee@mediatek.com>
References: <9ae2b6233284b60206e3513f7bf2eb03d2fbd724.1592276165.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 24678ACB82BEA57D358342FF229A7D0922D92586A8DF5F8F21FBBA311760836D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_055704_152161_74476E0F 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Evelyn Tsai <evelyn.tsai@mediatek.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-mediatek <linux-mediatek@lists.infradead.org>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add support to limit per-rate max txpower from DT.

Tested-by: Evelyn Tsai <evelyn.tsai@mediatek.com>
Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
---
 .../wireless/mediatek/mt76/mt7915/eeprom.h    |  2 +-
 .../net/wireless/mediatek/mt76/mt7915/mcu.c   | 38 +++++++++++++++++--
 2 files changed, 35 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
index 4e31d6ab4fa6..284de8b4e0a4 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/eeprom.h
@@ -120,6 +120,6 @@ mt7915_tssi_enabled(struct mt7915_dev *dev, enum nl80211_band band)
 		return eep[MT_EE_WIFI_CONF + 7] & MT_EE_WIFI_CONF_TSSI0_2G;
 }
 
-extern const struct sku_group mt7915_sku_groups[];
+extern const struct sku_group mt7915_sku_groups[MAX_SKU_RATE_GROUP_NUM];
 
 #endif
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index 349163d0b7f2..c5e9893cbd87 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -3171,15 +3171,45 @@ int mt7915_mcu_set_sku(struct mt7915_phy *phy)
 		.format_id = 4,
 		.dbdc_idx = phy != &dev->phy,
 	};
-	int i;
-	s8 *delta;
+	struct mt76_power_limits limits_array;
+	s8 *delta, *la = (s8 *)&limits_array;
+	int i, idx;
 
 	delta = dev->rate_power[mphy->chandef.chan->band];
 	mphy->txpower_cur = hw->conf.power_level * 2 +
 			    delta[MT7915_SKU_MAX_DELTA_IDX];
 
-	for (i = 0; i < MT7915_SKU_RATE_NUM; i++)
-		req.val[i] = hw->conf.power_level * 2 + delta[i];
+	mt76_get_rate_power_limits(mphy, mphy->chandef.chan,
+				   &limits_array, mphy->txpower_cur);
+
+	for (i = 0, idx = 0; i < ARRAY_SIZE(mt7915_sku_groups); i++) {
+		const struct sku_group *sku = &mt7915_sku_groups[i];
+		u32 offset = sku->offset[mphy->chandef.chan->band];
+		u8 mcs_num = sku->len;
+		int j;
+
+		if (i >= SKU_HT_BW20 && i <= SKU_VHT_BW160) {
+			mcs_num = 10;
+
+			if (i == SKU_HT_BW20 || i == SKU_VHT_BW20)
+				la = (s8 *)&limits_array + 12;
+		}
+
+		if (!offset) {
+			idx += sku->len;
+			la += mcs_num;
+			continue;
+		}
+
+		for (j = 0; j < min_t(u8, mcs_num, sku->len); j++) {
+			s8 rate_power;
+
+			rate_power = hw->conf.power_level * 2 + delta[idx + j];
+			req.val[idx + j] = min_t(s8, la[j], rate_power);
+		}
+		la += mcs_num;
+		idx += sku->len;
+	}
 
 	return __mt76_mcu_send_msg(&dev->mt76,
 				   MCU_EXT_CMD_TX_POWER_FEATURE_CTRL,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
