Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E2C16FB9A
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 10:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJFYPaRLcNHZRatZt9oalQoeWkBgMe7vOsie2qOVfUM=; b=X8dmlkajfFs9be
	kqNeedfUBdhFo6h3SbcOyj8T1GZTwd17KZCxYiF9IpxqXdPtr+YEFApbE7WI49ZeWPXy8ZY1EHv/k
	G+C1EwUctz/EeG9HFbSWIGlGBU02Av4/VeQNUS7NY3uk/ytsAS9ZdeAtBbfWDT+X+pelcTGgKjSph
	CSG6NWYrkSECzre63qvU+mK2TDC8DGO+04Oh2yl1TJVep7Ez29H5pFvFS2ZVutyxsczf/S8LRIixd
	jiLGYUXqW/sZl+CtrHPeD7Wju4WWq7pJzYUef5epNQbi2wQlfmT2YWAELgnDbQ0FumRaxpC+tFqyv
	ZoOLaXuGJpWu/tL/etJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpU1f-0005AJ-7e; Mon, 22 Jul 2019 08:50:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpU1Y-00058r-Pk
 for linux-mediatek@lists.infradead.org; Mon, 22 Jul 2019 08:50:26 +0000
X-UUID: e67196f7ab944e99bf72772f62570b63-20190722
X-UUID: e67196f7ab944e99bf72772f62570b63-20190722
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1979935816; Mon, 22 Jul 2019 00:50:19 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 01:50:18 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 16:50:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 22 Jul 2019 16:50:10 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 2/2] mt76: mt7615: update cw_min/max related settings
Date: Mon, 22 Jul 2019 16:50:09 +0800
Message-ID: <dd1438cdf392409179ea82bb2f32e8fcbf074057.1563779728.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <f5c814ad88a8d959376fc77930531582eedf1a63.1563779728.git.ryder.lee@mediatek.com>
References: <f5c814ad88a8d959376fc77930531582eedf1a63.1563779728.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1614E78AC7BB478B9D7593A764A2A4CFE08A5FE6E9043D679098553EAAF0811B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_015024_837908_4D3E8DE2 
X-CRM114-Status: UNSURE (   7.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add default values of cw_min/max and use fls() for configuration.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
Changes since v1:
- Restore each WMM_* bit and add WMM_PARAM_SET.
- Use fls().
---
 .../net/wireless/mediatek/mt76/mt7615/mcu.c    | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 5fd162be3654..3563ddf17aad 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -626,6 +626,8 @@ int mt7615_mcu_set_wmm(struct mt7615_dev *dev, u8 queue,
 #define WMM_CW_MIN_SET	BIT(1)
 #define WMM_CW_MAX_SET	BIT(2)
 #define WMM_TXOP_SET	BIT(3)
+#define WMM_PARAM_SET	(WMM_AIFS_SET | WMM_CW_MIN_SET | \
+			 WMM_CW_MAX_SET | WMM_TXOP_SET)
 	struct req_data {
 		u8 number;
 		u8 rsv[3];
@@ -638,19 +640,17 @@ int mt7615_mcu_set_wmm(struct mt7615_dev *dev, u8 queue,
 	} __packed req = {
 		.number = 1,
 		.queue = queue,
-		.valid = WMM_AIFS_SET | WMM_TXOP_SET,
+		.valid = WMM_PARAM_SET,
 		.aifs = params->aifs,
+		.cw_min = 5,
+		.cw_max = cpu_to_le16(10),
 		.txop = cpu_to_le16(params->txop),
 	};
 
-	if (params->cw_min) {
-		req.valid |= WMM_CW_MIN_SET;
-		req.cw_min = params->cw_min;
-	}
-	if (params->cw_max) {
-		req.valid |= WMM_CW_MAX_SET;
-		req.cw_max = cpu_to_le16(params->cw_max);
-	}
+	if (params->cw_min)
+		req.cw_min = fls(params->cw_min);
+	if (params->cw_max)
+		req.cw_max = cpu_to_le16(fls(params->cw_max));
 
 	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_EDCA_UPDATE,
 				   &req, sizeof(req), true);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
