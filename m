Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FD418C82F
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Mar 2020 08:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3xyvn2vcLnaqgR5dd/xY0Yibitk4qymaQ3npzkIfaFM=; b=j1RVsHTImnLSY1
	Vd+Cx7VMnd6PRZm/SdCpTRHpJfrd73SyrVUCkWMPpz09w3vpHEX3wTepRxqvPFt40Scczs13hdEg4
	yLMl82cdBBDY2RwUmFSUGS2FEVbUECEvvwXNIKsjJPh1cFUl/3UPOfmZlKkNBetns6HaaR7nPL1Ir
	PGJ5gK2zV9r6pKOVnpmN7amJDx5PEaKsxhmC8dN/mC+eC+KoZeIjp6HsCkCKeLVb4aoWQlrjFzaXs
	VRm8/UjUlsr7HGZUWdNgTxjxXq47fbIKfBuAcUL+LaHh2ciQ5PhzbcLWPGLIuOA81nO3tezyx4vIg
	JMumbxfsHuvFhw7VQIfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFC9s-0003oE-FX; Fri, 20 Mar 2020 07:33:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFC8w-0002xb-4F; Fri, 20 Mar 2020 07:32:36 +0000
X-UUID: b4e6fc60ab6148faa596a06238efed3f-20200319
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=b/9SCg5wU2s1Z+MAC5zxmgWYrp56DgOTEgyNEcNT7J8=; 
 b=QaqZJhJ99rbGYeDp+8ZfzfdtGjWPm6iqMWKZJ47zpkJQTWMtxFFIFaV/u1cQFvk9qEmaqeKlM9W+lyHQ9JM6Pq8KNmaAQ+JKe8HrMZFEwTtpwCFWRYExW7hzYJhWtKnWs3FLu6VX5jO7DpuX3S+MhjAT8X7Ucj9DjhTb/fA/y3A=;
X-UUID: b4e6fc60ab6148faa596a06238efed3f-20200319
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 867492047; Thu, 19 Mar 2020 23:32:28 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Mar 2020 00:33:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 20 Mar 2020 15:31:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 20 Mar 2020 15:29:19 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Nicolas Boichat
 <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>, Sascha Hauer
 <kernel@pengutronix.de>
Subject: [PATCH v13 03/11] soc: mediatek: Add basic_clk_name to scp_power_data
Date: Fri, 20 Mar 2020 15:32:12 +0800
Message-ID: <1584689540-5227-4-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
References: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_003234_181899_4A87947C 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Try to stop extending the clk_id or clk_names if there are
more and more new BASIC clocks. To get its own clocks by the
basic_clk_name of each power domain.
And then use basic_clk_name strings for all compatibles, instead of
mixing clk_id and clk_name.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/soc/mediatek/mtk-scpsys.c | 138 +++++++++++++-------------------------
 1 file changed, 45 insertions(+), 93 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index f669d37..db35a28 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -78,34 +78,6 @@
 #define PWR_STATUS_HIF1			BIT(26)	/* MT7622 */
 #define PWR_STATUS_WB			BIT(27)	/* MT7622 */
 
-enum clk_id {
-	CLK_NONE,
-	CLK_MM,
-	CLK_MFG,
-	CLK_VENC,
-	CLK_VENC_LT,
-	CLK_ETHIF,
-	CLK_VDEC,
-	CLK_HIFSEL,
-	CLK_JPGDEC,
-	CLK_AUDIO,
-	CLK_MAX,
-};
-
-static const char * const clk_names[] = {
-	NULL,
-	"mm",
-	"mfg",
-	"venc",
-	"venc_lt",
-	"ethif",
-	"vdec",
-	"hif_sel",
-	"jpgdec",
-	"audio",
-	NULL,
-};
-
 #define MAX_CLKS	3
 
 /**
@@ -116,7 +88,7 @@ enum clk_id {
  * @sram_pdn_bits: The mask for sram power control bits.
  * @sram_pdn_ack_bits: The mask for sram power control acked bits.
  * @bus_prot_mask: The mask for single step bus protection.
- * @clk_id: The basic clocks required by this power domain.
+ * @basic_clk_name: The basic clocks required by this power domain.
  * @caps: The flag for active wake-up action.
  */
 struct scp_domain_data {
@@ -126,7 +98,7 @@ struct scp_domain_data {
 	u32 sram_pdn_bits;
 	u32 sram_pdn_ack_bits;
 	u32 bus_prot_mask;
-	enum clk_id clk_id[MAX_CLKS];
+	const char *basic_clk_name[MAX_CLKS];
 	u8 caps;
 };
 
@@ -411,12 +383,23 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	return ret;
 }
 
