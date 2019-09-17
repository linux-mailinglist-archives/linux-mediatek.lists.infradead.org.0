Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9C7B49AA
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 10:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVHUtbf5BpfyHSDGdvb794IkhWZMx19AHnGR/z4p/dE=; b=jdW9CzrEwjCSAR
	iC+CXjURRj9xY29K3kkYxf7JqPf+9d0EnYcho8PezaWThBBhIih+ynKAi4vuHJTNcGLdXa72ZFR/Q
	JggFynaV3i0XrY5pL19ILuPn3oKrtKahdwE36nOST7fIeS7AduSm8YFfxdYYUB17sqb+BhBV2PA6C
	OpEQf6HgkyTkTtpKsiZO/z2ZcjOWLL1A66BS529NVg6V6SmMeMZqEsDADKMeoHldle0Z1lZ4saxLs
	8jA96MWEFYRZtkwvK2rivZmhtyOS7VW4Kzjmho506SKpUKwSKl6koY1elIIs0sK0PR6x0vHEowQAs
	MCE6AeLOC/VG5A7oQtqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA90M-0000ef-Mu; Tue, 17 Sep 2019 08:38:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA90I-0000eL-RG
 for linux-mediatek@lists.infradead.org; Tue, 17 Sep 2019 08:38:32 +0000
X-UUID: 23e33e44bab048b79f403016eac525ab-20190917
X-UUID: 23e33e44bab048b79f403016eac525ab-20190917
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 632877343; Tue, 17 Sep 2019 00:38:26 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 01:38:24 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 16:38:23 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Sep 2019 16:38:23 +0800
Message-ID: <1568709504.12617.4.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary  search in mtk_hw_pin_field_lookup()
From: Light Hsieh <light.hsieh@mediatek.com>
To: <linus.walleij@linaro.org>
Date: Tue, 17 Sep 2019 16:38:24 +0800
In-Reply-To: <1568708771-12409-1-git-send-email-light.hsieh@mediatek.com>
References: <1568708771-12409-1-git-send-email-light.hsieh@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_013830_892250_443C5AF0 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Cc: linux-gpio@vger.kernel.org, sean.wang@kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear reviewers,

v3 fix build error in v2 as follows:

1.   In drivers/pinctrl/mediatek/pinctrl-paris.c of patch series 3/5:
-	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &val);
-	if (err)
-		return err;
-
-	if (!val)
-		return -EINVAL;
-
+	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_SR, &ret);

2.   In drivers/pinctrl/mediatek/pinctrl-mt6765.c of patch series 4/5:
-	.bias_disable_set = mtk_pinconf_bias_disable_set,
-	.bias_disable_get = mtk_pinconf_bias_disable_get,
-	.bias_set = mtk_pinconf_bias_set,
-	.bias_get = mtk_pinconf_bias_get,
+	.bias_set_combo = mtk_pinconf_bias_set_combo,
+	.bias_get_combo = mtk_pinconf_bias_get_combo,



