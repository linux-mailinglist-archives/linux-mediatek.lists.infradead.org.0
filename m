Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4321923F1
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Mar 2020 10:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFQl4liPsIN6e0I7mbaKb73h1vZrPk7TkKtz+49ijX0=; b=JsdlbT7IE9iP8S
	uVdu/xBDLFQNh51WtzZEWtf4/Wqremxh+hmgCHd3fqjh6tdKhwNn/Mfq+nTXz+3jcFoe5Af3bPnp0
	3zAWw66V3wAemBRbT+Q2hK3nEaOT4n8HCHzCPEgP0uat0MT+ZKuB8ga43XcvyadWY+SfzQe4PhxfB
	1aLgEd1czTooznnFL6MzV0vnla7WqFVJPSjxeRTBpKiglbyubqxWSrrTGHLRgivwsZ1rKDxPhPt3W
	n/OeIJ9+KUkVzosVPiMlo3MVWNOue10M8tiED8AvERkl0R7CUbFYa01AO/r2UheZgpUtBh8pXFwjV
	RjURh2wu6TeLPK3vszNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2FB-00037z-7z; Wed, 25 Mar 2020 09:22:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2F7-00037O-KT
 for linux-mediatek@lists.infradead.org; Wed, 25 Mar 2020 09:22:34 +0000
X-UUID: 87efb319aab4451aa36dbc099b88f71f-20200325
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BVyTHhelUjx59FjyxWQdpVbGtCVCGjT0t0rY/9a/ceg=; 
 b=dcrh/WVMFWHNO5EY+LBg7vYZ3VZtWbyu8m8SdB4zPB6voCescpTlfR5zLc/bMvlFUxajepN1mXFUzazPWWuNcqDZ7+UCoVOiAiS8qZLklVHbT9faJ+sxhUSGMGOa4zI8TLR079HhYD80cn55gH1BcsnOZ+ifGLFlTb4XEJMuI4o=;
X-UUID: 87efb319aab4451aa36dbc099b88f71f-20200325
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 157973017; Wed, 25 Mar 2020 01:22:26 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Mar 2020 02:22:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 25 Mar 2020 17:22:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 25 Mar 2020 17:22:22 +0800
Message-ID: <1585128143.18052.3.camel@mtksdaap41>
Subject: Re: [PATCH v4 3/6] pinctrl: mediatek: avoid virtual gpio trying to
 set reg
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Hanks Chen <hanks.chen@mediatek.com>
Date: Wed, 25 Mar 2020 17:22:23 +0800
In-Reply-To: <1585123964-10791-4-git-send-email-hanks.chen@mediatek.com>
References: <1585123964-10791-1-git-send-email-hanks.chen@mediatek.com>
 <1585123964-10791-4-git-send-email-hanks.chen@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_022233_682724_77EEE74F 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mars Cheng <mars.cheng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2020-03-25 at 16:12 +0800, Hanks Chen wrote:
> for virtual gpios, they should not do reg setting and
> should behave as expected for eint function.
> 
> Change-Id: I913501f21c841c2cb981530cd387395648f83984

Please remove Change-Id:


> Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> ---
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c |   28 ++++++++++++++++++++++
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h |    1 +
>  drivers/pinctrl/mediatek/pinctrl-paris.c         |    7 ++++++
>  3 files changed, 36 insertions(+)
> 
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 20e1c89..087d233 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -226,6 +226,31 @@ static int mtk_xt_find_eint_num(struct mtk_pinctrl *hw, unsigned long eint_n)
>  	return EINT_NA;
>  }
>  
> +/*
> + * Virtual GPIO only used inside SOC and not being exported to outside SOC.
> + * Some modules use virtual GPIO as eint (e.g. pmif or usb).
> + * In MTK platform, external interrupt (EINT) and GPIO is 1-1 mapping
> + * and we can set GPIO as eint.
> + * But some modules use specific eint which doesn't have real GPIO pin.
> + * So we use virtual GPIO to map it.
> + */
> +
> +bool mtk_is_virt_gpio(struct mtk_pinctrl *hw, unsigned int gpio_n)
> +{
> +	const struct mtk_pin_desc *desc;
> +	bool virt_gpio = false;
> +
> +	if (gpio_n >= hw->soc->npins)
> +		return virt_gpio;
> +
> +	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio_n];
> +
> +	if (desc->funcs && !desc->funcs[desc->eint.eint_m].name)
> +		virt_gpio = true;

I think removing virt_gpio and just return true/false for this function
will make it easier to read.

Joe.C

> +
> +	return virt_gpio;
> +}


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
