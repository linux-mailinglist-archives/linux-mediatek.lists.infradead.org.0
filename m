Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 628BB1A8D5C
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 23:11:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ySpcpDfMRk3MqImD44BNSzt4z7Gh0kg8gk6JfIbFYFo=; b=AafWdhtGKVDCa+
	bAbdFCGl/wNyQPlrgy6nNU1UrVNZLGxrQ0ieK+fSQpFx10hQutvmP20UCwZrRabvKqkLbrFuF3Kzu
	RBfXyd2lzOySXGKuabyhV/aC1BZnmT5eF2iEEQrFuf+brGEtfLO+zeWTtP6YvajTMQHUOwAuqsBVX
	li8F5qMfovUhiGIniKfr3Z/EgjUOv5O3Vas9ONRugAh5XCwSpnyiG14biqpyerQzAt19HPvawcdqJ
	20HVC/hxzZpWKyMmaptfZSS5jeE2LhYImmqOA9kCDL5byFlbbPYTd5dvWZJmu6md1Lgp2sidre20l
	WlaeY4sDxc0mYK3adFtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSqP-0005Lb-4M; Tue, 14 Apr 2020 21:11:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOSqJ-0005GL-Tq
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 21:11:41 +0000
X-UUID: aba30dc91654414ba7ab6e8ccf2e37f5-20200414
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=mSGpAGM49/jBq7DcTtS4TX909nmcMPSQojWT8RF6fPI=; 
 b=mn3hLkeBefx3wahd7Lfuspf4y05Eif3TEOXtNzQjUX1VgsJA3vPeMCNypambl141Yzmwa4cl/DcoUtZkyKOFGSSXcKlcqp6Rlm1AcjLZZIrSngWL8xbzaf/XRg7LGB8iSJ2QYze7efwrQgVnVFwiQj6nWyrvbHa7dYcjbQftCSY=;
X-UUID: aba30dc91654414ba7ab6e8ccf2e37f5-20200414
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1423444325; Tue, 14 Apr 2020 13:11:35 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 14 Apr 2020 14:01:33 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 05:01:33 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 05:01:32 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v2 12/18] mt76: mt7915: add Rx radiotap header support
Date: Wed, 15 Apr 2020 05:01:10 +0800
Message-ID: <6234fc31b88a3e58b255b776748bf9fff9f46cae.1586895593.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586895593.git.ryder.lee@mediatek.com>
References: <cover.1586895593.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_141139_968925_FFDCD185 
X-CRM114-Status: UNSURE (   9.58  )
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

mac80211 expects the definition of what HE rate info is available
inside astruct prepended to the skb.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7915/mac.c   | 141 ++++++++++++++++++
 .../net/wireless/mediatek/mt76/mt7915/mac.h   |  16 ++
 2 files changed, 157 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.c b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
index 511a6d2e8dd1..fa92b0a3a464 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.c
@@ -9,6 +9,10 @@
 
 #define to_rssi(field, rxv)	((FIELD_GET(field, rxv) - 220) / 2)
 
