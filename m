Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B54BEE11
	for <lists+linux-mediatek@lfdr.de>; Thu, 26 Sep 2019 11:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kxzJx+lxujmoaO2Pydd4G+HhMF+KoMWal4l5M0poLg=; b=mf5ipbXgsxM/9o
	7Wi5M5fJo3nxxyZuSly9hA0KyXw9ck1X48inFuPIdiEOw+f57CyWX10/XdutjwlM3saLMS0zg0Ayn
	LpJQ9Jwkv8Vjm72YWSxdtxH8xBwa4ucK5/utgqJm3laIzBCZUNVo3+g8Qho67JinEDiQOXYZIC/Td
	c420km9t7azOCON1OtjLtGq2fZugnYplNXZWcq5J+qWtlo+L2Qb2cANlsY/BwQWen81Fi/Vgp9feZ
	0ic/3fYWRj0OhpAxIM+FcjoEOjEAfMQYl/rXrQMfTpzbPZ4AshcSCmE2AESQdZ7M3dZXu8RGNyrBP
	0jkpYKqu5Rf7lRtTx84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPkn-00007L-Do; Thu, 26 Sep 2019 09:08:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPjI-0008Hm-US
 for linux-mediatek@lists.infradead.org; Thu, 26 Sep 2019 09:06:35 +0000
X-UUID: 31f84b353680474c8191f71972fe3e15-20190926
X-UUID: 31f84b353680474c8191f71972fe3e15-20190926
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 281536372; Thu, 26 Sep 2019 01:06:18 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 02:06:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 17:06:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Sep 2019 17:06:10 +0800
Message-ID: <1569488771.9612.4.camel@mtksdaap41>
Subject: Re: [PATCH v7 3/5] drm/mediatek: add mipi_tx driver for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Thu, 26 Sep 2019 17:06:11 +0800
In-Reply-To: <20190920090432.3308-4-jitao.shi@mediatek.com>
References: <20190920090432.3308-1-jitao.shi@mediatek.com>
 <20190920090432.3308-4-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_020631_624182_C1EC0BD3 
X-CRM114-Status: GOOD (  15.86  )
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
Cc: bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, stonea168@163.com, cawa.cheng@mediatek.com,
 dri-devel@lists.freedesktop.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Fri, 2019-09-20 at 17:04 +0800, Jitao Shi wrote:
