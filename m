Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3750133BD1
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 07:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zx3AB2S6iFWxaEu/l2JYvflwXgWGyydiXi8kJDFDCCw=; b=BJQxNEyXbl3UKm
	B7glfkxJTAgL6Jisk4QevbP2FIBYDiZ7wxTtx4yNSd+MJV+DvhNOZfspy9QBZnZoUkGRjA7pmqg46
	fuNYwdDa0/wDWbnDbHwB/YWOwFN0BahBogUf4LqzLI3MXR5+16NnE6VS7VVBbvExbUtv0fsoSvroZ
	QRC3XVzKbXRvcghn6W9bSvUEvNajCx/J/Q3wNNpo8lB9gZbqZzLeDZCni8VEqA7EcT5o0gxrEKxwG
	8cy6LacrgRNMNHlxKgl7OA5AenRI5+tN9UOcwltuqrIO2uoHzZgEXEtDiL4aqfvTINrmM+T5Fe6FR
	c5m+a3r4LlVIC31u63BA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip52S-0001jm-7L; Wed, 08 Jan 2020 06:41:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip52A-0001UK-SF; Wed, 08 Jan 2020 06:41:40 +0000
X-UUID: 17092bf543f249b9a746744bfb47856e-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Z3p+k5fRT+BgS94lsRRnQ42u+9SyIJjnxvp8DEGY2wI=; 
 b=Kj983nIH50JXPYYO9CPajTw96+fhWe0bybGmZYALIjeicwaQPHFllb+PcgcsKTVNGmFf/JFSSz3ntVkhwrSy/gTnKBybZ8TO9mkXqYFHdkV9DZ0mzn04mU7aGOvTXkYrN69qvP8ElJR5FIKsWFpCzpL0NK86mtDr5MdUzzpa7b4=;
X-UUID: 17092bf543f249b9a746744bfb47856e-20200107
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1987193946; Tue, 07 Jan 2020 22:41:35 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 22:42:08 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 14:41:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 Jan 2020 14:39:59 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 2/3] memory: mtk-smi: Add basic support for MT6779
Date: Wed, 8 Jan 2020 14:41:30 +0800
Message-ID: <1578465691-30692-4-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_224138_916609_AF4402B2 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Ming-Fan
 Chen <ming-fan.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add smi-larb and smi-common nodes and config_port for MT6779.

changelog since v2:
Split basic nodes and config_port support from initial golden setting patch

Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
---
 drivers/memory/mtk-smi.c |   22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 439d7d8..d0b747a 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -239,6 +239,13 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
 };
 
+static const struct mtk_smi_larb_gen mtk_smi_larb_mt6779 = {
+	.config_port  = mtk_smi_larb_config_port_gen2_general,
+	.larb_direct_to_common_mask =
+		BIT(4) | BIT(6) | BIT(11) | BIT(12) | BIT(13),
+		/* DUMMY | IPU0 | IPU1 | CCU | MDLA */
+};
+
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt8183 = {
 	.has_gals                   = true,
 	.config_port                = mtk_smi_larb_config_port_gen2_general,
@@ -260,6 +267,10 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 		.data = &mtk_smi_larb_mt2712
 	},
 	{
+		.compatible = "mediatek,mt6779-smi-larb",
+		.data = &mtk_smi_larb_mt6779
+	},
+	{
 		.compatible = "mediatek,mt8183-smi-larb",
 		.data = &mtk_smi_larb_mt8183
 	},
@@ -386,6 +397,13 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 	.gen = MTK_SMI_GEN2,
 };
 
+static const struct mtk_smi_common_plat mtk_smi_common_mt6779 = {
+	.gen		= MTK_SMI_GEN2,
+	.has_gals	= true,
+	.bus_sel	= F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
+			  F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
+};
+
 static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
 	.gen      = MTK_SMI_GEN2,
 	.has_gals = true,
@@ -407,6 +425,10 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 		.data = &mtk_smi_common_gen2,
 	},
 	{
+		.compatible = "mediatek,mt6779-smi-common",
+		.data = &mtk_smi_common_mt6779,
+	},
+	{
 		.compatible = "mediatek,mt8183-smi-common",
 		.data = &mtk_smi_common_mt8183,
 	},
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