+#define HE_BITS(f)		cpu_to_le16(IEEE80211_RADIOTAP_HE_##f)
+#define HE_PREP(f, m, v)	le16_encode_bits(le32_get_bits(v, MT_CRXV_HE_##m),\
+						 IEEE80211_RADIOTAP_HE_##f)
+
 static const struct mt7915_dfs_radar_spec etsi_radar_specs = {
 	.pulse_th = { 110, -10, -80, 40, 5200, 128, 5200 },
 	.radar_pattern = {
@@ -172,6 +176,138 @@ void mt7915_mac_sta_poll(struct mt7915_dev *dev)
 	rcu_read_unlock();
 }
 
+static void
+mt7915_mac_decode_he_radiotap_ru(struct mt76_rx_status *status,
+				 struct mt7915_rxv *rxv,
+				 struct ieee80211_radiotap_he *he)
+{
+	u32 ru_h, ru_l;
+	u8 ru, offs = 0;
+
+	ru_l = FIELD_GET(MT_PRXV_HE_RU_ALLOC_L, le32_to_cpu(rxv->v[0]));
+	ru_h = FIELD_GET(MT_PRXV_HE_RU_ALLOC_H, le32_to_cpu(rxv->v[1]));
+	ru = (u8)(ru_l | ru_h << 4);
+
+	status->bw = RATE_INFO_BW_HE_RU;
+
+	switch (ru) {
+	case 0 ... 36:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_26;
+		offs = ru;
+		break;
+	case 37 ... 52:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_52;
+		offs = ru - 37;
+		break;
+	case 53 ... 60:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_106;
+		offs = ru - 53;
+		break;
+	case 61 ... 64:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_242;
+		offs = ru - 61;
+		break;
+	case 65 ... 66:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_484;
+		offs = ru - 65;
+		break;
+	case 67:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_996;
+		break;
+	case 68:
+		status->he_ru = NL80211_RATE_INFO_HE_RU_ALLOC_2x996;
+		break;
+	}
+
+	he->data1 |= HE_BITS(DATA1_BW_RU_ALLOC_KNOWN);
+	he->data2 |= HE_BITS(DATA2_RU_OFFSET_KNOWN) |
+		     le16_encode_bits(offs,
+				      IEEE80211_RADIOTAP_HE_DATA2_RU_OFFSET);
+}
+
+static void
+mt7915_mac_decode_he_radiotap(struct sk_buff *skb,
+			      struct mt76_rx_status *status,
+			      struct mt7915_rxv *rxv)
+{
+	/* TODO: struct ieee80211_radiotap_he_mu */
+	static const struct ieee80211_radiotap_he known = {
+		.data1 = HE_BITS(DATA1_DATA_MCS_KNOWN) |
+			 HE_BITS(DATA1_DATA_DCM_KNOWN) |
+			 HE_BITS(DATA1_STBC_KNOWN) |
+			 HE_BITS(DATA1_CODING_KNOWN),
+		.data2 = HE_BITS(DATA2_GI_KNOWN) |
+			 HE_BITS(DATA2_TXBF_KNOWN),
+	};
+	struct ieee80211_radiotap_he *he = NULL;
+	__le32 v2 = rxv->v[2];
+	__le32 v11 = rxv->v[11];
+	__le32 v14 = rxv->v[14];
+	u32 ltf_size = le32_get_bits(v2, MT_CRXV_HE_LTF_SIZE) + 1;
+
+	he = skb_push(skb, sizeof(known));
+	memcpy(he, &known, sizeof(known));
+
+	he->data1 = HE_BITS(DATA1_LDPC_XSYMSEG_KNOWN) |
+		    HE_BITS(DATA1_DOPPLER_KNOWN) |
+		    HE_BITS(DATA1_BSS_COLOR_KNOWN);
+	he->data2 = HE_BITS(DATA2_PE_DISAMBIG_KNOWN) |
+		    HE_BITS(DATA2_TXOP_KNOWN);
+
+	he->data3 = HE_PREP(DATA3_BSS_COLOR, BSS_COLOR, v14) |
+		    HE_PREP(DATA3_LDPC_XSYMSEG, LDPC_EXT_SYM, v2);
+	he->data5 = HE_PREP(DATA5_PE_DISAMBIG, PE_DISAMBIG, v2) |
+		    le16_encode_bits(ltf_size,
+				     IEEE80211_RADIOTAP_HE_DATA5_LTF_SIZE);
+	he->data6 = HE_PREP(DATA6_TXOP, TXOP_DUR, v14) |
+		    HE_PREP(DATA6_DOPPLER, DOPPLER, v14);
+
+	switch (rxv->phy) {
+	case MT_PHY_TYPE_HE_SU:
+		he->data1 |= HE_BITS(DATA1_FORMAT_SU) |
+			     HE_BITS(DATA1_UL_DL_KNOWN) |
+			     HE_BITS(DATA1_BEAM_CHANGE_KNOWN) |
+			     HE_BITS(DATA1_SPTL_REUSE_KNOWN);
+
+		he->data3 |= HE_PREP(DATA3_BEAM_CHANGE, BEAM_CHNG, v14) |
+			     HE_PREP(DATA3_UL_DL, UPLINK, v2);
+		he->data4 |= HE_PREP(DATA4_SU_MU_SPTL_REUSE, SR_MASK, v11);
+		break;
+	case MT_PHY_TYPE_HE_EXT_SU:
+		he->data1 |= HE_BITS(DATA1_FORMAT_EXT_SU) |
+			     HE_BITS(DATA1_UL_DL_KNOWN);
+
+		he->data3 |= HE_PREP(DATA3_UL_DL, UPLINK, v2);
+		break;
+	case MT_PHY_TYPE_HE_MU:
+		he->data1 |= HE_BITS(DATA1_FORMAT_MU) |
+			     HE_BITS(DATA1_UL_DL_KNOWN) |
+			     HE_BITS(DATA1_SPTL_REUSE_KNOWN);
+
+		he->data3 |= HE_PREP(DATA3_UL_DL, UPLINK, v2);
+		he->data4 |= HE_PREP(DATA4_SU_MU_SPTL_REUSE, SR_MASK, v11);
+
+		mt7915_mac_decode_he_radiotap_ru(status, rxv, he);
+		break;
+	case MT_PHY_TYPE_HE_TB:
+		he->data1 |= HE_BITS(DATA1_FORMAT_TRIG) |
+			     HE_BITS(DATA1_SPTL_REUSE_KNOWN) |
+			     HE_BITS(DATA1_SPTL_REUSE2_KNOWN) |
+			     HE_BITS(DATA1_SPTL_REUSE3_KNOWN) |
+			     HE_BITS(DATA1_SPTL_REUSE4_KNOWN);
+
+		he->data4 = HE_PREP(DATA4_TB_SPTL_REUSE1, SR_MASK, v11) |
+			    HE_PREP(DATA4_TB_SPTL_REUSE2, SR1_MASK, v11) |
+			    HE_PREP(DATA4_TB_SPTL_REUSE3, SR2_MASK, v11) |
+			    HE_PREP(DATA4_TB_SPTL_REUSE4, SR3_MASK, v11);
+
+		mt7915_mac_decode_he_radiotap_ru(status, rxv, he);
+		break;
+	default:
+		break;
+	}
+}
+
 int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 {
 	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
@@ -348,6 +484,7 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 					return -EINVAL;
 				break;
 			case MT_PHY_TYPE_HE_MU:
+				status->flag |= RX_FLAG_RADIOTAP_HE_MU;
 				/* fall through */
 			case MT_PHY_TYPE_HE_SU:
 			case MT_PHY_TYPE_HE_EXT_SU:
@@ -355,6 +492,7 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 				status->nss =
 					FIELD_GET(MT_PRXV_NSTS, rxv.v[0]) + 1;
 				status->encoding = RX_ENC_HE;
+				status->flag |= RX_FLAG_RADIOTAP_HE;
 				i &= GENMASK(3, 0);
 
 				if (gi <= NL80211_RATE_INFO_HE_GI_3_2)
@@ -405,6 +543,9 @@ int mt7915_mac_fill_rx(struct mt7915_dev *dev, struct sk_buff *skb)
 		mt76_insert_ccmp_hdr(skb, key_id);
 	}
 
+	if (status->flag & RX_FLAG_RADIOTAP_HE)
+		mt7915_mac_decode_he_radiotap(skb, status, &rxv);
+
 	hdr = mt76_skb_get_hdr(skb);
 	if (!status->wcid || !ieee80211_is_data_qos(hdr->frame_control))
 		return 0;
diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mac.h b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
index 712753484aee..b9bc8b25b031 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mac.h
@@ -101,6 +101,8 @@ enum rx_pkt_type {
 #define MT_PRXV_TX_ER_SU_106T		BIT(5)
 #define MT_PRXV_NSTS			GENMASK(9, 7)
 #define MT_PRXV_HT_AD_CODE		BIT(11)
+#define MT_PRXV_HE_RU_ALLOC_L		GENMASK(31, 28)
+#define MT_PRXV_HE_RU_ALLOC_H		GENMASK(3, 0)
 #define MT_PRXV_RCPI3			GENMASK(31, 24)
 #define MT_PRXV_RCPI2			GENMASK(23, 16)
 #define MT_PRXV_RCPI1			GENMASK(15, 8)
@@ -111,6 +113,20 @@ enum rx_pkt_type {
 #define MT_CRXV_TX_MODE			GENMASK(7, 4)
 #define MT_CRXV_FRAME_MODE		GENMASK(10, 8)
 #define MT_CRXV_HT_SHORT_GI		GENMASK(14, 13)
+#define MT_CRXV_HE_LTF_SIZE		GENMASK(18, 17)
+#define MT_CRXV_HE_LDPC_EXT_SYM		BIT(20)
+#define MT_CRXV_HE_PE_DISAMBIG		BIT(23)
+#define MT_CRXV_HE_UPLINK		BIT(31)
+
+#define MT_CRXV_HE_SR_MASK		GENMASK(11, 8)
+#define MT_CRXV_HE_SR1_MASK		GENMASK(16, 12)
+#define MT_CRXV_HE_SR2_MASK             GENMASK(20, 17)
+#define MT_CRXV_HE_SR3_MASK             GENMASK(24, 21)
+
+#define MT_CRXV_HE_BSS_COLOR		GENMASK(5, 0)
+#define MT_CRXV_HE_TXOP_DUR		GENMASK(12, 6)
+#define MT_CRXV_HE_BEAM_CHNG		BIT(13)
+#define MT_CRXV_HE_DOPPLER		BIT(16)
 
 struct mt7915_rxv {
 	u32 phy;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
