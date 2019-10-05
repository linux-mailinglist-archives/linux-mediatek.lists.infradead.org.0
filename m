Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4871CCC868
	for <lists+linux-mediatek@lfdr.de>; Sat,  5 Oct 2019 08:23:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=REmTU1UBgbN85qr2BoSaSYWsBZ9Kv5/nM0IHBt4lQ4s=; b=X16hcY7FBVZevd
	eng1FM/eUvBtNJmQYvQoG0dB/LEGybCX7tJiUg+mwQmoVw2l968ZjVeBZdCDjMZr6g5DfUrEDVb4G
	Nki79o48Ebiah/mk+heleeHMoir5+2k/RynWQMAZ+YxrGjnGgePGNpPHFu2P+ZlW+qbxVLwmfvSsF
	5Z6By9XNPh50RX29UIouwH1PafAckQyWAT/lsJfdXvDlRw0+we5MGx1csuNiV9yCJfff62mIJZoLO
	8lry+jDcKdSiL8LyWnSLcaaNY+5d6FBz0lzZzfL+H7Ic8Z8/B1j/C6CDUY56SJhaPdTWMax1mGEzE
	uBEPOf4O0MzbZdCZSvUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGdT1-0000Zw-3G; Sat, 05 Oct 2019 06:22:59 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGdSp-0000RC-29; Sat, 05 Oct 2019 06:22:49 +0000
X-UUID: f7b7183d7b864a75ab0ccf99c704294d-20191004
X-UUID: f7b7183d7b864a75ab0ccf99c704294d-20191004
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1527906058; Fri, 04 Oct 2019 22:22:43 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 23:22:40 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 5 Oct 2019 14:07:29 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 5 Oct 2019 14:07:29 +0800
Message-ID: <1570255651.29077.26.camel@mtksdaap41>
Subject: Re: [PATCH v2 4/4] ASoC: mt8183: fix audio playback slowly after
 playback during bootup
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Date: Sat, 5 Oct 2019 14:07:31 +0800
In-Reply-To: <1569580317-21181-5-git-send-email-jiaxin.yu@mediatek.com>
References: <1569580317-21181-1-git-send-email-jiaxin.yu@mediatek.com>
 <1569580317-21181-5-git-send-email-jiaxin.yu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_232247_110231_644618DA 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: mark.rutland@arm.com, alsa-devel@alsa-project.org, yong.liang@mediatek.com,
 robh+dt@kernel.org, lgirdwood@gmail.com, tzungbi@google.com,
 broonie@kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, eason.yen@mediatek.com, perex@perex.cz,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-09-27 at 18:31 +0800, Jiaxin Yu wrote:
> Before regmap_reinit_cache we must reset audio regs as default values.
> So we use reset controller unit(toprgu) to reset audio hw.
> 
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>


This one looks good to me. You could add this if you want


Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>


Joe.C

> ---
>  sound/soc/mediatek/mt8183/mt8183-afe-pcm.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> index 4a31106d3471..721632386a50 100644
> --- a/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> +++ b/sound/soc/mediatek/mt8183/mt8183-afe-pcm.c
> @@ -11,6 +11,7 @@
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/reset.h>
>  
>  #include "mt8183-afe-common.h"
>  #include "mt8183-afe-clk.h"
> @@ -1089,6 +1090,7 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
>  	struct mtk_base_afe *afe;
>  	struct mt8183_afe_private *afe_priv;
>  	struct device *dev;
> +	struct reset_control *rstc;
>  	int i, irq_id, ret;
>  
>  	afe = devm_kzalloc(&pdev->dev, sizeof(*afe), GFP_KERNEL);
> @@ -1126,6 +1128,19 @@ static int mt8183_afe_pcm_dev_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	rstc = devm_reset_control_get(dev, "audiosys");
> +	if (IS_ERR(rstc)) {
> +		ret = PTR_ERR(rstc);
> +		dev_err(dev, "could not get audiosys reset:%d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = reset_control_reset(rstc);
> +	if (ret) {
> +		dev_err(dev, "failed to trigger audio reset:%d\n", ret);
> +		return ret;
> +	}
> +
>  	/* enable clock for regcache get default value from hw */
>  	afe_priv->pm_runtime_bypass_reg_ctl = true;
>  	pm_runtime_get_sync(&pdev->dev);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