-static void init_clks(struct platform_device *pdev, struct clk **clk)
+static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
+			const char * const *name)
 {
 	int i;
 
-	for (i = CLK_NONE + 1; i < CLK_MAX; i++)
-		clk[i] = devm_clk_get(&pdev->dev, clk_names[i]);
+	for (i = 0; i < MAX_CLKS && name[i]; i++) {
+		clk[i] = devm_clk_get(&pdev->dev, name[i]);
+
+		if (IS_ERR(clk[i])) {
+			dev_err(&pdev->dev,
+				"get basic clk %s fail %ld\n",
+				name[i], PTR_ERR(clk[i]));
+			return PTR_ERR(clk[i]);
+		}
+	}
+
+	return 0;
 }
 
 static struct scp *init_scp(struct platform_device *pdev,
@@ -426,9 +409,8 @@ static struct scp *init_scp(struct platform_device *pdev,
 {
 	struct genpd_onecell_data *pd_data;
 	struct resource *res;
-	int i, j;
+	int i, ret;
 	struct scp *scp;
-	struct clk *clk[CLK_MAX];
 
 	scp = devm_kzalloc(&pdev->dev, sizeof(*scp), GFP_KERNEL);
 	if (!scp)
@@ -481,8 +463,6 @@ static struct scp *init_scp(struct platform_device *pdev,
 
 	pd_data->num_domains = num;
 
-	init_clks(pdev, clk);
-
 	for (i = 0; i < num; i++) {
 		struct scp_domain *scpd = &scp->domains[i];
 		struct generic_pm_domain *genpd = &scpd->genpd;
@@ -493,17 +473,9 @@ static struct scp *init_scp(struct platform_device *pdev,
 
 		scpd->data = data;
 
-		for (j = 0; j < MAX_CLKS && data->clk_id[j]; j++) {
-			struct clk *c = clk[data->clk_id[j]];
-
-			if (IS_ERR(c)) {
-				dev_err(&pdev->dev, "%s: clk unavailable\n",
-					data->name);
-				return ERR_CAST(c);
-			}
-
-			scpd->clk[j] = c;
-		}
+		ret = init_basic_clks(pdev, scpd->clk, data->basic_clk_name);
+		if (ret)
+			return ERR_PTR(ret);
 
 		genpd->name = data->name;
 		genpd->power_off = scpsys_power_off;
@@ -560,7 +532,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_CONN_PWR_CON,
 		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
 				 MT2701_TOP_AXI_PROT_EN_CONN_S,
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_DISP] = {
@@ -568,7 +539,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sta_mask = PWR_STATUS_DISP,
 		.ctl_offs = SPM_DIS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_MM_M0,
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
@@ -578,7 +549,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MFG},
+		.basic_clk_name = {"mfg"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_VDEC] = {
@@ -587,7 +558,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VDE_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_ISP] = {
@@ -596,7 +567,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ISP_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(13, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_BDP] = {
@@ -604,7 +575,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.sta_mask = PWR_STATUS_BDP,
 		.ctl_offs = SPM_BDP_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_ETH] = {
@@ -613,7 +583,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ETH_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_ETHIF},
+		.basic_clk_name = {"ethif"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_HIF] = {
@@ -622,14 +592,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_HIF_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_ETHIF},
+		.basic_clk_name = {"ethif"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2701_POWER_DOMAIN_IFR_MSC] = {
 		.name = "ifr_msc",
 		.sta_mask = PWR_STATUS_IFR_MSC,
 		.ctl_offs = SPM_IFR_MSC_PWR_CON,
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 };
@@ -644,7 +613,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_DIS_PWR_CON,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_VDEC] = {
@@ -653,7 +622,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VDE_PWR_CON,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM, CLK_VDEC},
+		.basic_clk_name = {"mm", "vdec"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_VENC] = {
@@ -662,7 +631,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VEN_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_MM, CLK_VENC, CLK_JPGDEC},
+		.basic_clk_name = {"mm", "venc", "jpgdec"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_ISP] = {
@@ -671,7 +640,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ISP_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(13, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_AUDIO] = {
@@ -680,7 +649,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_AUDIO_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_AUDIO},
+		.basic_clk_name = {"audio"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_USB] = {
@@ -689,7 +658,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_USB_PWR_CON,
 		.sram_pdn_bits = GENMASK(10, 8),
 		.sram_pdn_ack_bits = GENMASK(14, 12),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_USB2] = {
@@ -698,7 +666,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_USB2_PWR_CON,
 		.sram_pdn_bits = GENMASK(10, 8),
 		.sram_pdn_ack_bits = GENMASK(14, 12),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_MFG] = {
@@ -707,7 +674,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_PWR_CON,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
-		.clk_id = {CLK_MFG},
+		.basic_clk_name = {"mfg"},
 		.bus_prot_mask = BIT(14) | BIT(21) | BIT(23),
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
@@ -717,7 +684,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x02c0,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_MFG_SC2] = {
@@ -726,7 +692,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x02c4,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT2712_POWER_DOMAIN_MFG_SC3] = {
@@ -735,7 +700,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x01f8,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(16, 16),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 };
@@ -760,7 +724,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x300,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_VDEC},
+		.basic_clk_name = {"vdec"},
 	},
 	[MT6797_POWER_DOMAIN_VENC] = {
 		.name = "venc",
@@ -768,7 +732,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x304,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_NONE},
 	},
 	[MT6797_POWER_DOMAIN_ISP] = {
 		.name = "isp",
@@ -776,7 +739,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x308,
 		.sram_pdn_bits = GENMASK(9, 8),
 		.sram_pdn_ack_bits = GENMASK(13, 12),
-		.clk_id = {CLK_NONE},
 	},
 	[MT6797_POWER_DOMAIN_MM] = {
 		.name = "mm",
@@ -784,7 +746,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x30C,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.bus_prot_mask = (BIT(1) | BIT(2)),
 	},
 	[MT6797_POWER_DOMAIN_AUDIO] = {
@@ -793,7 +755,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x314,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_NONE},
 	},
 	[MT6797_POWER_DOMAIN_MFG_ASYNC] = {
 		.name = "mfg_async",
@@ -801,7 +762,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x334,
 		.sram_pdn_bits = 0,
 		.sram_pdn_ack_bits = 0,
-		.clk_id = {CLK_MFG},
+		.basic_clk_name = {"mfg"},
 	},
 	[MT6797_POWER_DOMAIN_MJC] = {
 		.name = "mjc",
@@ -809,7 +770,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = 0x310,
 		.sram_pdn_bits = GENMASK(8, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_NONE},
 	},
 };
 
@@ -834,7 +794,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ETHSYS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_NONE},
 		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_ETHSYS,
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
@@ -844,7 +803,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_HIF0_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_HIFSEL},
+		.basic_clk_name = {"hif_sel"},
 		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF0,
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
@@ -854,7 +813,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_HIF1_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_HIFSEL},
+		.basic_clk_name = {"hif_sel"},
 		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_HIF1,
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
@@ -864,7 +823,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_WB_PWR_CON,
 		.sram_pdn_bits = 0,
 		.sram_pdn_ack_bits = 0,
