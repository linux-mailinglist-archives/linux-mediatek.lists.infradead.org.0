Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FCE1B54DB
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 08:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=618QzPM4je/aVaIxM4iqnBarh7z9g9Hy6uG0VZqksjs=; b=E1ImHzzFGi406r
	vfEXmLxoFA46Vzly7uUB9fOU7+4+vvMTAFYqxneUWxnRUCazOexR1lJI8XW8SqRtqPh8Ex7cFQFmW
	XNudEZmi4xE8oLca+bkclggjxUflCwER9kYRpSAEiiPd58wtFER7+IqJSYunrMFh5z+FDLl3aStfg
	5a9srdEO2yY8E08hVbNEUV3c/9HYpYx/Zq61Et5PY0Ca0ZsRYs5sxkC1g4SCnX68J+HxVOk1pSror
	/3AX3k7NN5x/kL3xPvaWoqeknqGK8f/oirrxtHE0JB3SwP1ZSwx1XQUHnfxJ6PIqhocjfDnU/pssn
	5bY9atfGx+svz9j5lPYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRVdy-0003eV-Kv; Thu, 23 Apr 2020 06:47:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRVdu-0003cD-GC
 for linux-mediatek@lists.infradead.org; Thu, 23 Apr 2020 06:47:28 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jRVdj-0004gn-SR; Thu, 23 Apr 2020 08:47:15 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jRVdi-0007cN-7Y; Thu, 23 Apr 2020 08:47:14 +0200
Date: Thu, 23 Apr 2020 08:47:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Fengping yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v5 3/3] drivers: input: keyboard: add mtk keypad driver
Message-ID: <20200423064714.uxmkssggej4ewvjn@pengutronix.de>
References: <20200423011958.30521-1-fengping.yu@mediatek.com>
 <20200423011958.30521-4-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423011958.30521-4-fengping.yu@mediatek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:42:34 up 159 days, 21:01, 166 users,  load average: 0.06, 0.08,
 0.03
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_234726_704375_A8D0258D 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: wsd_upstream@mediatek.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-input@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Fengping,

On 20-04-23 09:20, Fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>

Missing commit message?

> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  drivers/input/keyboard/Kconfig   |   9 ++
>  drivers/input/keyboard/Makefile  |   1 +
>  drivers/input/keyboard/mtk-kpd.c | 242 +++++++++++++++++++++++++++++++
>  3 files changed, 252 insertions(+)
>  create mode 100644 drivers/input/keyboard/mtk-kpd.c
> 
> diff --git a/drivers/input/keyboard/Kconfig b/drivers/input/keyboard/Kconfig
> index 4706ff09f0e8..4a387d8683b1 100644
> --- a/drivers/input/keyboard/Kconfig
> +++ b/drivers/input/keyboard/Kconfig
> @@ -772,6 +772,15 @@ config KEYBOARD_BCM
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called bcm-keypad.
>  
> +config KEYBOARD_MTK_KPD
> +	tristate "MediaTek Keypad Support"

I think here are some missing deps.

> +	help
> +	  Say Y here if you want to use the keypad.

I would write:
"Say Y here if you want to use the keypad on MediaTek SoCs"

> +	  If unuse, say N.

s/unuse/unsure/

> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called mtk-kpd.
> +
>  config KEYBOARD_MTK_PMIC
>  	tristate "MediaTek PMIC keys support"
>  	depends on MFD_MT6397
> diff --git a/drivers/input/keyboard/Makefile b/drivers/input/keyboard/Makefile
> index f5b17524adf2..63324d3e36c5 100644
> --- a/drivers/input/keyboard/Makefile
> +++ b/drivers/input/keyboard/Makefile
> @@ -42,6 +42,7 @@ obj-$(CONFIG_KEYBOARD_MATRIX)		+= matrix_keypad.o
>  obj-$(CONFIG_KEYBOARD_MAX7359)		+= max7359_keypad.o
>  obj-$(CONFIG_KEYBOARD_MCS)		+= mcs_touchkey.o
>  obj-$(CONFIG_KEYBOARD_MPR121)		+= mpr121_touchkey.o
> +obj-$(CONFIG_KEYBOARD_MTK_KPD)		+= mtk-kpd.o
>  obj-$(CONFIG_KEYBOARD_MTK_PMIC) 	+= mtk-pmic-keys.o
>  obj-$(CONFIG_KEYBOARD_NEWTON)		+= newtonkbd.o
>  obj-$(CONFIG_KEYBOARD_NOMADIK)		+= nomadik-ske-keypad.o
> diff --git a/drivers/input/keyboard/mtk-kpd.c b/drivers/input/keyboard/mtk-kpd.c
> new file mode 100644
> index 000000000000..7f8f091b2734
> --- /dev/null
> +++ b/drivers/input/keyboard/mtk-kpd.c
> @@ -0,0 +1,242 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + * Author Terry Chang <terry.chang@mediatek.com>
> + */
> +#include <linux/clk.h>
> +#include <linux/gpio.h>
> +#include <linux/init.h>
> +#include <linux/input/matrix_keypad.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_irq.h>
> +#include <linux/pinctrl/consumer.h>
> +#include <linux/platform_device.h>

