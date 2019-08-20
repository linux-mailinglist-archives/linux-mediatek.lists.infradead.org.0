Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ABA956AC
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 07:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=atxgUhf2cMOPo+k1tHva2/07fn1GA9b2jM1DDykt+cA=; b=LqIWDqMIWIlqAr
	z4jESbR7YLu7R6h0mmZDn3DwIhqgnXyL61j6SEQpilJ017elJNZBeZRCsBkI65Ro4ZZru5E4ldF5g
	97RRN4zKpCB0I70rYIdAiOONRkYBw0sr0y6LNzEv7iPk8aLNoYQjIAx4WPateLqYNIs5L8M6zqbGu
	1cEchaSqBaKi5fQw54BSonJayXLr9kULZpwXUejhd5YAeP/m0moBfZ2yhmzSKRHuKxlNSHD1Dpnj1
	sY8ZV+WIa4kYF25HL+UsBElZ8r28oRO3UQaBFqW9Cbib96qiouAxSacC3UW5cqNHfOCp9UvOn3xsw
	vcvo8hd/7BxtKQQioSeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzwlH-0007QH-GU; Tue, 20 Aug 2019 05:32:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzwlC-0007PX-EU
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 05:32:48 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzwky-0001r5-O7; Tue, 20 Aug 2019 07:32:32 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzwkw-0001MG-Jm; Tue, 20 Aug 2019 07:32:30 +0200
Date: Tue, 20 Aug 2019 07:32:30 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v4 1/10] pwm: mediatek: add a property "num-pwms"
Message-ID: <20190820053230.veu5qseftw45laka@pengutronix.de>
References: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
 <1566265225-27452-2-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566265225-27452-2-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_223246_486946_0FB7B78B 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hello,

On Tue, Aug 20, 2019 at 09:40:16AM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> =

> This adds a property "num-pwms" to avoid having an endless
> list of compatibles with no differences for the same driver.
> =

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
> Used:
> https://patchwork.kernel.org/project/linux-mediatek/list/?series=3D68207
> =

> Changes since v4:
> Follow reviewer's comments:
> Move the changes of droping the check for of_device_get_match_data
> returning non-NULL to next patch
> ---
>  drivers/pwm/pwm-mediatek.c | 30 +++++++++++++++++++++---------
>  1 file changed, 21 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index eb6674ce995f..287fda3674ce 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -55,7 +55,7 @@ static const char * const mtk_pwm_clk_name[MTK_CLK_MAX]=
 =3D {
>  };
>  =

>  struct mtk_pwm_platform_data {
> -	unsigned int num_pwms;
> +	unsigned int fallback_npwms;
>  	bool pwm45_fixup;
>  	bool has_clks;
>  };
> @@ -226,10 +226,10 @@ static const struct pwm_ops mtk_pwm_ops =3D {
>  =

>  static int mtk_pwm_probe(struct platform_device *pdev)
>  {
> -	const struct mtk_pwm_platform_data *data;
> +	struct device_node *np =3D pdev->dev.of_node;
>  	struct mtk_pwm_chip *pc;
>  	struct resource *res;
> -	unsigned int i;
> +	unsigned int i, npwms;
>  	int ret;
>  =

>  	pc =3D devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
> @@ -246,7 +246,19 @@ static int mtk_pwm_probe(struct platform_device *pde=
v)
>  	if (IS_ERR(pc->regs))
>  		return PTR_ERR(pc->regs);
>  =

> -	for (i =3D 0; i < data->num_pwms + 2 && pc->soc->has_clks; i++) {
> +	ret =3D of_property_read_u32(np, "num-pwms", &npwms);
> +	if (ret < 0) {
> +		/* It's deprecated, we should specify num_pwms via DT now. */
> +		if (pc->soc->fallback_npwms) {
> +			npwms =3D pc->soc->fallback_npwms;
> +			dev_warn(&pdev->dev, "DT is outdated, please update it\n");
> +		} else {
> +			dev_err(&pdev->dev, "failed to get number of PWMs\n");
> +			return ret;
> +		}
> +	}

I'd suggest to add here:

	if (npwms > ARRAY_SIZE(mtk_pwm_clk_name) + 2)
		npwms =3D ARRAY_SIZE(mtk_pwm_clk_name) + 2;

to ensure to not use mtk_pwm_clk_name[10].

Best regards
Uwe

> +
> +	for (i =3D 0; i < npwms + 2 && pc->soc->has_clks; i++) {
>  		pc->clks[i] =3D devm_clk_get(&pdev->dev, mtk_pwm_clk_name[i]);
>  		if (IS_ERR(pc->clks[i])) {
>  			dev_err(&pdev->dev, "clock: %s fail: %ld\n",
> @@ -260,7 +272,7 @@ static int mtk_pwm_probe(struct platform_device *pdev)
>  	pc->chip.dev =3D &pdev->dev;
>  	pc->chip.ops =3D &mtk_pwm_ops;
>  	pc->chip.base =3D -1;
> -	pc->chip.npwm =3D data->num_pwms;
> +	pc->chip.npwm =3D npwms;
>  =

>  	ret =3D pwmchip_add(&pc->chip);
>  	if (ret < 0) {
> @@ -279,25 +291,25 @@ static int mtk_pwm_remove(struct platform_device *p=
dev)
>  }
>  =

>  static const struct mtk_pwm_platform_data mt2712_pwm_data =3D {
> -	.num_pwms =3D 8,
> +	.fallback_npwms =3D 8,
>  	.pwm45_fixup =3D false,
>  	.has_clks =3D true,
>  };
>  =

>  static const struct mtk_pwm_platform_data mt7622_pwm_data =3D {
> -	.num_pwms =3D 6,
> +	.fallback_npwms =3D 6,
>  	.pwm45_fixup =3D false,
>  	.has_clks =3D true,
>  };
>  =

>  static const struct mtk_pwm_platform_data mt7623_pwm_data =3D {
> -	.num_pwms =3D 5,
> +	.fallback_npwms =3D 5,
>  	.pwm45_fixup =3D true,
>  	.has_clks =3D true,
>  };
>  =

>  static const struct mtk_pwm_platform_data mt7628_pwm_data =3D {
> -	.num_pwms =3D 4,
> +	.fallback_npwms =3D 4,
>  	.pwm45_fixup =3D true,
>  	.has_clks =3D false,
>  };
> -- =

> 2.17.1
> =

> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
