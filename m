Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A40E956E5
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 07:52:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgliDw366URrU9HPNgFXdrSI7RUZIXDKLafYrfsPnsQ=; b=G3FoCeusTcnV1x
	viQLnFF16Yj7j/damgqEBp9YnbwkYZB4vxjARhv32CLyXzSxfH4VbaZV1jpFqTykhvJaFOw7fCc2W
	b3OkwgK896HVhApZ9dC0QSrGKtHGvtHB2DTVRNHBSyceENmrRdEbQx4cwfFEOqIydPT4MGIN3+RAJ
	iqU7hwvrEkVXmhIRqLVEYuTFARrCpsJQF+J1kFjx0RSTN8Q+GITzW64i+p9I7Tpi7A9ZdsYG8LkbH
	Xpa8jLvN0Z1IQIVXnMv1rh8X60Sq/DCw0ZYlxLR0HfT7etbkO5jnOAv2v6fWGlWG0O/ST0p9KE+aY
	9NLLXrb3yRd1zbnLlJAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzx3j-00067l-Ii; Tue, 20 Aug 2019 05:51:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzx3f-00066s-08
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 05:51:53 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzx3T-0003cJ-E8; Tue, 20 Aug 2019 07:51:39 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hzx3S-0001r4-A2; Tue, 20 Aug 2019 07:51:38 +0200
Date: Tue, 20 Aug 2019 07:51:38 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v4 3/10] pwm: mediatek: allocate the clks array
 dynamically and fix mt7628 pwm
Message-ID: <20190820055138.hvvwdsdswrmptvej@pengutronix.de>
References: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
 <1566265225-27452-4-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566265225-27452-4-git-send-email-sam.shih@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_225151_225718_75C3D590 
X-CRM114-Status: GOOD (  24.91  )
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

On Tue, Aug 20, 2019 at 09:40:18AM +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> =

> Instead of using fixed size of arrays, allocate the memory for them
> based on the information we get from the chips.
> =

> Also fix mt7628 pwm during configure from userspace. The SoC
> is legacy MIPS and has no complex clock tree. This patch add property
> clock-frequency to the SoC specific data and legacy MIPS SoC need to
> configure it in DT. This property is use for period calculation.

This fix is worth a separate patch.

> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
> Changes since v4:
> - Follow reviewers's comments
> 1. use pc->soc->has_clks to check clocks exist or not.
> 2. Add error message when probe() unable to get clks
> - Fixes bug when SoC is old mips which has no complex clock tree.
> if clocks not exist, use the new property from DT to apply period caculat=
ion;
> otherwise, use clk_get_rate to get clock frequency and apply period cacul=
ation.
> ---
>  drivers/pwm/pwm-mediatek.c | 94 +++++++++++++++++++++++---------------
>  1 file changed, 56 insertions(+), 38 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index f9d67fb66adb..a70b69a975c1 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -35,25 +35,6 @@
>  =

>  #define PWM_CLK_DIV_MAX		7
>  =

