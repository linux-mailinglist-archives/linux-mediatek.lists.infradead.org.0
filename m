Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798A7FADD
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 15:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q0dTu2GK3L5OG4IRdyf3GH+yeskSsRvjUJKOdHNDFjY=; b=LOoFpNS6nDmIud
	K/CZJTuD9gyip9SzaTzkedO8F6klw75T2NY3ybva5gbCAwhsX3iv4G46aDHxr2Y0CshVDUGIIdBDQ
	Ob5oACtri34dE4y/1voGtOe+9TZKo3+IHoPRRSyqU0oU+whfj3HcAcXZVJQh434PDpkiF0u+9M7l9
	xWVzTC7obSwNOx9yerz8Ke2I4CLxHjpKJWYAAc3jUH26q+9Mwm70xy4axPW1VrOGkLpefZvOY/HGh
	OKGt+K24HxMM7EOZCvtmH+vdc67RdKA53UYuk56ocLLy6X+7VtUtXlyrkie9qKMqdi/0UcL64guiT
	e6K3flJbUhKoXpToAIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTEy-0005A7-9c; Tue, 30 Apr 2019 13:56:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTEu-00059S-VW
 for linux-mediatek@lists.infradead.org; Tue, 30 Apr 2019 13:56:10 +0000
X-UUID: 304047efb41040e7ab18c10bfdd4c2c8-20190430
X-UUID: 304047efb41040e7ab18c10bfdd4c2c8-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2045003114; Tue, 30 Apr 2019 05:56:00 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 06:55:59 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 21:55:50 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 30 Apr 2019 21:55:50 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau
 <nbd@nbd.name>
Subject: [PATCH v3] mt76: add TX/RX antenna pattern capabilities
Date: Tue, 30 Apr 2019 21:55:38 +0800
Message-ID: <1e054441bab22ee28fdad597ca36d891500b4a66.1556624322.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 773063FDE1F70878361AFD26064A2C2E185522FBBD99B1D7194B6634151CC7CF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_065609_021525_473F8F20 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Announce antenna pattern cap to adapt PHY and baseband settings.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v3:
- Move these flags to common code.
Changes since v2:
- Add a prefix mt76 in the title.
---
 drivers/net/wireless/mediatek/mt76/mac80211.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mac80211.c b/drivers/net/wireless/mediatek/mt76/mac80211.c
index 851caabbecda..26a336ef86c5 100644
--- a/drivers/net/wireless/mediatek/mt76/mac80211.c
+++ b/drivers/net/wireless/mediatek/mt76/mac80211.c
@@ -214,6 +214,8 @@ mt76_init_sband(struct mt76_dev *dev, struct mt76_sband *msband,
 	vht_cap->cap |= IEEE80211_VHT_CAP_RXLDPC |
 			IEEE80211_VHT_CAP_RXSTBC_1 |
 			IEEE80211_VHT_CAP_SHORT_GI_80 |
+			IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN |
+			IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN |
 			(3 << IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_SHIFT);
 
 	return 0;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
