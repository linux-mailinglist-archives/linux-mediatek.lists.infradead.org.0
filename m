Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3CFD0A90
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 11:10:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSyLHBN4fiR5n9I36BFuPbCZXsTeBz70S6t2oh8gc0M=; b=fZJda2aM2pMy8M
	VYAvN47fyvdpQfeRDf3pJ3bdVVbux6P9160z9KQY569ACuQccnU9CZhcC1ADjVs8xeydAR0+boZq8
	o2eeaxzJZ/8HgQcpZZZynAK3/G+cP6obVrBx4tS4dVJUjbq1w3gk3Of1rJ80ulrgxiYjbKGiEhrjL
	uNp3AI+LHWO5hDVZnBThwA9k4AKonr7dec0MZNFmOyYuqLqMNVGQzxzUnKHPcCKtsmzkiN82Gwyz3
	JJ0kRncTC47c8L/hePM812VGxPJ1FB7KuTVI38NqPvI1r5cf9mIhh4JBWueD1+JATqTscxJHbhni3
	lph+Wkh3GxG/CZ6rf8Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7zQ-0000wH-KW; Wed, 09 Oct 2019 09:10:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7zF-0000om-7N; Wed, 09 Oct 2019 09:10:26 +0000
X-UUID: 9b2a020886034d33b444eebe2a8471a3-20191009
X-UUID: 9b2a020886034d33b444eebe2a8471a3-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1508341445; Wed, 09 Oct 2019 01:10:21 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:10:17 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:10:12 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:10:11 +0800
Message-ID: <1570612214.3420.1.camel@mtksdaap41>
Subject: Re: [PATCH v5, 14/32] drm/mediatek: add ddp component CCORR
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:10:14 +0800
In-Reply-To: <1567090254-15566-15-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-15-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0375CF6B4E5FA8BAAEA7F23CA35E102C5801DCA5C075E2664B67D2C2A9BE51702000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_021025_267409_DC4F24E7 
X-CRM114-Status: GOOD (  14.21  )
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add ddp component CCORR
> 

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 32 +++++++++++++++++++++++++++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  2 ++
>  2 files changed, 34 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index d1afa06..b18bd66 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -33,6 +33,12 @@
>  #define DISP_AAL_EN				0x0000
>  #define DISP_AAL_SIZE				0x0030
>  
> +#define DISP_CCORR_EN				0x0000
> +#define CCORR_EN				BIT(0)
> +#define DISP_CCORR_CFG				0x0020
> +#define CCORR_RELAY_MODE			BIT(0)
> +#define DISP_CCORR_SIZE				0x0030
> +
>  #define DISP_GAMMA_EN				0x0000
>  #define DISP_GAMMA_CFG				0x0020
>  #define DISP_GAMMA_SIZE				0x0030
> @@ -123,6 +129,24 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
>  	writel_relaxed(0x0, comp->regs + DISP_AAL_EN);
>  }
>  
> +static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
> +			     unsigned int h, unsigned int vrefresh,
> +			     unsigned int bpc)
> +{
> +	writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
> +	writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
> +}
> +
> +static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
> +{
> +	writel(CCORR_EN, comp->regs + DISP_CCORR_EN);
> +}
> +
> +static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
> +{
> +	writel_relaxed(0x0, comp->regs + DISP_CCORR_EN);
> +}
> +
>  static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
>  			     unsigned int h, unsigned int vrefresh,
>  			     unsigned int bpc)
> @@ -171,6 +195,12 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	.stop = mtk_aal_stop,
>  };
>  
> +static const struct mtk_ddp_comp_funcs ddp_ccorr = {
> +	.config = mtk_ccorr_config,
> +	.start = mtk_ccorr_start,
> +	.stop = mtk_ccorr_stop,
> +};
> +
>  static const struct mtk_ddp_comp_funcs ddp_gamma = {
>  	.gamma_set = mtk_gamma_set,
>  	.config = mtk_gamma_config,
> @@ -192,6 +222,7 @@ static void mtk_gamma_set(struct mtk_ddp_comp *comp,
>  	[MTK_DISP_RDMA] = "rdma",
>  	[MTK_DISP_WDMA] = "wdma",
>  	[MTK_DISP_COLOR] = "color",
> +	[MTK_DISP_CCORR] = "ccorr",
>  	[MTK_DISP_AAL] = "aal",
>  	[MTK_DISP_GAMMA] = "gamma",
>  	[MTK_DISP_UFOE] = "ufoe",
> @@ -213,6 +244,7 @@ struct mtk_ddp_comp_match {
>  	[DDP_COMPONENT_AAL0]	= { MTK_DISP_AAL,	0, &ddp_aal },
>  	[DDP_COMPONENT_AAL1]	= { MTK_DISP_AAL,	1, &ddp_aal },
>  	[DDP_COMPONENT_BLS]	= { MTK_DISP_BLS,	0, NULL },
> +	[DDP_COMPONENT_CCORR]	= { MTK_DISP_CCORR,	0, &ddp_ccorr },
>  	[DDP_COMPONENT_COLOR0]	= { MTK_DISP_COLOR,	0, NULL },
>  	[DDP_COMPONENT_COLOR1]	= { MTK_DISP_COLOR,	1, NULL },
>  	[DDP_COMPONENT_DPI0]	= { MTK_DPI,		0, NULL },
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 108de60..8d220224 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -20,6 +20,7 @@ enum mtk_ddp_comp_type {
>  	MTK_DISP_RDMA,
>  	MTK_DISP_WDMA,
>  	MTK_DISP_COLOR,
> +	MTK_DISP_CCORR,
>  	MTK_DISP_AAL,
>  	MTK_DISP_GAMMA,
>  	MTK_DISP_UFOE,
> @@ -36,6 +37,7 @@ enum mtk_ddp_comp_id {
>  	DDP_COMPONENT_AAL0,
>  	DDP_COMPONENT_AAL1,
>  	DDP_COMPONENT_BLS,
> +	DDP_COMPONENT_CCORR,
>  	DDP_COMPONENT_COLOR0,
>  	DDP_COMPONENT_COLOR1,
>  	DDP_COMPONENT_DPI0,



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