> -enum {
> -	MTK_CLK_MAIN =3D 0,
> -	MTK_CLK_TOP,
> -	MTK_CLK_PWM1,
> -	MTK_CLK_PWM2,
> -	MTK_CLK_PWM3,
> -	MTK_CLK_PWM4,
> -	MTK_CLK_PWM5,
> -	MTK_CLK_PWM6,
> -	MTK_CLK_PWM7,
> -	MTK_CLK_PWM8,
> -	MTK_CLK_MAX,
> -};
> -
> -static const char * const mtk_pwm_clk_name[MTK_CLK_MAX] =3D {
> -	"main", "top", "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6", "pwm7",
> -	"pwm8"
> -};
> -
>  struct mtk_pwm_platform_data {
>  	unsigned int fallback_npwms;
>  	bool pwm45_fixup;
> @@ -64,12 +45,17 @@ struct mtk_pwm_platform_data {
>   * struct mtk_pwm_chip - struct representing PWM chip
>   * @chip: linux PWM chip representation
>   * @regs: base address of PWM chip
> - * @clks: list of clocks
> + * @clk_top: the top clock generator
> + * @clk_main: the clock used by PWM core
> + * @clk_pwms: the clock used by each PWM channel
>   */
>  struct mtk_pwm_chip {
>  	struct pwm_chip chip;
>  	void __iomem *regs;
> -	struct clk *clks[MTK_CLK_MAX];
> +	struct clk *clk_top;
> +	struct clk *clk_main;
> +	struct clk **clk_pwms;
> +	unsigned int clk_freq;
>  	const struct mtk_pwm_platform_data *soc;
>  };
>  =

> @@ -90,24 +76,24 @@ static int mtk_pwm_clk_enable(struct pwm_chip *chip, =
struct pwm_device *pwm)
>  	if (!pc->soc->has_clks)
>  		return 0;
>  =

> -	ret =3D clk_prepare_enable(pc->clks[MTK_CLK_TOP]);
> +	ret =3D clk_prepare_enable(pc->clk_top);
>  	if (ret < 0)
>  		return ret;
>  =

> -	ret =3D clk_prepare_enable(pc->clks[MTK_CLK_MAIN]);
> +	ret =3D clk_prepare_enable(pc->clk_main);
>  	if (ret < 0)
>  		goto disable_clk_top;
>  =

> -	ret =3D clk_prepare_enable(pc->clks[MTK_CLK_PWM1 + pwm->hwpwm]);
> +	ret =3D clk_prepare_enable(pc->clk_pwms[pwm->hwpwm]);
>  	if (ret < 0)
>  		goto disable_clk_main;
>  =

>  	return 0;
>  =

>  disable_clk_main:
> -	clk_disable_unprepare(pc->clks[MTK_CLK_MAIN]);
> +	clk_disable_unprepare(pc->clk_main);
>  disable_clk_top:
> -	clk_disable_unprepare(pc->clks[MTK_CLK_TOP]);
> +	clk_disable_unprepare(pc->clk_top);
>  =

>  	return ret;
>  }
> @@ -119,9 +105,9 @@ static void mtk_pwm_clk_disable(struct pwm_chip *chip=
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
> @@ -141,19 +127,24 @@ static int mtk_pwm_config(struct pwm_chip *chip, st=
ruct pwm_device *pwm,
>  			  int duty_ns, int period_ns)
>  {
>  	struct mtk_pwm_chip *pc =3D to_mtk_pwm_chip(chip);
> -	struct clk *clk =3D pc->clks[MTK_CLK_PWM1 + pwm->hwpwm];
> +	unsigned int clk_freq;
>  	u32 clkdiv =3D 0, cnt_period, cnt_duty, reg_width =3D PWMDWIDTH,
>  	    reg_thres =3D PWMTHRES;
>  	u64 resolution;
>  	int ret;
>  =

> +	if (pc->soc->has_clks)
> +		clk_freq =3D clk_get_rate(pc->clk_pwms[pwm->hwpwm]);
> +	else
> +		clk_freq =3D pc->clk_freq;
> +
>  	ret =3D mtk_pwm_clk_enable(chip, pwm);
>  	if (ret < 0)
>  		return ret;
>  =

>  	/* Using resolution in picosecond gets accuracy higher */
>  	resolution =3D (u64)NSEC_PER_SEC * 1000;
> -	do_div(resolution, clk_get_rate(clk));
> +	do_div(resolution, clk_freq);
>  =

>  	cnt_period =3D DIV_ROUND_CLOSEST_ULL((u64)period_ns * 1000, resolution);
>  	while (cnt_period > 8191) {
> @@ -229,7 +220,8 @@ static int mtk_pwm_probe(struct platform_device *pdev)
>  	struct device_node *np =3D pdev->dev.of_node;
>  	struct mtk_pwm_chip *pc;
>  	struct resource *res;
> -	unsigned int i, npwms;
> +	unsigned int npwms;
> +	unsigned int clk_freq;
>  	int ret;
>  =

>  	pc =3D devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
> @@ -255,13 +247,40 @@ static int mtk_pwm_probe(struct platform_device *pd=
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

Instead of using pc->soc->has_clks you could try

	ret =3D of_property_read_u32(np, "clock-frequency", &clk_freq);

and depend on that in the above if. This might allow to drop the
.has_clks member.

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

You missed to add an error message for "top" and "main".

> +		for (i =3D 0; i < npwms; i++) {
> +			char name[8];
> +
> +			snprintf(name, sizeof(name), "pwm%d", i + 1);
> +			pc->clk_pwms[i] =3D devm_clk_get(&pdev->dev, name);
> +			if (IS_ERR(pc->clk_pwms[i])) {
> +				dev_err(&pdev->dev, "failed to get %s\n", name);

I'd mention "clock" in the error string and the return code.

> +				return PTR_ERR(pc->clk_pwms[i]);
> +			}
> +		}
> +	} else {
> +		ret =3D of_property_read_u32(np, "clock-frequency",
> +						&clk_freq);

Please align follow up lines to the opening (.

> +		if (ret < 0) {
> +			dev_err(&pdev->dev, "failed to get clk_freq\n");
> +			return ret;
>  		}
> +		pc->clk_freq =3D clk_freq;
>  	}
>  =

>  	platform_set_drvdata(pdev, pc);

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
