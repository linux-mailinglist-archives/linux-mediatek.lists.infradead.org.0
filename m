Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A0F6B620
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 07:54:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzpF7/330zAdMBA+lvy9oXy7HJGH6XezQqR68ix1IeM=; b=QwAeOLErARsgHn
	lGAiYbkcGlrPEeFbCOAskLAIIn3bgDaZnKX8KpghknGV+CFSHnAqL1i8TQ0j1pbhLDUji634c30M3
	EFDK/aP0ayL7IeYa+W/E0/NXG3SH/RyEViy4DkaKKdsoHjBXgX0Jw7VzinJYrKyN5nSAWD9tQlQ/A
	UcitGofuUIxjRzgMpZ+xwtEU1/pJLsI0EvuMHg6AypOMEtmz/FfA1b3dYQUNxQ7HXf0T/MbdO5HDS
	LTC4wE8G1x07JqpPTKVBPoBsEchFwSSutJO6HLoAiMnNljVW2Tr7n64ryd2U/Hy+6Ba1PYmgLLuF5
	roaJQVpgMjKw8FvnpOaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnctJ-00047p-5s; Wed, 17 Jul 2019 05:54:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnct1-0003wP-LC; Wed, 17 Jul 2019 05:53:56 +0000
X-UUID: eb2bb20b701048c6bf406ff78fcadbe5-20190716
X-UUID: eb2bb20b701048c6bf406ff78fcadbe5-20190716
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 205210736; Tue, 16 Jul 2019 21:53:53 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 16 Jul 2019 22:53:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 13:53:48 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 13:53:48 +0800
Message-ID: <1563342828.29169.18.camel@mtksdaap41>
Subject: Re: [PATCH v4, 21/33] drm/mediatek: add function to background
 color input select for ovl/ovl_2l direct link
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 17 Jul 2019 13:53:48 +0800
In-Reply-To: <1562625253-29254-22-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
 <1562625253-29254-22-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C256F03D4194D5B33990FFB01DF1B7245E0181B5106E7E4F3FA6FAEC21AA3B8C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_225355_699155_D9C2BA66 
X-CRM114-Status: GOOD (  14.23  )
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

On Tue, 2019-07-09 at 06:34 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add function to background color input select for ovl/ovl_2l direct link
> for ovl/ovl_2l direct link usecase, we need set background color
> input select for these hardware.
> this is preparation patch for ovl/ovl_2l usecase
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index a0ea8c9..ec6f329a 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -92,6 +92,8 @@ struct mtk_ddp_comp_funcs {
>  			     struct mtk_plane_state *state);
>  	void (*gamma_set)(struct mtk_ddp_comp *comp,
>  			  struct drm_crtc_state *state);
> +	void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
> +	void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
>  };
>  
>  struct mtk_ddp_comp {
> @@ -172,6 +174,18 @@ static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
>  		comp->funcs->gamma_set(comp, state);
>  }
>  
> +static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp)
> +{
> +	if (comp->funcs && comp->funcs->bgclr_in_on)
> +		comp->funcs->bgclr_in_on(comp);
> +}
> +
> +static inline void mtk_ddp_comp_bgclr_in_off(struct mtk_ddp_comp *comp)
> +{
> +	if (comp->funcs && comp->funcs->bgclr_in_off)
> +		comp->funcs->bgclr_in_off(comp);
> +}
> +
>  int mtk_ddp_comp_get_id(struct device_node *node,
>  			enum mtk_ddp_comp_type comp_type);
>  int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
