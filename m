Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8AE6143F19
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 Jan 2020 15:14:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oztSQh0f/SZot7mAWkGvs11CPuiiUh9ymy6qcRopMYU=; b=rOliaFZ9/iIUIr
	pc59EzhawM27ulz18eDUw4PGkxzz84A02VPs5B+Gl1+9RQM90VbwHBgp/HTgOQmz83+B4OINUjUs+
	/Ywdunxe0U9ls5nUXLeg0aVk0JV+urejV3nme6+wJITWTYvBAWFrvaxvZpMpSieJH9TZghKIIRsKW
	sMo1CMsoq+Kfn4EEBIl2vnirU7c9tRV/xACIbc5g1gpVMwK+PMqz/qB1O/zmRyh5IflzEBmHO5Zbb
	p4UwOYC4YehOhR7d1uolK0hcWJnFcdvveI3cUjkz9FXS53HDBCTshWUYRtW0XzZVDutTK95i4tzgl
	so/ogKxrJwHpSo2F3Nlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ituIB-0004oo-4F; Tue, 21 Jan 2020 14:14:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ituI6-0004mh-2V
 for linux-mediatek@lists.infradead.org; Tue, 21 Jan 2020 14:14:06 +0000
X-UUID: 63b817b954cc4534a889da3a532e0a0a-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=gd37oZ0axLyEI/QyrcT0vJ08dR3b4hQAx7SsmCJF/Ng=; 
 b=gAYYfkaWEs65P/sTUUp6XFA8C1Ua62PPmFNawiG2zov4mkfqCdhmSBHrLr0PKnZldOqjOgNlXSibKE9LeA8mQA7EkZ+ZG2wwYv17gycOojfLisIUyzSVW/DrGcCTazyNT0hSXFxXX0oODUuqKJTyF5sB6+YoYhH10WQzk7lcaA0=;
X-UUID: 63b817b954cc4534a889da3a532e0a0a-20200121
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 448160651; Tue, 21 Jan 2020 06:13:57 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 06:14:55 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 22:14:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 Jan 2020 22:13:32 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 7/7] mt76: mt7615: switch mt7615_mcu_set_rx_ba to new MCU
 format
Date: Tue, 21 Jan 2020 22:13:42 +0800
Message-ID: <157c7f251ab1b436c18815cca3423360e0eec07c.1579237414.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <ae72dd289f8a26a2c0f42de1f940bb8b6d1f2c29.1579237414.git.ryder.lee@mediatek.com>
References: <ae72dd289f8a26a2c0f42de1f940bb8b6d1f2c29.1579237414.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_061402_115816_27DE134A 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

To adapt new firmware version.

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
Tested-by: Shayne Chen <shayne.chen@mediatek.com>
---
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 62 ++++++++++---------
 1 file changed, 34 insertions(+), 28 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 73e4406dbf5a..d3bb96756889 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -1640,29 +1640,11 @@ int mt7615_mcu_set_rx_ba(struct mt7615_dev *dev,
 {
 	struct mt7615_sta *msta = (struct mt7615_sta *)params->sta->drv_priv;
 	struct mt7615_vif *mvif = msta->vif;
-	struct {
-		struct wtbl_req_hdr hdr;
-		struct wtbl_ba ba;
-	} wtbl_req = {
-		.hdr = {
-			.wlan_idx = msta->wcid.idx,
-			.operation = WTBL_SET,
-			.tlv_num = cpu_to_le16(1),
-		},
-		.ba = {
-			.tag = cpu_to_le16(WTBL_BA),
-			.len = cpu_to_le16(sizeof(struct wtbl_ba)),
-			.tid = params->tid,
-			.ba_type = MT_BA_TYPE_RECIPIENT,
-			.rst_ba_tid = params->tid,
-			.rst_ba_sel = RST_BA_MAC_TID_MATCH,
-			.rst_ba_sb = 1,
-		},
-	};
 	struct {
 		struct sta_req_hdr hdr;
 		struct sta_rec_ba ba;
-	} sta_req = {
+		u8 buf[MT7615_WTBL_UPDATE_MAX_SIZE];
+	} __packed req = {
 		.hdr = {
 			.bss_idx = mvif->idx,
 			.wlan_idx = msta->wcid.idx,
@@ -1681,17 +1663,41 @@ int mt7615_mcu_set_rx_ba(struct mt7615_dev *dev,
 			.winsize = cpu_to_le16(params->buf_size),
 		},
 	};
-	int ret;
+	struct sta_rec_wtbl *wtbl = NULL;
+	struct wtbl_req_hdr *wtbl_hdr;
+	struct wtbl_ba *wtbl_ba;
+	u8 *buf = req.buf;
 
-	memcpy(wtbl_req.ba.peer_addr, params->sta->addr, ETH_ALEN);
+	if (dev->fw_ver > MT7615_FIRMWARE_V1) {
+		req.hdr.tlv_num = cpu_to_le16(2);
+		wtbl = (struct sta_rec_wtbl *)buf;
+		wtbl->tag = cpu_to_le16(STA_REC_WTBL);
+		buf += sizeof(*wtbl);
+	}
 
-	ret = __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_STA_REC_UPDATE,
-				  &sta_req, sizeof(sta_req), true);
-	if (ret || !add)
-		return ret;
+	wtbl_hdr = (struct wtbl_req_hdr *)buf;
+	buf += sizeof(*wtbl_hdr);
+	wtbl_hdr->wlan_idx = msta->wcid.idx;
+	wtbl_hdr->operation = WTBL_SET;
+	wtbl_hdr->tlv_num = cpu_to_le16(1);
 
-	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
-				   &wtbl_req, sizeof(wtbl_req), true);
+	wtbl_ba = (struct wtbl_ba *)buf;
+	buf += sizeof(*wtbl_ba);
+	wtbl_ba->tag = cpu_to_le16(WTBL_BA);
+	wtbl_ba->len = cpu_to_le16(sizeof(*wtbl_ba));
+	wtbl_ba->tid = params->tid;
+	wtbl_ba->ba_type = MT_BA_TYPE_RECIPIENT;
+	wtbl_ba->rst_ba_tid = params->tid;
+	wtbl_ba->rst_ba_sel = RST_BA_MAC_TID_MATCH;
+	wtbl_ba->rst_ba_sb = 1;
+
+	memcpy(wtbl_ba->peer_addr, params->sta->addr, ETH_ALEN);
+
+	if (wtbl)
+		wtbl->len = cpu_to_le16(buf - (u8 *)wtbl_hdr);
+
+	return mt7615_mcu_send_sta_rec(dev, (u8 *)&req, (u8 *)wtbl_hdr,
+				       buf - (u8 *)wtbl_hdr, add);
 }
 
 int mt7615_mcu_get_temperature(struct mt7615_dev *dev, int index)
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