Pls, check if all includes are needed.

> +
> +#define KPD_NAME	"mtk-kpd"
> +
> +#define KP_MEM		0x0004
> +#define KP_DEBOUNCE	0x0018
> +
> +#define KPD_DEBOUNCE_MASK	GENMASK(13, 0)
> +#define KPD_DEBOUNCE_MAX	256000
> +#define KPD_NUM_MEMS	5
> +#define KPD_NUM_BITS	136	/* 4 * 32 + 8 MEM5 only use 8 BITS */
> +#define BITS_TO_U32(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))
> +
> +struct mtk_keypad {
> +	struct input_dev *input_dev;
> +	struct clk *clk;
> +	void __iomem *base;
> +	unsigned int irqnr;

You don't need the irqnr here.

> +	bool wakeup;
> +	u32 key_debounce;
> +	u32 n_rows;
> +	u32 n_cols;
> +	DECLARE_BITMAP(keymap_state, KPD_NUM_BITS);
> +};
> +
> +static irqreturn_t kpd_irq_handler(int irq, void *dev_id)
> +{
> +	/* use _nosync to avoid deadlock */

What did you mean by this comment?

> +	struct mtk_keypad *keypad = dev_id;
> +	unsigned short *keycode = keypad->input_dev->keycode;
> +	DECLARE_BITMAP(new_state, KPD_NUM_BITS);
> +	DECLARE_BITMAP(change, KPD_NUM_BITS);
> +	int bit_nr;
> +	int pressed;
> +	unsigned short code;
> +
> +	memcpy_fromio(new_state, keypad->base + KP_MEM, KPD_NUM_MEMS);

As I written below, pls make use of the regmap() framework.

> +	bitmap_xor(change, new_state, keypad->keymap_state, KPD_NUM_BITS);
> +
> +	for_each_set_bit(bit_nr, change, KPD_NUM_BITS) {
> +		pressed = test_bit(bit_nr, new_state) == 0U;

I would write !test_bit() and add a comment /* pressed == 0 */

> +		dev_dbg(&keypad->input_dev->dev, "%s",
> +			pressed ? "pressed" : "released");
> +
> +	/* per 32bit register only use low 16bit as keypad mem register */

Pls, align the comment.

> +		code = keycode[bit_nr - 16 * (BITS_TO_U32(bit_nr) - 1)];
> +
> +		input_report_key(keypad->input_dev, code, pressed);
> +		input_sync(keypad->input_dev);
> +
> +		dev_dbg(&keypad->input_dev->dev,
> +			"report Linux keycode = %d\n", code);
> +	}
> +
> +	bitmap_copy(keypad->keymap_state, new_state, KPD_NUM_BITS);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int kpd_get_dts_info(struct mtk_keypad *keypad)
> +{
> +	int ret;
> +	struct device *dev = keypad->input_dev->dev.parent;
> +	struct device_node *node = dev->of_node;
> +
> +	ret = matrix_keypad_parse_properties(dev, &keypad->n_rows,
> +					     &keypad->n_cols);
> +

Unnecessary newline.

> +	if (ret) {
> +		dev_err(dev, "Failed to parse keypad params\n");
> +		return ret;
> +	}
> +
> +	ret = device_property_read_u32(dev, "mediatek,debounce-us",
> +				   &keypad->key_debounce);
> +	if (ret) {
> +		dev_err(dev, "Failed to read mediatek debounce time\n");
> +		return ret;
> +	}
> +
> +	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
> +		dev_err(dev, "Debounce time exceeds the maximum allowed time 256ms\n");
> +		return -EINVAL;
> +	}
> +
> +	keypad->wakeup = device_property_read_bool(node, "wakeup-source");

Did you test this? It should be:

device_property_read_bool(dev, "wakeup-source");

> +
> +	dev_dbg(dev, "n_row=%d n_col=%d debounce=%d\n",
> +		keypad->n_rows, keypad->n_cols,
> +		keypad->key_debounce);
> +
> +	return 0;
> +}
> +
> +static int kpd_pdrv_probe(struct platform_device *pdev)
> +{
> +	struct mtk_keypad *keypad;
> +	struct pinctrl *keypad_pinctrl;
> +	struct pinctrl_state *kpd_default;
> +	int ret;
> +
> +	keypad = devm_kzalloc(&pdev->dev, sizeof(*keypad), GFP_KERNEL);
> +	if (!keypad)
> +		return -ENOMEM;
> +
> +	bitmap_fill(keypad->keymap_state, KPD_NUM_BITS);
> +
> +	keypad->input_dev = devm_input_allocate_device(&pdev->dev);
> +	if (!keypad->input_dev) {
> +		dev_err(&pdev->dev, "Failed to allocate input dev\n");
> +		return -ENOMEM;
> +	}
> +
> +	keypad->input_dev->name = KPD_NAME;
> +	keypad->input_dev->id.bustype = BUS_HOST;
> +
> +	ret = kpd_get_dts_info(keypad);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to get dts info\n");
> +		return ret;
> +	}
> +
> +	ret = matrix_keypad_build_keymap(NULL, NULL,
> +					keypad->n_rows,
> +					keypad->n_cols,
> +					NULL,
> +					keypad->input_dev);
> +

