Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC0ED0BD0
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 11:51:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTsxIAilEVZG2VsxeXNQ2HlVD1oaLhqLWhMsW0rPFJk=; b=qSRibDGXYbbCxW
	PsGtgpurIZXmt0e6a1IjC93+iq4UVj3c39iRZ4yoHseA8hMGQqNNNMNjrcz5OZDR1C45qZVN5DwoC
	ytuaumavgECAymZ/hPiz70jEkjNCB6cu5e2TxZIOYJ39vzwdtdtdyEuGufwxcf4gOJa1OLh5QEkc2
	4z6gd9SaLohSUlD6lyCD2mZ2Z/hAX9bBFlP5v0uoSSyHL1CoKRjrELdwgfYMkI4znz+q7hTSp/frD
	iMtgWjYMu48DB6YZEqWSwoCRhPYWvnSm2ObL4COV8I7edv3oggeyonQFqq7eerYq7ci08M1YzxIW/
	HwGOEe9uNCClTctuZ1jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8dK-0005Zc-Up; Wed, 09 Oct 2019 09:51:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8cs-00059A-6u; Wed, 09 Oct 2019 09:51:24 +0000
X-UUID: 271d86035e694de3b57fc90fddc380d1-20191009
X-UUID: 271d86035e694de3b57fc90fddc380d1-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1752187281; Wed, 09 Oct 2019 01:51:17 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 02:48:16 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:33:07 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:33:07 +0800
Message-ID: <1570613589.7713.12.camel@mtksdaap41>
Subject: Re: [PATCH v5, 09/32] drm/mediatek: add mutex sof into ddp private
 data
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:33:09 +0800
In-Reply-To: <1567090254-15566-10-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-10-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C0AA72460010C5BE3943F938EECDB74D9C19DE5296EAE6A11046F9A37BD29F432000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_025122_288054_E0B5C4EE 
X-CRM114-Status: GOOD (  14.94  )
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
> mutex sof will be ddp private data
> 

Applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 43 +++++++++++++++++++++++++++-------
>  1 file changed, 35 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index ae22e21..9bdbd8d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -141,8 +141,19 @@ struct mtk_disp_mutex {
>  	bool claimed;
>  };
>  
> +enum mtk_ddp_mutex_sof_id {
> +	DDP_MUTEX_SOF_SINGLE_MODE,
> +	DDP_MUTEX_SOF_DSI0,
> +	DDP_MUTEX_SOF_DSI1,
> +	DDP_MUTEX_SOF_DPI0,
> +	DDP_MUTEX_SOF_DPI1,
> +	DDP_MUTEX_SOF_DSI2,
> +	DDP_MUTEX_SOF_DSI3,
> +};
> +
>  struct mtk_ddp_data {
>  	const unsigned int *mutex_mod;
> +	const unsigned int *mutex_sof;
>  	const unsigned int mutex_mod_reg;
>  };
>  
> @@ -201,18 +212,31 @@ struct mtk_ddp {
>  	[DDP_COMPONENT_WDMA1] = MT8173_MUTEX_MOD_DISP_WDMA1,
>  };
>  
> +static const unsigned int mt2712_mutex_sof[DDP_MUTEX_SOF_DSI3 + 1] = {
> +	[DDP_MUTEX_SOF_SINGLE_MODE] = MUTEX_SOF_SINGLE_MODE,
> +	[DDP_MUTEX_SOF_DSI0] = MUTEX_SOF_DSI0,
> +	[DDP_MUTEX_SOF_DSI1] = MUTEX_SOF_DSI1,
> +	[DDP_MUTEX_SOF_DPI0] = MUTEX_SOF_DPI0,
> +	[DDP_MUTEX_SOF_DPI1] = MUTEX_SOF_DPI1,
> +	[DDP_MUTEX_SOF_DSI2] = MUTEX_SOF_DSI2,
> +	[DDP_MUTEX_SOF_DSI3] = MUTEX_SOF_DSI3,
> +};
> +
>  static const struct mtk_ddp_data mt2701_ddp_driver_data = {
>  	.mutex_mod = mt2701_mutex_mod,
> +	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
>  };
>  
>  static const struct mtk_ddp_data mt2712_ddp_driver_data = {
>  	.mutex_mod = mt2712_mutex_mod,
> +	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
>  };
>  
>  static const struct mtk_ddp_data mt8173_ddp_driver_data = {
>  	.mutex_mod = mt8173_mutex_mod,
> +	.mutex_sof = mt2712_mutex_sof,
>  	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
>  };
>  
> @@ -454,28 +478,29 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
>  	struct mtk_ddp *ddp = container_of(mutex, struct mtk_ddp,
>  					   mutex[mutex->id]);
>  	unsigned int reg;
> +	unsigned int sof_id;
>  	unsigned int offset;
>  
>  	WARN_ON(&ddp->mutex[mutex->id] != mutex);
>  
>  	switch (id) {
>  	case DDP_COMPONENT_DSI0:
> -		reg = MUTEX_SOF_DSI0;
> +		sof_id = DDP_MUTEX_SOF_DSI0;
>  		break;
>  	case DDP_COMPONENT_DSI1:
> -		reg = MUTEX_SOF_DSI0;
> +		sof_id = DDP_MUTEX_SOF_DSI0;
>  		break;
>  	case DDP_COMPONENT_DSI2:
> -		reg = MUTEX_SOF_DSI2;
> +		sof_id = DDP_MUTEX_SOF_DSI2;
>  		break;
>  	case DDP_COMPONENT_DSI3:
> -		reg = MUTEX_SOF_DSI3;
> +		sof_id = DDP_MUTEX_SOF_DSI3;
>  		break;
>  	case DDP_COMPONENT_DPI0:
> -		reg = MUTEX_SOF_DPI0;
> +		sof_id = DDP_MUTEX_SOF_DPI0;
>  		break;
>  	case DDP_COMPONENT_DPI1:
> -		reg = MUTEX_SOF_DPI1;
> +		sof_id = DDP_MUTEX_SOF_DPI1;
>  		break;
>  	default:
>  		if (ddp->data->mutex_mod[id] < 32) {
> @@ -493,7 +518,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
>  		return;
>  	}
>  
> -	writel_relaxed(reg, ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
> +	writel_relaxed(ddp->data->mutex_sof[sof_id],
> +		       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
>  }
>  
>  void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
> @@ -514,7 +540,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
>  	case DDP_COMPONENT_DPI0:
>  	case DDP_COMPONENT_DPI1:
>  		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
> -			       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
> +			       ddp->regs +
> +			       DISP_REG_MUTEX_SOF(mutex->id));
>  		break;
>  	default:
>  		if (ddp->data->mutex_mod[id] < 32) {



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
