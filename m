Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0373E167A51
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Feb 2020 11:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z2ZD9XT6vMLj0+1zGC7r5N9bV/ThMiqO1e92ze/tNaE=; b=iGvVZtuo5J5GY3
	m9asIHg4Hn2h/QaVMsXHJIh+iIlVzEgAJrcrg2mSkoo2TxNfY66LAWeBQfzzzgMhf2wDMm0REkqqV
	mlCAYFJeJIeu7/dICTXwGuJ1zFS/ENQOQbNjq18MXU/WM0Qiu/WWlQDgpbomqo8GtHeikmFI+Dyo6
	kqZH/RIFEIxchVJ5sO+13rCkvey0db+uE/6ddKDvZoJztkXP0QYkEoinfa4cq2aq/D+aP1x3sHbVT
	pm2GKeVzgDYPNRrLk3S/TOzs5i5umlw7pdSvjAW0+jgOhYZHZ2HL6MrVIU7wCaGiflpvssat0MXcI
	jrmOlEI1Rm/Kk0HIMn7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55IS-0002lA-0N; Fri, 21 Feb 2020 10:12:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55IH-0002ZI-87; Fri, 21 Feb 2020 10:12:27 +0000
X-UUID: d108fce1bb0b4c51bea8b30284ed8a7d-20200221
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=lyh07rORdyEMmH4qVkXFosUAcAB4Aohej6iysxVm6AY=; 
 b=I/K0Eo3yIdLIjhdxotOb9BGrSwYqn2Iv4pnbb45EkzC32qY2Tre/MG09jdSRHDgoASTSjP5A/qyFu7fVt5Tw8s00kHSoF2TapNMTawGG4JZknPboIU4CmY7TmXKjkj+eFmaDL4m5DLXEL+DkYtrlh2dWpccX4ijwgRFCM9vgZKc=;
X-UUID: d108fce1bb0b4c51bea8b30284ed8a7d-20200221
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1918266739; Fri, 21 Feb 2020 02:12:21 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 02:12:47 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 18:13:16 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 18:11:53 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, mtk01761
 <wendell.lin@mediatek.com>, Fabien Parent <fparent@baylibre.com>, Weiyi Lu
 <weiyi.lu@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, Sean Wang
 <Sean.Wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, Owen Chen
 <owen.chen@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, "Evan
 Green" <evgreen@chromium.org>, Yong Wu <yong.wu@mediatek.com>, Joerg Roedel
 <jroedel@suse.de>, Shawn Guo <shawnguo@kernel.org>, Marc Zyngier
 <marc.zyngier@arm.com>, Ryder Lee <Ryder.Lee@mediatek.com>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-clk@vger.kernel.org>
Subject: [PATCH v8 2/4] soc: mediatek: add MT6765 scpsys and subdomain support
Date: Fri, 21 Feb 2020 18:12:07 +0800
Message-ID: <1582279929-11535-3-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1582279929-11535-1-git-send-email-macpaul.lin@mediatek.com>
References: <1582279929-11535-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_021225_500716_B42F39D7 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Mars Cheng <mars.cheng@mediatek.com>

This adds scpsys support for MT6765
Add subdomain support for MT6765:
isp, mm, connsys, mfg, and cam.

Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
Signed-off-by: Owen Chen <owen.chen@mediatek.com>
Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c |  130 +++++++++++++++++++++++++++++++++++++
 1 file changed, 130 insertions(+)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index f669d37..9940c6d 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -15,6 +15,7 @@
 
 #include <dt-bindings/power/mt2701-power.h>
 #include <dt-bindings/power/mt2712-power.h>
+#include <dt-bindings/power/mt6765-power.h>
 #include <dt-bindings/power/mt6797-power.h>
 #include <dt-bindings/power/mt7622-power.h>
 #include <dt-bindings/power/mt7623a-power.h>
