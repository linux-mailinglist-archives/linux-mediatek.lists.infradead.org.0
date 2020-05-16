Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104BC1D5FDC
	for <lists+linux-mediatek@lfdr.de>; Sat, 16 May 2020 11:05:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mRfFTy9KoF6tRD4bMrbU6mAthDzNffLGXuCF8bhOjao=; b=Ll7MZioTET6gNU
	aoYlWceCDVn1ZFEuMseKHJ2AqddTI1GCrxRd8j9FBch4Lx1HiTnTINcp9OtcVa6x9k44+58hSb4fH
	uG7RPmWRRDAUOHkWWjvvGSD+Qa+2/3lmutKE1hU7u7h6o0+EUhL2svnt+DPzRC8LWMgizS0A3EYUx
	bjR0vFla5LOgnlxvYXEh3FvV1o12zeEF78GXFs0f1W7LsalShnbc7vjYoDMww9hwVySD9F3jXkA/x
	aaXxkX5wMmgtAhqhlrABQBUNTIvCD0EMLR4J84pE9yLNUA965Elz0IbdhiKr/dFLmLJ01kTPXfX4I
	V7ggXtubHh6SrGpDaWkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZslE-0005Id-RF; Sat, 16 May 2020 09:05:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZslC-0005Ha-Eg
 for linux-mediatek@lists.infradead.org; Sat, 16 May 2020 09:05:35 +0000
X-UUID: 5cab18fd68284f149dfcb3e64fa0bcea-20200516
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=URhBg4iwpLNmGiEViy9OZtcCU3PfdFl2K8XTBaEHd50=; 
 b=WSBMjWvhsJy7MZiUv1+1tyhqREgsEEl+lcMMhbAZuaWagX4s/oU/nKnd1FQLM5BtMExeVgLZWP8PcxC4c4THpuQNrtMtWRog/lCBOkw2ZBzuV6oDRP+RgZ4aYigKJwbrES1JBXZ5uE0c76zoLsmdrjikQo6KB3K/dyrRso9VldY=;
X-UUID: 5cab18fd68284f149dfcb3e64fa0bcea-20200516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1793570996; Sat, 16 May 2020 01:05:33 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 16 May 2020 02:05:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 16 May 2020 17:05:20 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 16 May 2020 17:05:19 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 1/2] mt76: mt7915: fix some sparse warnings
Date: Sat, 16 May 2020 17:05:18 +0800
Message-ID: <828924b331eb9524f851d0fb233904a45219b25d.1589619627.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: B3065C127174FA7B057436D113CA35D79116B575A965D933B756D9CA975C11D12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_020534_536385_33339E75 
X-CRM114-Status: UNSURE (   8.61  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>,
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This fixes the following sparse warning:

drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:253:16: sparse: sparse: mixing different enum types:
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:253:16: sparse:    unsigned int enum mt7915_txq_id
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:253:16: sparse:    unsigned int enum mt76_txq_id
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:758:63: sparse: sparse: incorrect type in argument 2 (different address spaces)
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:758:63: sparse:    expected unsigned char const [usertype] *ies
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:758:63: sparse:    got unsigned char const [noderef] <asn:4> *
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1390:23: sparse: sparse: incorrect type in argument 1 (different base types)
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1390:23: sparse:    expected unsigned int w
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1390:23: sparse:    got restricted __le32 [usertype] supp_ht_mcs
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1390:23: sparse: sparse: restricted __le32 degrades to integer
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1429:60: sparse: sparse: bad assignment (>>=) to restricted __le16
drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:1773:16: sparse: sparse: restricted __le32 degrades to integer

Fixes: 6094f86fb371 ("mt76: mt7915: add HE bss_conf support for interfaces")
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
index f00ad2b66761..6d4808b13a40 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
@@ -220,7 +220,7 @@ static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
 {
 	struct mt7915_mcu_txd *mcu_txd;
 	u8 seq, pkt_fmt, qidx;
-	enum mt7915_txq_id txq;
+	enum mt76_txq_id txq;
 	__le32 *txd;
 	u32 val;
 
@@ -815,8 +815,7 @@ static void mt7915_check_he_obss_narrow_bw_ru_iter(struct wiphy *wiphy,
 	struct mt7915_he_obss_narrow_bw_ru_data *data = _data;
 	const struct element *elem;
 
-	elem = cfg80211_find_elem(WLAN_EID_EXT_CAPABILITY, bss->ies->data,
-				  bss->ies->len);
+	elem = ieee80211_bss_get_elem(bss, WLAN_EID_EXT_CAPABILITY);
 
 	if (!elem || elem->datalen < 10 ||
 	    !(elem->data[10] &
@@ -1954,7 +1953,7 @@ mt7915_mcu_sta_rate_ctrl_tlv(struct sk_buff *skb, struct mt7915_dev *dev,
 
 		ra->supp_ht_mcs = *(__le32 *)ra->ht_mcs;
 		ra->supp_mode |= MODE_HT;
-		mcs = hweight32(ra->supp_ht_mcs) - 1;
+		mcs = hweight32(le32_to_cpu(ra->supp_ht_mcs)) - 1;
 		ra->af = sta->ht_cap.ampdu_factor;
 		ra->ht_gf = !!(sta->ht_cap.cap & IEEE80211_HT_CAP_GRN_FLD);
 
@@ -1972,7 +1971,7 @@ mt7915_mcu_sta_rate_ctrl_tlv(struct sk_buff *skb, struct mt7915_dev *dev,
 	}
 
 	if (sta->vht_cap.vht_supported) {
-		__le16 mcs_map = sta->vht_cap.vht_mcs.rx_mcs_map;
+		u16 mcs_map = le16_to_cpu(sta->vht_cap.vht_mcs.rx_mcs_map);
 		u16 vht_mcs;
 		u8 af, mcs_prev;
 
@@ -2399,7 +2398,7 @@ static int mt7915_mcu_init_download(struct mt7915_dev *dev, u32 addr,
 	};
 	int attr;
 
-	if (req.addr == MCU_PATCH_ADDRESS)
+	if (req.addr == cpu_to_le32(MCU_PATCH_ADDRESS))
 		attr = -MCU_CMD_PATCH_START_REQ;
 	else
 		attr = -MCU_CMD_TARGET_ADDRESS_LEN_REQ;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
