Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEAC86B62E
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 07:59:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ERyJX7nF32r4ZofhPMVfmDmqttNJvXku0CBC/m/EqI=; b=TxKeHTczhXI+oi
	hCOB9L7xKPJuIROFxftKJkAjIy7829lkRw36rsenpGZXJ5PMP5I417wUY+vtfjDcUVZL6yNci7rqQ
	QDw2JL40M4xKuIkSW7Rw1uGVqaXHSo9Z1pfAju/w5OplVayAhRNa6I+amsIALqtqRp/tJWN5DfhOx
	ITZxyrBnwe2qvvC28AqLGH7xVJkseHOUg/2WL/L2d5+3ZgZEIkxlt5faGUfU9C4oCAjzF8XkMRlmx
	5TfFGciC7xjqoHOnxWYALsEs2upT/eCR31+7M2k6YZkJ4HdJdPBBKZn0wRChwcek3rL0sHT84qwyX
	XN0Z3RSWDlZvimyg3NZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncxw-00010j-QY; Wed, 17 Jul 2019 05:59:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncxe-0000om-Cm; Wed, 17 Jul 2019 05:58:44 +0000
X-UUID: bbaed3a78b9f467f9fa00cd0d6e28c9b-20190716
X-UUID: bbaed3a78b9f467f9fa00cd0d6e28c9b-20190716
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 63650857; Tue, 16 Jul 2019 21:58:35 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:58:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:58:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:58:29 +0800
Message-ID: <1563343109.29169.19.camel@mtksdaap41>
Subject: Re: [PATCH v4, 22/33] drm/mediatek: add background color input
 select function for ovl/ovl_2l
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:58:29 +0800
In-Reply-To: <1562625253-29254-23-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-23-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AA45BD5AFD08249059BE630450E0D8590C726157CC07B85B922BBAE9C01B21812000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_225842_438484_262B07CF 
X-CRM114-Status: GOOD (  17.08  )
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

On Tue, 2019-07-09 at 06:34 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add background color input select function for ovl/ovl_2l
> 
> ovl include 4 DRAM layer and 1 background color layer
> ovl_2l include 4 DRAM layer and 1 background color layer
> DRAM layer frame buffer data from render hardware, GPU for example.
> backgournd color layer is embed in ovl/ovl_2l, we can only set
> it color, but not support DRAM frame buffer.
> 
> for ovl0->ovl0_2l direct link usecase,
> we need set ovl0_2l background color intput select from ovl0
> if render send DRAM buffer layer number <=4, all these layer read
> by ovl.
> layer0 is at the bottom of all layers.
> layer3 is at the top of all layers.
> if render send DRAM buffer layer numbfer >=4 && <=6
> ovl0 read layer0~3
> ovl0_2l read layer4~5
> layer5 is at the top ot all these layers.
> 
> the decision of how to setting ovl0/ovl0_2l read these layer data
> is controlled in mtk crtc, which will be another patch
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index a0ab760..8ca4965 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -27,6 +27,8 @@
>  #define DISP_REG_OVL_EN				0x000c
>  #define DISP_REG_OVL_RST			0x0014
>  #define DISP_REG_OVL_ROI_SIZE			0x0020
> +#define DISP_REG_OVL_DATAPATH_CON		0x0024
> +#define OVL_BGCLR_SEL_IN				BIT(2)
>  #define DISP_REG_OVL_ROI_BGCLR			0x0028
>  #define DISP_REG_OVL_SRC_CON			0x002c
>  #define DISP_REG_OVL_CON(n)			(0x0030 + 0x20 * (n))
> @@ -245,6 +247,24 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  		mtk_ovl_layer_on(comp, idx);
>  }
>  
> +static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
> +{
> +	unsigned int reg;
> +
> +	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	reg = reg | OVL_BGCLR_SEL_IN;
> +	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +}
> +
> +static void mtk_ovl_bgclr_in_off(struct mtk_ddp_comp *comp)
> +{
> +	unsigned int reg;
> +
> +	reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +	reg = reg & ~OVL_BGCLR_SEL_IN;
> +	writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +}
> +
>  static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
>  	.config = mtk_ovl_config,
>  	.start = mtk_ovl_start,
> @@ -255,6 +275,8 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>  	.layer_on = mtk_ovl_layer_on,
>  	.layer_off = mtk_ovl_layer_off,
>  	.layer_config = mtk_ovl_layer_config,
> +	.bgclr_in_on = mtk_ovl_bgclr_in_on,
> +	.bgclr_in_off = mtk_ovl_bgclr_in_off,
>  };
>  
>  static int mtk_disp_ovl_bind(struct device *dev, struct device *master,



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
