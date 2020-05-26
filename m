Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A2C1DE3C3
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 12:12:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMpxnXBimx7eTuTuL00gtse6rpa7XVcpIDc4RsR2Bbo=; b=jQPqawlhhzPbD+
	oaUTg5/ES69QFHh8ByrJLO0ybnLUp0dZfQHfotuZb62ucccqL8xLVjyskUgm5U4oaDCDv9+3Nyifq
	71CWRXRrz9p8BpmewqlBm1xWDIoMk84/1GNSMrdLxuZMrXbXQUNjFD3XMhtG4FujONRjkkv/BpoPI
	7jPRD09PfJJ/W5hHxpLbaUgDhV0RsVS7Ax8O7q9CxyxX2rS+Gn1Wkau0r9jhxnTKUXkYvWpYRANvR
	K/2lZSTnnEBIsQ3FTkRoIYvcGogzwvqYDdJ3yS0/KJei+QzM2UXSVUewa1EkzOnjmgYMa7LNn3Z7b
	s0dgxGrAsjfWSr4A1eHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc4fS-0001nu-BP; Fri, 22 May 2020 10:12:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc4fN-0001mo-Dm; Fri, 22 May 2020 10:12:39 +0000
X-UUID: a65e8a05f9ca48d389df16ec1f4df47a-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=6VbmeS/yrB1shYHBD+b0ArTurRXYrmNDPa81/IwQ/tI=; 
 b=rORpKnmyumfflCfytKRhmTVJuOy37KS2lD8cDOBpUqY+wnPY2vyfA2ykKfT5mf2A+X1gqZnpTFpVToJy2FBBiKVq2Zo71jMj/70kcdFcwmol6zDWei2libtTVIoeHsKl3/oiu96t94bSBQVHcgHCQU2Xcm9n3I3Tzx7Ep5jP0lw=;
X-UUID: a65e8a05f9ca48d389df16ec1f4df47a-20200522
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1930359089; Fri, 22 May 2020 02:12:22 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 22 May 2020 03:12:29 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 22 May 2020 18:12:25 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1497.2 via Frontend Transport; Fri, 22 May 2020 18:12:24 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/mediatek: dsi: fix scrolling of panel with small hfp or
 hbp
Date: Fri, 22 May 2020 18:12:25 +0800
Message-ID: <20200522101225.62571-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9EFD99E22082E0674480556A643F1BD34B12751A45F5F49297FAC1342418AC822000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_031237_465874_B43E60A6 
X-CRM114-Status: UNSURE (   8.44  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

If panel has too small hfp or hbp, horizontal_frontporch_byte or
horizontal_backporch_byte may become very small value or negative
value. This patch adjusts their values so that they are greater
than minimum value and keep total of them unchanged.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 0ede69830a9d..aebaafd90ceb 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -148,6 +148,9 @@
 	(type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
 	(type == MIPI_DSI_DCS_READ))
 
+#define MIN_HFP_BYTE		0x02
+#define MIN_HBP_BYTE		0x02
+
 struct mtk_phy_timing {
 	u32 lpx;
 	u32 da_hs_prepare;
@@ -450,6 +453,7 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	u32 horizontal_sync_active_byte;
 	u32 horizontal_backporch_byte;
 	u32 horizontal_frontporch_byte;
+	s32 signed_hfp_byte, signed_hbp_byte;
 	u32 dsi_tmp_buf_bpp, data_phy_cycles;
 	struct mtk_phy_timing *timing = &dsi->phy_timing;
 
@@ -519,6 +523,20 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 		}
 	}
 
+	signed_hfp_byte = (s32)horizontal_frontporch_byte;
+	signed_hbp_byte = (s32)horizontal_backporch_byte;
+
+	if (signed_hfp_byte + signed_hbp_byte < MIN_HFP_BYTE + MIN_HBP_BYTE) {
+		DRM_WARN("Calculated hfp_byte and hbp_byte are too small, "
+			 "panel may not work properly.\n");
+	} else if (signed_hfp_byte < MIN_HFP_BYTE) {
+		horizontal_frontporch_byte = MIN_HFP_BYTE;
+		horizontal_backporch_byte -= MIN_HFP_BYTE - signed_hfp_byte;
+	} else if (signed_hbp_byte < MIN_HBP_BYTE) {
+		horizontal_frontporch_byte -= MIN_HBP_BYTE - signed_hbp_byte;
+		horizontal_backporch_byte = MIN_HBP_BYTE;
+	}
+
 	writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
 	writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
 	writel(horizontal_frontporch_byte, dsi->regs + DSI_HFP_WC);
-- 
2.25.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