On Tue, 2019-09-17 at 16:26 +0800, Light Hsieh wrote:
> 1. Check if gpio pin number is in valid range to prevent from get invalid
>    pointer 'desc' in the following code:
> 	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
> 
> 2. Use binary search in mtk_hw_pin_field_lookup()
>    Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
>    search.
> 
> ---
>  drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c | 24 +++++++++++++++++++-----
>  drivers/pinctrl/mediatek/pinctrl-paris.c         | 19 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> index 20e1c89..4687f63 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
> @@ -68,7 +68,7 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
>  {
>  	const struct mtk_pin_field_calc *c, *e;
>  	const struct mtk_pin_reg_calc *rc;
> -	u32 bits;
> +	u32 bits, start = 0, end, found = 0, check;
>  
>  	if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
>  		rc = &hw->soc->reg_cal[field];
> @@ -79,21 +79,32 @@ static int mtk_hw_pin_field_lookup(struct mtk_pinctrl *hw,
>  		return -ENOTSUPP;
>  	}
>  
> +	end = rc->nranges - 1;
>  	c = rc->range;
>  	e = c + rc->nranges;
>  
> -	while (c < e) {
> -		if (desc->number >= c->s_pin && desc->number <= c->e_pin)
> +	while (start <= end) {
> +		check = (start + end) >> 1;
> +		if (desc->number >= rc->range[check].s_pin
> +		 && desc->number <= rc->range[check].e_pin) {
> +			found = 1;
>  			break;
> -		c++;
> +		} else if (start == end)
> +			break;
> +		else if (desc->number < rc->range[check].s_pin)
> +			end = check - 1;
> +		else
> +			start = check + 1;
>  	}
>  
> -	if (c >= e) {
> +	if (!found) {
>  		dev_dbg(hw->dev, "Not support field %d for pin = %d (%s)\n",
>  			field, desc->number, desc->name);
>  		return -ENOTSUPP;
>  	}
>  
> +	c = rc->range + check;
> +
>  	if (c->i_base > hw->nbase - 1) {
>  		dev_err(hw->dev,
>  			"Invalid base for field %d for pin = %d (%s)\n",
> @@ -182,6 +193,9 @@ int mtk_hw_set_value(struct mtk_pinctrl *hw, const struct mtk_pin_desc *desc,
>  	if (err)
>  		return err;
>  
> +	if (value < 0 || value > pf.mask)
> +		return -EINVAL;
> +
>  	if (!pf.next)
>  		mtk_rmw(hw, pf.index, pf.offset, pf.mask << pf.bitpos,
>  			(value & pf.mask) << pf.bitpos);
> diff --git a/drivers/pinctrl/mediatek/pinctrl-paris.c b/drivers/pinctrl/mediatek/pinctrl-paris.c
> index 923264d..28b4951 100644
> --- a/drivers/pinctrl/mediatek/pinctrl-paris.c
> +++ b/drivers/pinctrl/mediatek/pinctrl-paris.c
> @@ -693,6 +693,9 @@ static int mtk_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>  	const struct mtk_pin_desc *desc;
>  	int value, err;
>  
> +	if (gpio > hw->soc->npins)
> +		return -EINVAL;
> +
>  	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>  
>  	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DIR, &value);
> @@ -708,6 +711,9 @@ static int mtk_gpio_get(struct gpio_chip *chip, unsigned int gpio)
>  	const struct mtk_pin_desc *desc;
>  	int value, err;
>  
> +	if (gpio > hw->soc->npins)
> +		return -EINVAL;
> +
>  	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>  
>  	err = mtk_hw_get_value(hw, desc, PINCTRL_PIN_REG_DI, &value);
> @@ -722,6 +728,9 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
>  	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
>  	const struct mtk_pin_desc *desc;
>  
> +	if (gpio > hw->soc->npins)
> +		return;
> +
>  	desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>  
>  	mtk_hw_set_value(hw, desc, PINCTRL_PIN_REG_DO, !!value);
> @@ -729,12 +738,22 @@ static void mtk_gpio_set(struct gpio_chip *chip, unsigned int gpio, int value)
>  
>  static int mtk_gpio_direction_input(struct gpio_chip *chip, unsigned int gpio)
>  {
> +	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> +
> +	if (gpio > hw->soc->npins)
> +		return -EINVAL;
> +
>  	return pinctrl_gpio_direction_input(chip->base + gpio);
>  }
>  
>  static int mtk_gpio_direction_output(struct gpio_chip *chip, unsigned int gpio,
>  				     int value)
>  {
> +	struct mtk_pinctrl *hw = gpiochip_get_data(chip);
> +
> +	if (gpio > hw->soc->npins)
> +		return -EINVAL;
> +
>  	mtk_gpio_set(chip, gpio, value);
>  
>  	return pinctrl_gpio_direction_output(chip->base + gpio);



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
