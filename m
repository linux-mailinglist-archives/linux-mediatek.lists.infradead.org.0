Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0446830663
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 03:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5TXPW4QtJd94NMjPlbLKKouWsaCcY1wVNmLFvURG7Co=; b=khUQdevCxd2Uxm
	mXOt8HBzcH92imCIfJMC8p9kJnW5/q9tyHHEhNx11S6D1fKHdwtI28YUOqqIg9cSXD41D6hnB7gGY
	kz2TybIPg7NF0it77DibCqjxm3kYQbKDlVJmtPPYndeoZbnc2KjBLGxJgULu9WH53Z9WDmvsfw015
	GVPG+NwQwiqecN7KYIDgTx7MHkvjIkwHOn8TlODwBIl/UsdDhOAUyIxHZcjTSXoZRwpr8PGWPkD0O
	CP4TmDBIncetTq7cBqh9XvZHh6CnmLIeFLbklvwqCGPfqXo4bEQly8vHbIGLTFSF9SDGSs0Mj55m6
	zsdU/DEiWA9DJc5nFOjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWWhN-0006V7-9S; Fri, 31 May 2019 01:51:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWWhK-0006U8-0M; Fri, 31 May 2019 01:51:11 +0000
X-UUID: 66410be834854e738768287b9b0a923d-20190530
X-UUID: 66410be834854e738768287b9b0a923d-20190530
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1176460895; Thu, 30 May 2019 17:50:58 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 18:50:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33N2.mediatek.inc (172.27.4.76) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 09:50:52 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 31 May 2019 09:50:52 +0800
Message-ID: <1559267452.9102.0.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: add dsi module reset driver
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Fri, 31 May 2019 09:50:52 +0800
In-Reply-To: <20190519111513.73919-1-jitao.shi@mediatek.com>
References: <20190519111513.73919-1-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_185110_056163_5C49C050 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

On Sun, 2019-05-19 at 19:15 +0800, Jitao Shi wrote:
> Reset dsi HW to default when power on. Prevent the setting differet
> between bootloader and kernel.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 35 ++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index b00eb2d2e086..39ccb34a7c7f 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -21,10 +21,12 @@
>  #include <linux/component.h>
>  #include <linux/iopoll.h>
>  #include <linux/irq.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/of.h>
>  #include <linux/of_platform.h>
>  #include <linux/phy/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <video/mipi_display.h>
>  #include <video/videomode.h>
>  
> @@ -146,6 +148,8 @@
>  #define T_HS_EXIT	7
>  #define T_HS_ZERO	10
>  
> +#define MMSYS_SW_RST_DSI_B BIT(25)
> +
>  #define NS_TO_CYCLE(n, c)    ((n) / (c) + (((n) % (c)) ? 1 : 0))
>  
>  #define MTK_DSI_HOST_IS_READ(type) \
> @@ -165,6 +169,8 @@ struct mtk_dsi {
>  	struct drm_panel *panel;
>  	struct drm_bridge *bridge;
>  	struct phy *phy;
> +	struct regmap *mmsys_sw_rst_b;
> +	u32 sw_rst_b;
>  
>  	void __iomem *regs;
>  
> @@ -238,6 +244,16 @@ static void mtk_dsi_disable(struct mtk_dsi *dsi)
>  	mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_EN, 0);
>  }
>  
> +static void mtk_dsi_reset_all(struct mtk_dsi *dsi)
> +{
> +	regmap_update_bits(dsi->mmsys_sw_rst_b, dsi->sw_rst_b,
> +			   MMSYS_SW_RST_DSI_B, ~MMSYS_SW_RST_DSI_B);
> +	usleep_range(1000, 1100);
> +
> +	regmap_update_bits(dsi->mmsys_sw_rst_b, dsi->sw_rst_b,
> +			   MMSYS_SW_RST_DSI_B, MMSYS_SW_RST_DSI_B);
> +}
> +
>  static void mtk_dsi_reset_engine(struct mtk_dsi *dsi)
>  {
>  	mtk_dsi_mask(dsi, DSI_CON_CTRL, DSI_RESET, DSI_RESET);
> @@ -831,6 +847,8 @@ static int mtk_dsi_create_conn_enc(struct drm_device *drm, struct mtk_dsi *dsi)
>  			goto err_encoder_cleanup;
>  	}
>  
> +	mtk_dsi_reset_all(dsi);
> +
>  	return 0;
>  
>  err_encoder_cleanup:
> @@ -1087,6 +1105,7 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  	struct mtk_dsi *dsi;
>  	struct device *dev = &pdev->dev;
>  	struct resource *regs;
> +	struct regmap *regmap;
>  	int irq_num;
>  	int comp_id;
>  	int ret;
> @@ -1139,6 +1158,22 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
> +						 "mediatek,syscon-dsi");

Where is the binding document for "mediatek,syscon-dsi"?

Regards,
CK

> +	ret = of_property_read_u32_index(dev->of_node, "mediatek,syscon-dsi", 1,
> +					 &dsi->sw_rst_b);
> +
> +	if (IS_ERR(regmap))
> +		ret = PTR_ERR(regmap);
> +
> +	if (ret) {
> +		ret = PTR_ERR(regmap);
> +		dev_err(dev, "Failed to get mmsys registers: %d\n", ret);
> +		return ret;
> +	}
> +
> +	dsi->mmsys_sw_rst_b = regmap;
> +
>  	comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
>  	if (comp_id < 0) {
>  		dev_err(dev, "Failed to identify by alias: %d\n", comp_id);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
