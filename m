Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D4AB8D70
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Sep 2019 11:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qnoSb5XchUgmDA0LtTWgz4wfRDlMd6xQZxagEfvJf34=; b=nNm9ygJv0uuzjc
	qm0PBl3Uz8TwUKWvz8zd6cecwPmWH/EI3wRo5VojoqO27gEFyRp5hIcBHPcRtV0eVBdJhWNhgZz3P
	xc6it2VwfL+saIZDfJgm1jmFHQavdH1baVYl0ArwNUVlrk9xqkOj6cEDjTsHLkFW7yoNAery1pLXs
	a8hwfXnHtBK5mQ5Mz2J2AvTJp1NCaftSmu9LX12XU+OBm3c6yhvvh+zabOFjsINHHLDKDVzjBJtaz
	7KrnolYQkZgGllqMOIzLTqisa8s+3qbJ5cZthk/VOpoHm094X/EY1Gn1rguZT/uP6nKtAwbSaNABO
	RaDP0by+aI7fv8EjTwDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBEr7-0003Qb-1v; Fri, 20 Sep 2019 09:05:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBEr3-0003Ps-W7
 for linux-mediatek@lists.infradead.org; Fri, 20 Sep 2019 09:05:31 +0000
X-UUID: 237ccba4c89e4ceabd8fd74ba6fc911f-20190920
X-UUID: 237ccba4c89e4ceabd8fd74ba6fc911f-20190920
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1284436583; Fri, 20 Sep 2019 01:05:25 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Sep 2019 02:05:26 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 20 Sep 2019 17:05:24 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Fri, 20 Sep 2019 17:05:23 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, <dri-devel@lists.freedesktop.org>
Subject: [PATCH v7 5/5] drm/mediatek: config mipitx impedance with calibration
 data
Date: Fri, 20 Sep 2019 17:04:32 +0800
Message-ID: <20190920090432.3308-6-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190920090432.3308-1-jitao.shi@mediatek.com>
References: <20190920090432.3308-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: E1555B9150FE0CBC966DF8EC2076947C1CCB6C5CC9A6E569B07C02DCBC234FE42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_020530_040114_C8E59E5E 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com,
 stonea168@163.com, cawa.cheng@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, bibby.hsieh@mediatek.com,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Config mipitx impedance with calibration data to make sure their impedance
are 100ohm.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |  1 +
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 63 +++++++++++++++++++
 2 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
index eea44327fe9f..a1b6292145de 100644
--- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
+++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
@@ -28,6 +28,7 @@ struct mtk_mipi_tx {
 	void __iomem *regs;
 	u32 data_rate;
 	u32 mipitx_drive;
+	u32 rt_code[5];
 	const struct mtk_mipitx_data *driver_data;
 	struct clk_hw pll_hw;
 	struct clk *pll;
diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
index 5bda8355145f..9ca90dee095a 100644
--- a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
+++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
@@ -5,6 +5,8 @@
  */
 
 #include "mtk_mipi_tx.h"
+#include <linux/nvmem-consumer.h>
+#include <linux/slab.h>
 
 #define MIPITX_LANE_CON		0x000c
 #define RG_DSI_CPHY_T1DRV_EN		BIT(0)
@@ -28,6 +30,7 @@
 #define MIPITX_PLL_CON4	0x003c
 #define RG_DSI_PLL_IBIAS		(3 << 10)
 
+#define MIPITX_D2P_RTCODE	0x0100
 #define MIPITX_D2_SW_CTL_EN	0x0144
 #define MIPITX_D0_SW_CTL_EN	0x0244
 #define MIPITX_CK_CKMODE_EN	0x0328
@@ -108,6 +111,64 @@ static const struct clk_ops mtk_mipi_tx_pll_ops = {
 	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
 };
 
+static int mtk_mipi_tx_config_calibration_data(struct mtk_mipi_tx *mipi_tx)
+{
+	u32 *buf = NULL;
+	int i, j;
+	struct nvmem_cell *cell;
+	struct device *dev = mipi_tx->dev;
+	size_t len;
+
+	cell = nvmem_cell_get(dev, "calibration-data");
+	if (IS_ERR(cell)) {
+		dev_warn(dev, "nvmem_cell_get fail\n");
+		return -EINVAL;
+	}
+
+	buf = (u32 *)nvmem_cell_read(cell, &len);
+
+	nvmem_cell_put(cell);
+
+	if (IS_ERR(buf)) {
+		dev_warn(dev, "can't get data\n");
+		return -EINVAL;
+	}
+
+	if (len < 3 * sizeof(u32)) {
+		dev_warn(dev, "invalid calibration data\n");
+		kfree(buf);
+		return -EINVAL;
+	}
+
+	mipi_tx->rt_code[0] = ((buf[0] >> 6 & 0x1F) << 5) |
+			      (buf[0] >> 11 & 0x1F);
+	mipi_tx->rt_code[1] = ((buf[1] >> 27 & 0x1F) << 5) |
+			      (buf[0] >> 1 & 0x1F);
+	mipi_tx->rt_code[2] = ((buf[1] >> 17 & 0x1F) << 5) |
+			      (buf[1] >> 22 & 0x1F);
+	mipi_tx->rt_code[3] = ((buf[1] >> 7 & 0x1F) << 5) |
+			      (buf[1] >> 12 & 0x1F);
+	mipi_tx->rt_code[4] = ((buf[2] >> 27 & 0x1F) << 5) |
+			      (buf[1] >> 2 & 0x1F);
+
+	for (i = 0; i < 5; i++) {
+		if ((mipi_tx->rt_code[i] & 0x1F) == 0)
+			mipi_tx->rt_code[i] |= 0x10;
+
+		if ((mipi_tx->rt_code[i] >> 5 & 0x1F) == 0)
+			mipi_tx->rt_code[i] |= 0x10 << 5;
+
+		for (j = 0; j < 10; j++) {
+			mtk_mipi_tx_update_bits(mipi_tx,
+				MIPITX_D2P_RTCODE * (i + 1) + j * 4,
+				1, mipi_tx->rt_code[i] >> j & 1);
+		}
+	}
+
+	kfree(buf);
+	return 0;
+}
+
 static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 {
 	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
@@ -130,6 +191,8 @@ static void mtk_mipi_tx_power_on_signal(struct phy *phy)
 				RG_DSI_HSTX_LDO_REF_SEL,
 				mipi_tx->mipitx_drive << 6);
 
+	mtk_mipi_tx_config_calibration_data(mipi_tx);
+
 	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_CKMODE_EN, DSI_CK_CKMODE_EN);
 }
 
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
