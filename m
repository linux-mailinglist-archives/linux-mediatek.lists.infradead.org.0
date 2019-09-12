Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA93AB130D
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 18:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xR7LFtL46fi95IYyZ1+dqG7XN+gV5Hy1i8mCkmCbHgw=; b=N5/ryIqKCE33tL
	ORMib25dbyr/gJeOoiKVa2tUNfyEL6P8qKb9cTSYwbMcyKC++8+y3mMnV7qiHuUxm+y07YyYzQ3gQ
	1OBbgZRhPZ63NfJPekLXz704ussPf5cb+dXXyRxO9TltLaifgsDnCwNCkZEI8x2Xihjo7RaOXAYux
	nYCev9ejo38QZPqFw2tw+bLvEPtijTY3LgAm3TzHVtfU/x5NpLe2eiGbaSUXJkEaH7XRMAvYZdhNR
	9ChClwDju+laUoagOuEj0LANOkIauXOOWQikw0QcSrqaNMsfPBsf4mSxwmva1SzjIeqfGoRDWg8zZ
	kKk8LliGMFM0vgZZ4MuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8SIf-00016A-UB; Thu, 12 Sep 2019 16:50:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8SIb-00015l-Pf
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 16:50:27 +0000
X-UUID: 8fe0ae914030419190844508b349c11d-20190912
X-UUID: 8fe0ae914030419190844508b349c11d-20190912
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 748487286; Thu, 12 Sep 2019 08:50:22 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 09:50:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Sep 2019 00:50:06 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Sep 2019 00:50:06 +0800
Message-ID: <1568307007.22948.3.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] ASoC: mt8183: fix audio playback slowly after
 playback during bootup
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Fri, 13 Sep 2019 00:50:07 +0800
In-Reply-To: <1568282096-13821-3-git-send-email-jiaxin.yu@mediatek.com>
References: <1568282096-13821-1-git-send-email-jiaxin.yu@mediatek.com>
 <1568282096-13821-3-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_095025_834808_8A8913BF 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com, robh+dt@kernel.org,
 perex@perex.cz, tzungbi@google.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, eason.yen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-09-12 at 17:54 +0800, Jiaxin Yu wrote:
> Before regmap_reinit_cache we must reset audio reg as default value.
> So we use reset controller unit(toprgu) to reset audio hw.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> ---
>  sound/soc/mediatek/common/mtk-base-afe.h   |  1 +
>  sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 21 +++++++++++++++++++++
>  sound/soc/mediatek/mt8183/mt8183-reg.h     |  6 ++++++
>  3 files changed, 28 insertions(+)
> 
> diff --git a/sound/soc/mediatek/common/mtk-base-afe.h b/sound/soc/mediatek/common/mtk-base-afe.h
> index 60cb609a9790..bccc079ee660 100644
> --- a/sound/soc/mediatek/common/mtk-base-afe.h
> +++ b/sound/soc/mediatek/common/mtk-base-afe.h
> @@ -60,6 +60,7 @@ struct mtk_base_afe {
>  	void __iomem *base_addr;
>  	struct device *dev;
>  	struct regmap *regmap;
> +	struct regmap *toprgu_regmap;
>  	struct mutex irq_alloc_lock; /* dynamic alloc irq lock */
>  
>  	unsigned int const *reg_back_up_list;
> diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> index 4a31106d3471..0e5634b3a8e3 100644
> --- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> +++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> @@ -1089,6 +1089,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
>  	struct mtk_base_afe *afe;
>  	struct mt8183_afe_private *afe_priv;
>  	struct device *dev;
> +	unsigned int reg_value;
>  	int i, irq_id, ret;
>  
>  	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
> @@ -1126,6 +1127,26 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	/* toprgu_regmap init */
> +	afe->toprgu_regmap = syscon_regmap_lookup_by_phandle(dev->of_node,
> +							     "mediatek,toprgu");
> +	if (IS_ERR(afe->toprgu_regmap)) {
> +		dev_err(dev, "could not get toprgu_regmap from dev\n");
> +		return PTR_ERR(afe->toprgu_regmap);
> +	}
> +
> +	/* read TOPRGUWDT_SWSYSRST, the high 8bits must be zero */
> +	regmap_read(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, &reg_value);
> +
> +	/* write TOPRGUWDT_SWSYSRST, we need set high 8bits as 0x88 first */
> +	reg_value |= 0x88000000;
> +
> +	/* reset audio domain registers */
> +	reg_value |= 1 << AUDIO_RST_SFT;
> +	regmap_write(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, reg_value);
> +	reg_value &= ~(1 << AUDIO_RST_SFT);
> +	regmap_write(afe->toprgu_regmap, TOPRGUWDT_SWSYSRST, reg_value);


This register contain reset bits for many components.
If components access it directly at the same time, we might have race
condition.

Instead, watchdog driver should export this as reset controller so this
driver can access it using reset API.

Joe.C



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
