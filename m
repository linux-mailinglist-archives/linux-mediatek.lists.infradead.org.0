Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10F90453BE
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 06:59:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0u6R2ttDMZy2sndC1x3UHhSlVUQWQMcDtrYY5ZcDCI=; b=Orlv4sb/+CdSuA
	OS0inBkj6b5wEjoHBTjSa94rhLFaAKepKkKji5To6wZInFDKpqy1Shfrqvb7NNTBD7HvoEIY+Ag07
	Wq+B+c1cB15RbtIjXrjAq5hUZhKlZPl67e4QZzMXbLnvA0PmZwFR0zEfM26ZprUhv5wD7imOHzqOz
	5StSsJBpWzAMXgkR82CVzx2BcwlizAcaWT3pyR2Y3VCTxophdCFvGfix0z0XYO449lXBEEsvl1m7+
	2Wyl9G41JEswIryJ4KT6KiH+7mRRLwEUGl7usBgIHQN7XKDeEnVUPL4T920o6l2JMUVn1Y20V4PiH
	23woR6KD6HZoVcd7qh1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbeJW-0004zm-J1; Fri, 14 Jun 2019 04:59:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbeJH-0004q3-Ck; Fri, 14 Jun 2019 04:59:33 +0000
X-UUID: f8cf2459302c47eea6e7eb6837670d72-20190613
X-UUID: f8cf2459302c47eea6e7eb6837670d72-20190613
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 403836149; Thu, 13 Jun 2019 20:59:18 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 21:59:16 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 12:59:14 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 12:59:13 +0800
Message-ID: <1560488354.16718.16.camel@mtksdaap41>
Subject: Re: [PATCH v3, 17/27] drm/mediatek: add gmc_bits for ovl private data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 14 Jun 2019 12:59:14 +0800
In-Reply-To: <1559734986-7379-18-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
 <1559734986-7379-18-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_215931_442243_BD1EEFCE 
X-CRM114-Status: GOOD (  15.89  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Yongqiang:

On Wed, 2019-06-05 at 19:42 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add gmc_bits for ovl private data
> GMC register was set RDMA ultra and pre-ultra threshold.
> 10bit GMC register define is different with other SOC, gmc_thrshd_l not
> used.

This patch is identical to v2, and I've give a 'Reviewed-by' for v2,
so you should keep this 'Reviewed-by' tag in this patch, so I still give
you a

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 28d1911..afb313c 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -39,7 +39,9 @@
>  #define DISP_REG_OVL_ADDR_MT8173		0x0f40
>  #define DISP_REG_OVL_ADDR(ovl, n)		((ovl)->data->addr + 0x20 * (n))
>  
> -#define	OVL_RDMA_MEM_GMC	0x40402020
> +#define GMC_THRESHOLD_BITS	16
> +#define GMC_THRESHOLD_HIGH	((1 << GMC_THRESHOLD_BITS) / 4)
> +#define GMC_THRESHOLD_LOW	((1 << GMC_THRESHOLD_BITS) / 8)
>  
>  #define OVL_CON_BYTE_SWAP	BIT(24)
>  #define OVL_CON_MTX_YUV_TO_RGB	(6 << 16)
> @@ -57,6 +59,7 @@
>  
>  struct mtk_disp_ovl_data {
>  	unsigned int addr;
> +	unsigned int gmc_bits;
>  	bool fmt_rgb565_is_0;
>  };
>  
> @@ -140,9 +143,23 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
>  static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>  {
>  	unsigned int reg;
> +	unsigned int gmc_thrshd_l;
> +	unsigned int gmc_thrshd_h;
> +	unsigned int gmc_value;
> +	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>  
>  	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> -	writel(OVL_RDMA_MEM_GMC, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
> +
> +	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
> +		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
> +	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
> +		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
> +	if (ovl->data->gmc_bits == 10)
> +		gmc_value = gmc_thrshd_h | gmc_thrshd_h << 16;
> +	else
> +		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
> +			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
> +	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
>  
>  	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
>  	reg = reg | BIT(idx);
> @@ -324,11 +341,13 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
>  
>  static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
>  	.addr = DISP_REG_OVL_ADDR_MT2701,
> +	.gmc_bits = 8,
>  	.fmt_rgb565_is_0 = false,
>  };
>  
>  static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
>  	.addr = DISP_REG_OVL_ADDR_MT8173,
> +	.gmc_bits = 8,
>  	.fmt_rgb565_is_0 = true,
>  };
>  



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
