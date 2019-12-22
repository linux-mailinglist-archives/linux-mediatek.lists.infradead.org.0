Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A8E128FC5
	for <lists+linux-mediatek@lfdr.de>; Sun, 22 Dec 2019 21:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IsAOt5Elbfnc2GyszC64+dDSfSau5enslF2dN0J+mQc=; b=lEsSQlYGDJBzVM
	ci7PjAUuZLMk7owW+FvgrTytAwXnBC2WhYplwCHLiX9kPBSN9E3UtJTfpx2G+WwVASitmQY3Zv+cw
	TVaJ7bKS1gKBh3eOFTcg5bnWLaCQCJJjSempMi1JJOVGIYkNoRZhEZQD/EKF8PkuWhWw0Q0Gv2l41
	bRDWGqSc1fSLf8/RS0vxsGcaf3SRmBUW2ChS2RfjX3QxWsm3ashByvGDLBVtDV/b9Se6/nCXl0c4N
	DqXQ1grp/y1Jv/BgW1HF0BOiNcRMeh3DfAOGB2zCLlfWLenl+SQmySRKagMCo1JwvIjYuH/dOE6e2
	hR9sidoU0yUUfYe9503w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij7Zx-0004gG-SC; Sun, 22 Dec 2019 20:11:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij7Zu-0004fm-5D
 for linux-mediatek@lists.infradead.org; Sun, 22 Dec 2019 20:11:51 +0000
X-UUID: d2ceded4a1f94edab6b4c8075a903d5d-20191222
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=qwrFGFIz+QsHDpFfg3vjjA8jTU7ruwsFDOyFkQxVOwo=; 
 b=bzTw2yw941u9Nzbn5yuYqxASkgRNgRI/W3IeD9jmyrZg2p4G0OKlIF0JP7Y4JTDI5zykliDVIILIxr0Z0TgbBEx3A5atyubypUag0ey1JttcJlJDjKCPAw2HxxH9G07jzeFjm4uwhaRJQzViawytVLMscVg5AIKwzJOy+wtRSAI=;
X-UUID: d2ceded4a1f94edab6b4c8075a903d5d-20191222
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2013363086; Sun, 22 Dec 2019 12:11:45 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Dec 2019 12:12:05 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Dec 2019 04:11:42 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 23 Dec 2019 04:10:52 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 2/2] mt76: mt7615: add set_antenna callback
Date: Mon, 23 Dec 2019 04:11:39 +0800
Message-ID: <965287b3917a6cb0cfd2acbf91dbbd0b9db9b085.1577044827.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <9a37e1340cc8c546587d7cf99d6c4d92e12e1a7d.1577044827.git.ryder.lee@mediatek.com>
References: <9a37e1340cc8c546587d7cf99d6c4d92e12e1a7d.1577044827.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8FD17A3244B10A2B92653ADE44844F4B5FF4EAB66C010A873F8A6619B11B88FE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_121150_206546_4A6EA631 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org, Shayne
 Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add a set_antenna callback to setup per phy tx/rx streams.

Signed-off-by: Shayne Chen <shayne.chen@mediatek.com>
Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v1:
- remove unnecessary call regard to antenna settings.
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 90c4e785a1a3..5b83528f77a0 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -637,6 +637,32 @@ mt7615_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
 	mt7615_mac_set_timing(phy);
 }
 
+static int
+mt7615_set_antenna(struct ieee80211_hw *hw, u32 tx_ant, u32 rx_ant)
+{
+	struct mt7615_dev *dev = mt7615_hw_dev(hw);
+	struct mt7615_phy *phy = mt7615_hw_phy(hw);
+	int max_nss = hweight8(hw->wiphy->available_antennas_tx);
+	bool ext_phy = phy != &dev->phy;
+
+	if (!tx_ant || tx_ant != rx_ant || ffs(tx_ant) > max_nss)
+		return -EINVAL;
+
+	if ((BIT(hweight8(tx_ant)) - 1) != tx_ant)
+		tx_ant = BIT(ffs(tx_ant) - 1) - 1;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	phy->mt76->antenna_mask = tx_ant;
+	phy->chainmask = ext_phy ? tx_ant << 2 : tx_ant;
+
+	mt76_set_stream_caps(&dev->mt76, true);
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	return 0;
+}
+
 const struct ieee80211_ops mt7615_ops = {
 	.tx = mt7615_tx,
 	.start = mt7615_start,
@@ -661,5 +687,6 @@ const struct ieee80211_ops mt7615_ops = {
 	.channel_switch_beacon = mt7615_channel_switch_beacon,
 	.get_survey = mt76_get_survey,
 	.get_antenna = mt76_get_antenna,
+	.set_antenna = mt7615_set_antenna,
 	.set_coverage_class = mt7615_set_coverage_class,
 };
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
