Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBE18FE82
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 10:49:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1LAvrxMkGsPY2uFQka7n5ctoc/AUfGtyRHDgMnm9es=; b=po0e3fvNE+HWWs
	6CrgcJ4xo6xKZ+KtLO1YPojLXkyuoCy2s9KQvRtmwFNyFfA0NQTWfnKlmthBqAjMEWMj908z83ECR
	BLjFv3vXAOPjEWRWCbKLyg1aaUZVrYfR+2kFI2yzCUJCgpfK4gLsRagL3BGQqrNjWVFaWHvWiihu6
	El+dV3E4YOaXyFmPEXBQcakEUoYOLzDaOLiDZ3lwC9t/1AZtwIpqs8Pj4Tc5fuOtNioffzIYYux8b
	VofbipsIbJ/HFawBY45PRXWCzvLW3YvqgnWBlwGo2KhJ+WpwKqoJEE3m0TJ2V+uUzAB3ewnDJnbh/
	B+hV27aIXkLk8K1VTv9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyXvV-0003oI-Ma; Fri, 16 Aug 2019 08:49:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyXvR-0003nW-Ra
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 08:49:35 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyXvE-0003CT-N3; Fri, 16 Aug 2019 10:49:20 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hyXvD-0002GK-0J; Fri, 16 Aug 2019 10:49:19 +0200
Date: Fri, 16 Aug 2019 10:49:18 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v3 2/10] pwm: mediatek: allocate the clks array dynamically
Message-ID: <20190816084918.gnpeosid2uqb6cgb@pengutronix.de>
References: <1565940088-845-1-git-send-email-sam.shih@mediatek.com>
 <1565940088-845-3-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565940088-845-3-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_014933_896844_D3573358 
X-CRM114-Status: GOOD (  12.74  )
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

On Fri, Aug 16, 2019 at 03:21:20PM +0800, Sam Shih wrote:
> @@ -119,9 +104,9 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip=
, struct pwm_device *pwm)
>  	if (!pc->soc->has_clks)
>  		return;
>  =

> -	clk_disable_unprepare(pc->clks[MTK_CLK_PWM1 + pwm->hwpwm]);
> -	clk_disable_unprepare(pc->clks[MTK_CLK_MAIN]);
> -	clk_disable_unprepare(pc->clks[MTK_CLK_TOP]);
> +	clk_disable_unprepare(pc->clk_pwms[pwm->hwpwm]);
> +	clk_disable_unprepare(pc->clk_main);
> +	clk_disable_unprepare(pc->clk_top);
>  }
>  =

>  static inline u32 mtk_pwm_readl(struct mtk_pwm_chip *chip, unsigned int =
num,
> @@ -141,7 +126,7 @@ static int mtk_pwm_config(struct pwm_chip *chip, stru=
ct pwm_device *pwm,
>  			  int duty_ns, int period_ns)
>  {
>  	struct mtk_pwm_chip *pc =3D to_mtk_pwm_chip(chip);
> -	struct clk *clk =3D pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
> +	struct clk *clk =3D pc->soc->has_clks ? pc->clk_pwms[pwm->hwpwm] : NULL;

iff pc->soc->has_clks is false, pc->clk_pwms is NULL, right? Checking
the latter would be cheaper. (One pointer dereference that you then
reuse compared to two pointer dereferences.)

>  	u32 clkdiv =3D 0, cnt_period, cnt_duty, reg_width =3D PWMDWIDTH,
>  	    reg_thres =3D PWMTHRES;
>  	u64 resolution;
> @@ -229,7 +214,7 @@ static int mtk_pwm_probe(struct platform_device *pdev)
>  	struct device_node *np =3D pdev->dev.of_node;
>  	struct mtk_pwm_chip *pc;
>  	struct resource *res;
> -	unsigned int i, npwms;
> +	unsigned int npwms;
>  	int ret;
>  =

>  	pc =3D devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
> @@ -255,12 +240,29 @@ static int mtk_pwm_probe(struct platform_device *pd=
ev)
>  		}
>  	}
>  =

> -	for (i =3D 0; i < npwms + 2 && pc->soc->has_clks; i++) {
> -		pc->clks[i] =3D devm_clk_get(&pdev->dev, mtk_pwm_clk_name[i]);
> -		if (IS_ERR(pc->clks[i])) {
> -			dev_err(&pdev->dev, "clock: %s fail: %ld\n",
> -				mtk_pwm_clk_name[i], PTR_ERR(pc->clks[i]));
> -			return PTR_ERR(pc->clks[i]);
> +	if (pc->soc->has_clks) {
> +		int i;
> +
> +		pc->clk_pwms =3D devm_kcalloc(&pdev->dev, npwms,
> +					    sizeof(*pc->clk_pwms), GFP_KERNEL);
> +		if (!pc->clk_pwms)
> +			return -ENOMEM;
> +
> +		pc->clk_top =3D devm_clk_get(&pdev->dev, "top");
> +		if (IS_ERR(pc->clk_top))
> +			return PTR_ERR(pc->clk_top);
> +
> +		pc->clk_main =3D devm_clk_get(&pdev->dev, "main");
> +		if (IS_ERR(pc->clk_main))
> +			return PTR_ERR(pc->clk_main);
> +
> +		for (i =3D 0; i < npwms; i++) {
> +			char name[8];
> +
> +			snprintf(name, sizeof(name), "pwm%d", i + 1);
> +			pc->clk_pwms[i] =3D devm_clk_get(&pdev->dev, name);
> +			if (IS_ERR(pc->clk_pwms[i]))
> +				return PTR_ERR(pc->clk_pwms[i]);

You dropped the error message here.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