> This patch add mt8183 mipi_tx driver.
> And also support other chips that use the same binding and driver.

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/Makefile             |   1 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
>  drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
>  drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 150 ++++++++++++++++++
>  4 files changed, 154 insertions(+)
>  create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> 
> diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
> index 2c8de1f5a5ee..8067a4be8311 100644
> --- a/drivers/gpu/drm/mediatek/Makefile
> +++ b/drivers/gpu/drm/mediatek/Makefile
> @@ -13,6 +13,7 @@ mediatek-drm-y := mtk_disp_color.o \
>  		  mtk_dsi.o \
>  		  mtk_mipi_tx.o \
>  		  mtk_mt8173_mipi_tx.o \
> +		  mtk_mt8183_mipi_tx.o \
>  		  mtk_dpi.o
>  
>  obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> index 77b9a185e970..e4d34484ecc8 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
> @@ -175,6 +175,8 @@ static const struct of_device_id mtk_mipi_tx_match[] = {
>  	  .data = &mt2701_mipitx_data },
>  	{ .compatible = "mediatek,mt8173-mipi-tx",
>  	  .data = &mt8173_mipitx_data },
> +	{ .compatible = "mediatek,mt8183-mipi-tx",
> +	  .data = &mt8183_mipitx_data },
>  	{ },
>  };
>  
> diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> index 4f905313564f..413f35d86219 100644
> --- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> +++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
> @@ -44,5 +44,6 @@ unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
>  
>  extern const struct mtk_mipitx_data mt2701_mipitx_data;
>  extern const struct mtk_mipitx_data mt8173_mipitx_data;
> +extern const struct mtk_mipitx_data mt8183_mipitx_data;
>  
>  #endif
> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> new file mode 100644
> index 000000000000..db13ebdbe262
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: jitao.shi <jitao.shi@mediatek.com>
> + */
> +
> +#include "mtk_mipi_tx.h"
> +
> +#define MIPITX_LANE_CON		0x000c
> +#define RG_DSI_CPHY_T1DRV_EN		BIT(0)
> +#define RG_DSI_ANA_CK_SEL		BIT(1)
> +#define RG_DSI_PHY_CK_SEL		BIT(2)
> +#define RG_DSI_CPHY_EN			BIT(3)
> +#define RG_DSI_PHYCK_INV_EN		BIT(4)
> +#define RG_DSI_PWR04_EN			BIT(5)
> +#define RG_DSI_BG_LPF_EN		BIT(6)
> +#define RG_DSI_BG_CORE_EN		BIT(7)
> +#define RG_DSI_PAD_TIEL_SEL		BIT(8)
> +
> +#define MIPITX_PLL_PWR	0x0028
> +#define MIPITX_PLL_CON0	0x002c
> +#define MIPITX_PLL_CON1	0x0030
> +#define MIPITX_PLL_CON2	0x0034
> +#define MIPITX_PLL_CON3	0x0038
> +#define MIPITX_PLL_CON4	0x003c
> +#define RG_DSI_PLL_IBIAS		(3 << 10)
> +
> +#define MIPITX_D2_SW_CTL_EN	0x0144
> +#define MIPITX_D0_SW_CTL_EN	0x0244
> +#define MIPITX_CK_CKMODE_EN	0x0328
> +#define DSI_CK_CKMODE_EN		BIT(0)
> +#define MIPITX_CK_SW_CTL_EN	0x0344
> +#define MIPITX_D1_SW_CTL_EN	0x0444
> +#define MIPITX_D3_SW_CTL_EN	0x0544
> +#define DSI_SW_CTL_EN			BIT(0)
> +#define AD_DSI_PLL_SDM_PWR_ON		BIT(0)
> +#define AD_DSI_PLL_SDM_ISO_EN		BIT(1)
> +
> +#define RG_DSI_PLL_EN			BIT(4)
> +#define RG_DSI_PLL_POSDIV		(0x7 << 8)
> +
> +static int mtk_mipi_tx_pll_enable(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +	unsigned int txdiv, txdiv0;
> +	u64 pcw;
> +
> +	dev_dbg(mipi_tx->dev, "enable: %u bps\n", mipi_tx->data_rate);
> +
> +	if (mipi_tx->data_rate >= 2000000000) {
> +		txdiv = 1;
> +		txdiv0 = 0;
> +	} else if (mipi_tx->data_rate >= 1000000000) {
> +		txdiv = 2;
> +		txdiv0 = 1;
> +	} else if (mipi_tx->data_rate >= 500000000) {
> +		txdiv = 4;
> +		txdiv0 = 2;
> +	} else if (mipi_tx->data_rate > 250000000) {
> +		txdiv = 8;
> +		txdiv0 = 3;
> +	} else if (mipi_tx->data_rate >= 125000000) {
> +		txdiv = 16;
> +		txdiv0 = 4;
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +	udelay(1);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> +	pcw = div_u64(((u64)mipi_tx->data_rate * txdiv) << 24, 26000000);
> +	writel(pcw, mipi_tx->regs + MIPITX_PLL_CON0);
> +	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV,
> +				txdiv0 << 8);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +
> +	return 0;
> +}
> +
> +static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
> +{
> +	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
> +
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
> +}
> +
> +static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
> +				       unsigned long *prate)
> +{
> +	return clamp_val(rate, 50000000, 1600000000);
> +}
> +
> +static const struct clk_ops mtk_mipi_tx_pll_ops = {
> +	.enable = mtk_mipi_tx_pll_enable,
> +	.disable = mtk_mipi_tx_pll_disable,
> +	.round_rate = mtk_mipi_tx_pll_round_rate,
> +	.set_rate = mtk_mipi_tx_pll_set_rate,
> +	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
> +};
> +
> +static void mtk_mipi_tx_power_on_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +
> +	/* BG_LPF_EN / BG_CORE_EN */
> +	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +	usleep_range(30, 100);
> +	writel(RG_DSI_BG_CORE_EN | RG_DSI_BG_LPF_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +
> +	/* Switch OFF each Lane */
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
> +
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_CKMODE_EN, DSI_CK_CKMODE_EN);
> +}
> +
> +static void mtk_mipi_tx_power_off_signal(struct phy *phy)
> +{
> +	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
> +
> +	/* Switch ON each Lane */
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
> +	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
> +
> +	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
> +	       mipi_tx->regs + MIPITX_LANE_CON);
> +	writel(RG_DSI_PAD_TIEL_SEL, mipi_tx->regs + MIPITX_LANE_CON);
> +}
> +
> +const struct mtk_mipitx_data mt8183_mipitx_data = {
> +	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
> +	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
> +	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
> +};
> +



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