Unnecessary Newline.

> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to build keymap\n");
> +		return ret;
> +	}
> +
> +	input_set_drvdata(keypad->input_dev, keypad);
> +
> +	keypad->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(keypad->base)) {
> +		dev_err(&pdev->dev, "Failed to get resource and iomap keypad\n");
> +		return PTR_ERR(keypad->base);
> +	}
> +
> +	if (keypad->key_debounce > KPD_DEBOUNCE_MAX) {
> +		dev_err(&pdev->dev, "Invalid debounce time value.\n");
> +		return -EINVAL;
> +	}

This check is already done withn the kpd_get_dts_info(). I would say to
drop the kpd_get_dts_info() function and probe it all within the probe()
function. It is not that much data you need and it removes the wakupsrc
var fromt the driver state. Furthermore devm_platform_ioremap_resource()
and devm_clk_get() parses the DT too. I would parse the deps before you
setup and fill the input_dev to fail early.

> +	writew(keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK,
> +		keypad->base + KP_DEBOUNCE);

Also I would avoid this completely and instead use the
regmap() interface which has mmio support.

> +	keypad->clk = devm_clk_get(&pdev->dev, "kpd");
> +	if (IS_ERR(keypad->clk)) {
> +		return PTR_ERR(keypad->clk);
> +	}
> +
> +	ret = clk_prepare_enable(keypad->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "cannot prepare/enable keypad clock\n");
> +		return ret;
> +	}

Nit you can add a devm_add_action_or_reset() here to avoid the goto:
error handling.

> +	keypad_pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(keypad_pinctrl)) {
> +		ret = PTR_ERR(keypad_pinctrl);
> +		goto disable_kpd_clk;
> +	}
> +
> +	kpd_default = pinctrl_lookup_state(keypad_pinctrl, "default");
> +	if (IS_ERR(kpd_default)) {
> +		dev_err(&pdev->dev, "No default pinctrl state\n");
> +		ret = PTR_ERR(kpd_default);
> +		goto disable_kpd_clk;
> +	}
> +
> +	pinctrl_select_state(keypad_pinctrl, kpd_default);
> +
> +	keypad->irqnr = platform_get_irq(pdev, 0);

As writting above, the irqnr can be a local var.

> +	if (keypad->irqnr < 0) {
> +		dev_err(&pdev->dev, "Failed to get irq\n");
> +		ret = -keypad->irqnr;
> +		goto disable_kpd_clk;
> +	}
> +
> +	ret = devm_request_irq(&pdev->dev, keypad->irqnr,
> +				kpd_irq_handler, 0,
> +				KPD_NAME, keypad);

Why do you don't use the threaded irq [devm_request_threaded_irq()]?

> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to request IRQ#%d:%d\n",
> +						keypad->irqnr, ret);
> +		goto disable_kpd_clk;
> +	}
> +
> +	ret = input_register_device(keypad->input_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to register device\n");
> +		goto disable_kpd_clk;
> +	}
> +
> +	device_init_wakeup(&pdev->dev, keypad->wakeup);
> +
> +	platform_set_drvdata(pdev, keypad);

Where do you need the drvdata? It seems useless.

> +	return 0;
> +
> +disable_kpd_clk:
> +	clk_disable_unprepare(keypad->clk);
> +	return ret;
> +}
> +
> +static const struct of_device_id kpd_of_match[] = {
> +	{.compatible = "mediatek,kp"},
> +	{}

Nit { }

or

{ /*sentinel*/ }

> +};

MODULE_DEVICE_TABLE(of, kpd_of_match);

> +
> +static struct platform_driver kpd_pdrv = {
> +	.probe = kpd_pdrv_probe,
> +	.driver = {
> +		   .name = KPD_NAME,
> +		   .of_match_table = kpd_of_match,
> +	},
> +};
> +

Unnecessary newline.

Regards,
  Marco

> +module_platform_driver(kpd_pdrv);
> +
> +MODULE_AUTHOR("Mediatek Corporation");
> +MODULE_DESCRIPTION("MTK Keypad (KPD) Driver");
> +MODULE_LICENSE("GPL");

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
