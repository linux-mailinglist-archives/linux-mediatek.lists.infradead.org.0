Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFB112B362
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 10:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wRfVFKqQZ/iTMjRUhvJIXWjF4k+fA4LtdE7oykw32TY=; b=TVLkSme9hBjb8O
	+gctLs9tvqQJSI+/qWY35TZm220Ok2Buw3Bs5Ce3O3QeG/1ye3wIDSwqE+0qwNmzwn8pUwV0X1PmQ
	8bZbPzgrFpCb5k2X81ZlFBMt4xI+d+DRIPPcuuDOGxuVKBxL+m9ToKUIAyQhg/0WUBrvPvGhX6Zrz
	LXWNKYH8l3z4T8sFCOIjz96F0uZR6zasm8qWfwA8QK7a3f8ZbPs1Rx9I69XqK860PRSTNbG8DqoWY
	H6Qh1ub+AEekjKF7CdB1COxlCK3c9KcHdVPxRL85J41O/WgeszpGLiBaTMdWoFEbDjs8gkAtnFvVs
	30i9Oszw7rFbNFTi+C1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iklTu-0003Vi-Mq; Fri, 27 Dec 2019 09:00:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iklTq-0003To-Uz
 for linux-mediatek@lists.infradead.org; Fri, 27 Dec 2019 09:00:24 +0000
X-UUID: d174825f0dfa4113b6c1a7f4f1612f06-20191227
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=wEhcdasdHQ1MGhAkqC1Xmfme5mB/fjPet8BYixdocfA=; 
 b=gf199f6bKVJ5sWpu492I1pG7HvVn+n2IhvJprXRKjltbUxFjHkMTuMzv+2CIqDw33vtnINwrFX7eyUwxNMTWf9NoHmqNcmX5J0njA/3S1iRriYhniN7Ij5a1xsow6HzJU5WInhxYVeXXAwKnp4Lc3Mm/cakH72QMkLMW1uJtx6w=;
X-UUID: d174825f0dfa4113b6c1a7f4f1612f06-20191227
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 148212720; Fri, 27 Dec 2019 01:00:19 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 01:00:28 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 17:00:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Dec 2019 16:59:59 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 1/3] mt76: mt7615: report TSF information
Date: Fri, 27 Dec 2019 17:00:07 +0800
Message-ID: <7d450f0c4fec3c7242804e47f9bce13255e7f28d.1577411732.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_010022_998672_73C7CC9C 
X-CRM114-Status: UNSURE (   5.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds a .get_tsf() callback to report TSF time.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7615/main.c  | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
index 2a85859da754..0efd8065812c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
@@ -628,6 +628,26 @@ mt7615_sta_remove(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
 			  IEEE80211_STA_NOTEXIST);
 }
 
+static u64
+mt7615_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
+{
+	struct mt7615_dev *dev = mt7615_hw_dev(hw);
+	union {
+		u64 qword;
+		u32 dword[2];
+	} tsf;
+
+	mutex_lock(&dev->mt76.mutex);
+
+	mt76_set(dev, MT_LPON_T0CR, MT_LPON_T0CR_MODE); /* TSF read */
+	tsf.dword[0] = mt76_rr(dev, MT_LPON_UTTR0);
+	tsf.dword[1] = mt76_rr(dev, MT_LPON_UTTR1);
+
+	mutex_unlock(&dev->mt76.mutex);
+
+	return tsf.qword;
+}
+
 static void
 mt7615_set_coverage_class(struct ieee80211_hw *hw, s16 coverage_class)
 {
@@ -659,6 +679,7 @@ const struct ieee80211_ops mt7615_ops = {
 	.release_buffered_frames = mt76_release_buffered_frames,
 	.get_txpower = mt76_get_txpower,
 	.channel_switch_beacon = mt7615_channel_switch_beacon,
+	.get_tsf = mt7615_get_tsf,
 	.get_survey = mt76_get_survey,
 	.get_antenna = mt76_get_antenna,
 	.set_coverage_class = mt7615_set_coverage_class,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