-		.clk_id = {CLK_NONE},
 		.bus_prot_mask = MT7622_TOP_AXI_PROT_EN_WB,
 		.caps = MTK_SCPD_ACTIVE_WAKEUP | MTK_SCPD_FWAIT_SRAM,
 	},
@@ -881,7 +839,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_CONN_PWR_CON,
 		.bus_prot_mask = MT2701_TOP_AXI_PROT_EN_CONN_M |
 				 MT2701_TOP_AXI_PROT_EN_CONN_S,
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7623A_POWER_DOMAIN_ETH] = {
@@ -890,7 +847,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ETH_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_ETHIF},
+		.basic_clk_name = {"ethif"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7623A_POWER_DOMAIN_HIF] = {
@@ -899,14 +856,13 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_HIF_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_ETHIF},
+		.basic_clk_name = {"ethif"},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT7623A_POWER_DOMAIN_IFR_MSC] = {
 		.name = "ifr_msc",
 		.sta_mask = PWR_STATUS_IFR_MSC,
 		.ctl_offs = SPM_IFR_MSC_PWR_CON,
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 };
@@ -922,7 +878,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VDE_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 	},
 	[MT8173_POWER_DOMAIN_VENC] = {
 		.name = "venc",
@@ -930,7 +886,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VEN_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_MM, CLK_VENC},
+		.basic_clk_name = {"mm", "venc"},
 	},
 	[MT8173_POWER_DOMAIN_ISP] = {
 		.name = "isp",
@@ -938,7 +894,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_ISP_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(13, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 	},
 	[MT8173_POWER_DOMAIN_MM] = {
 		.name = "mm",
@@ -946,7 +902,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_DIS_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(12, 12),
-		.clk_id = {CLK_MM},
+		.basic_clk_name = {"mm"},
 		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MM_M0 |
 			MT8173_TOP_AXI_PROT_EN_MM_M1,
 	},
@@ -956,7 +912,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_VEN2_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_MM, CLK_VENC_LT},
+		.basic_clk_name = {"mm", "venc_lt"},
 	},
 	[MT8173_POWER_DOMAIN_AUDIO] = {
 		.name = "audio",
@@ -964,7 +920,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_AUDIO_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_NONE},
 	},
 	[MT8173_POWER_DOMAIN_USB] = {
 		.name = "usb",
@@ -972,7 +927,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_USB_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(15, 12),
-		.clk_id = {CLK_NONE},
 		.caps = MTK_SCPD_ACTIVE_WAKEUP,
 	},
 	[MT8173_POWER_DOMAIN_MFG_ASYNC] = {
@@ -981,7 +935,7 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_ASYNC_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = 0,
-		.clk_id = {CLK_MFG},
+		.basic_clk_name = {"mfg"},
 	},
 	[MT8173_POWER_DOMAIN_MFG_2D] = {
 		.name = "mfg_2d",
@@ -989,7 +943,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_2D_PWR_CON,
 		.sram_pdn_bits = GENMASK(11, 8),
 		.sram_pdn_ack_bits = GENMASK(13, 12),
-		.clk_id = {CLK_NONE},
 	},
 	[MT8173_POWER_DOMAIN_MFG] = {
 		.name = "mfg",
@@ -997,7 +950,6 @@ static void mtk_register_power_domains(struct platform_device *pdev,
 		.ctl_offs = SPM_MFG_PWR_CON,
 		.sram_pdn_bits = GENMASK(13, 8),
 		.sram_pdn_ack_bits = GENMASK(21, 16),
-		.clk_id = {CLK_NONE},
 		.bus_prot_mask = MT8173_TOP_AXI_PROT_EN_MFG_S |
 			MT8173_TOP_AXI_PROT_EN_MFG_M0 |
 			MT8173_TOP_AXI_PROT_EN_MFG_M1 |
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