@@ -750,6 +751,120 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 };
 
 /*
+ * MT6765 power domain support
+ */
+#define SPM_PWR_STATUS_MT6765			0x0180
+#define SPM_PWR_STATUS_2ND_MT6765		0x0184
+
+static const struct scp_domain_data scp_domain_data_mt6765[] = {
+	[MT6765_POWER_DOMAIN_VCODEC] = {
+		.name = "vcodec",
+		.sta_mask = BIT(26),
+		.ctl_offs = 0x300,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+	},
+	[MT6765_POWER_DOMAIN_ISP] = {
+		.name = "isp",
+		.sta_mask = BIT(5),
+		.ctl_offs = 0x308,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.subsys_clk_prefix = "isp",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
+				BIT(20), BIT(20)),
+			BUS_PROT(SMI_TYPE, 0x3C4, 0x3C8, 0, 0x3C0,
+				BIT(2), BIT(2)),
+		},
+	},
+	[MT6765_POWER_DOMAIN_MM] = {
+		.name = "mm",
+		.sta_mask = BIT(3),
+		.ctl_offs = 0x30C,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.basic_clk_id = {"mm"},
+		.subsys_clk_prefix = "mm",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
+				BIT(16) | BIT(17), BIT(16) | BIT(17)),
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(10) | BIT(11), BIT(10) | BIT(11)),
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(1) | BIT(2), BIT(1) | BIT(2)),
+		},
+	},
+	[MT6765_POWER_DOMAIN_CONN] = {
+		.name = "conn",
+		.sta_mask = BIT(1),
+		.ctl_offs = 0x32C,
+		.sram_pdn_bits = 0,
+		.sram_pdn_ack_bits = 0,
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(13), BIT(13)),
+			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
+				BIT(18), BIT(18)),
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(14) | BIT(16), BIT(14) | BIT(16)),
+		},
+	},
+	[MT6765_POWER_DOMAIN_MFG_ASYNC] = {
+		.name = "mfg_async",
+		.sta_mask = BIT(23),
+		.ctl_offs = 0x334,
+		.sram_pdn_bits = 0,
+		.sram_pdn_ack_bits = 0,
+		.basic_clk_id = {"mfg"},
+	},
+	[MT6765_POWER_DOMAIN_MFG] = {
+		.name = "mfg",
+		.sta_mask = BIT(4),
+		.ctl_offs = 0x338,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(25), BIT(25)),
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(21) | BIT(22), BIT(21) | BIT(22)),
+		}
+	},
+	[MT6765_POWER_DOMAIN_CAM] = {
+		.name = "cam",
+		.sta_mask = BIT(25),
+		.ctl_offs = 0x344,
+		.sram_pdn_bits = GENMASK(8, 9),
+		.sram_pdn_ack_bits = GENMASK(12, 13),
+		.subsys_clk_prefix = "cam",
+		.bp_table = {
+			BUS_PROT(IFR_TYPE, 0x2A8, 0x2AC, 0, 0x258,
+				BIT(19) | BIT(21), BIT(19) | BIT(21)),
+			BUS_PROT(IFR_TYPE, 0x2A0, 0x2A4, 0, 0x228,
+				BIT(20), BIT(20)),
+			BUS_PROT(SMI_TYPE, 0x3C4, 0x3C8, 0, 0x3C0,
+				BIT(3), BIT(3)),
+		}
+	},
+	[MT6765_POWER_DOMAIN_MFG_CORE0] = {
+		.name = "mfg_core0",
+		.sta_mask = BIT(7),
+		.ctl_offs = 0x34C,
+		.sram_pdn_bits = GENMASK(8, 8),
+		.sram_pdn_ack_bits = GENMASK(12, 12),
+	},
+};
+
+static const struct scp_subdomain scp_subdomain_mt6765[] = {
+	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_CAM},
+	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_ISP},
+	{MT6765_POWER_DOMAIN_MM, MT6765_POWER_DOMAIN_VCODEC},
+	{MT6765_POWER_DOMAIN_MFG_ASYNC, MT6765_POWER_DOMAIN_MFG},
+	{MT6765_POWER_DOMAIN_MFG, MT6765_POWER_DOMAIN_MFG_CORE0},
+};
+
+/*
  * MT6797 power domain support
  */
 
@@ -1032,6 +1147,18 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 	.bus_prot_reg_update = false,
 };
 
+static const struct scp_soc_data mt6765_data = {
+	.domains = scp_domain_data_mt6765,
+	.num_domains = ARRAY_SIZE(scp_domain_data_mt6765),
+	.subdomains = scp_subdomain_mt6765,
+	.num_subdomains = ARRAY_SIZE(scp_subdomain_mt6765),
+	.regs = {
+		.pwr_sta_offs = SPM_PWR_STATUS_MT6765,
+		.pwr_sta2nd_offs = SPM_PWR_STATUS_2ND_MT6765,
+	},
+	.bus_prot_reg_update = true,
+};
+
 static const struct scp_soc_data mt6797_data = {
 	.domains = scp_domain_data_mt6797,
 	.num_domains = ARRAY_SIZE(scp_domain_data_mt6797),
@@ -1088,6 +1215,9 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.compatible = "mediatek,mt2712-scpsys",
 		.data = &mt2712_data,
 	}, {
+		.compatible = "mediatek,mt6765-scpsys",
+		.data = &mt6765_data,
+	}, {
 		.compatible = "mediatek,mt6797-scpsys",
 		.data = &mt6797_data,
 	}, {
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
