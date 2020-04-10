Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81271A4422
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 11:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VKZBkJm0QE6eTL/32YUj5dkAN3eQ1aLscGaF1avh1Tk=; b=urJwCRGAnE4dz/
	JW4cRtuen+QdOyOE0pC52coki0W2lcxy77/9D9lokhWq5HO2paUqqb1ogViycVKxRHT2ySwcCPfnd
	LS3Hb2aTa6/emasOCjumOoqnHBIR7ciNJMGZvNqnNjYPIw6v284Bg1Tdyurg9xmuFEFsG512A8Rz3
	954gP7qBOPTgVbQTn60uYRu+JmpVMn7Hg0zyMX2rQO52J4kx9tUH4iukq/AZccia4EIQJ+GRylDxY
	6zhjnNU1xmw7/joHVYV/aQ7k9D+NxQiszy5l1pbH994h/TiUKxu85quFNNqTH/eAMlxKJsZmCtMoY
	98hAladFAzUpwWxD2KAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMpYt-0004ti-Rb; Fri, 10 Apr 2020 09:02:55 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMpYq-0004sI-El
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 09:02:53 +0000
X-UUID: 15866a25956740b1a53c2c3cea2962b5-20200410
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=R4UNxlS3PDE1UfNxbLRmAkrZkGkj9T94n61g04lPjas=; 
 b=twjdjrGYMzYI/8YB182adA6XoLx3ev+YLYxYczONoBr+ZjMCZizpxfKXJTERWcApqGpfMBkwSvalJ1SPGKmHX2yDRelqQ8nkydQ0coK91RphCVIUWOVeYFS8rayAzv6719Inu4UWY9sDGneSp0gKQ7BChRonMI+u/MlpAGDHEIU=;
X-UUID: 15866a25956740b1a53c2c3cea2962b5-20200410
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1883436679; Fri, 10 Apr 2020 01:02:47 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 01:55:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 10 Apr 2020 16:54:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 10 Apr 2020 16:54:54 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 03/16] mt76: add Rx stats support for radiotap
Date: Fri, 10 Apr 2020 16:54:40 +0800
Message-ID: <03f4b34864472f86aa5608fe08b4ca493e436140.1586507878.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1586507878.git.ryder.lee@mediatek.com>
References: <cover.1586507878.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_020252_502239_070AA34E 
X-CRM114-Status: UNSURE (   9.67  )
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

HE deivces need to add Rx radiotap header.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/agg-rx.c   |  4 ++--
 drivers/net/wireless/mediatek/mt76/mac80211.c |  6 +++---
 drivers/net/wireless/mediatek/mt76/mt76.h     | 19 +++++++++++++++++++
 3 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/agg-rx.c b/drivers/net/wireless/mediatek/mt76/agg-rx.c
index acdbe6f8248d..df25c00d9e06 100644
--- a/drivers/net/wireless/mediatek/mt76/agg-rx.c
+++ b/drivers/net/wireless/mediatek/mt76/agg-rx.c
@@ -119,7 +119,7 @@ static void
 mt76_rx_aggr_check_ctl(struct sk_buff *skb, struct sk_buff_head *frames)
 {
 	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
-	struct ieee80211_bar *bar = (struct ieee80211_bar *)skb->data;
+	struct ieee80211_bar *bar = mt76_skb_get_hdr(skb);
 	struct mt76_wcid *wcid = status->wcid;
 	struct mt76_rx_tid *tid;
 	u16 seqno;
@@ -147,7 +147,7 @@ mt76_rx_aggr_check_ctl(struct sk_buff *skb, struct sk_buff_head *frames)
 void mt76_rx_aggr_reorder(struct sk_buff *skb, struct sk_buff_head *frames)
 {
 	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
+	struct ieee80211_hdr *hdr = mt76_skb_get_hdr(skb);
 	struct mt76_wcid *wcid = status->wcid;
 	struct ieee80211_sta *sta;
 	struct mt76_rx_tid *tid;
diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index 5e795e849990..b76dee2c9632 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -727,7 +727,7 @@ mt76_check_ccmp_pn(struct sk_buff *skb)
 		 * Validate the first fragment both here and in mac80211
 		 * All further fragments will be validated by mac80211 only.
 		 */
-		hdr = (struct ieee80211_hdr *)skb->data;
+		hdr = mt76_skb_get_hdr(skb);
 		if (ieee80211_is_frag(hdr) &&
 		    !ieee80211_is_first_frag(hdr->frame_control))
 			return 0;
@@ -800,7 +800,7 @@ mt76_airtime_flush_ampdu(struct mt76_dev *dev)
 static void
 mt76_airtime_check(struct mt76_dev *dev, struct sk_buff *skb)
 {
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
+	struct ieee80211_hdr *hdr = mt76_skb_get_hdr(skb);
 	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
 	struct mt76_wcid *wcid = status->wcid;
 
@@ -837,7 +837,7 @@ static void
 mt76_check_sta(struct mt76_dev *dev, struct sk_buff *skb)
 {
 	struct mt76_rx_status *status = (struct mt76_rx_status *)skb->cb;
-	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
+	struct ieee80211_hdr *hdr = mt76_skb_get_hdr(skb);
 	struct ieee80211_sta *sta;
 	struct ieee80211_hw *hw;
 	struct mt76_wcid *wcid = status->wcid;
diff --git a/drivers/net/wireless/mediatek/mt76/mt76.h b/drivers/net/wireless/mediatek/mt76/mt76.h
index 4f99804ff902..8d27af61b62e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76.h
+++ b/drivers/net/wireless/mediatek/mt76/mt76.h
@@ -742,6 +742,25 @@ static inline struct mt76_tx_cb *mt76_tx_skb_cb(struct sk_buff *skb)
 	return ((void *)IEEE80211_SKB_CB(skb)->status.status_driver_data);
 }
 
+static inline void *mt76_skb_get_hdr(struct sk_buff *skb)
+{
+	struct mt76_rx_status mstat;
+	u8 *data = skb->data;
+
+	/* Alignment concerns */
+	BUILD_BUG_ON(sizeof(struct ieee80211_radiotap_he) % 4);
+	BUILD_BUG_ON(sizeof(struct ieee80211_radiotap_he_mu) % 4);
+
+	mstat = *((struct mt76_rx_status *)skb->cb);
+
+	if (mstat.flag & RX_FLAG_RADIOTAP_HE)
+		data += sizeof(struct ieee80211_radiotap_he);
+	if (mstat.flag & RX_FLAG_RADIOTAP_HE_MU)
+		data += sizeof(struct ieee80211_radiotap_he_mu);
+
+	return data;
+}
+
 static inline void mt76_insert_hdr_pad(struct sk_buff *skb)
 {
 	int len = ieee80211_get_hdrlen_from_skb(skb);
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
