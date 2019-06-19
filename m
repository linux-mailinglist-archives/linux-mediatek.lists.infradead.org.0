Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2DC4B6D8
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Jun 2019 13:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JW64WTUyZlkbzilC6qtLjgWg52lOpTDc7OFhYvzDfeA=; b=SGofejPQimypZo
	eClRX/dPTmmQxhHhSkXyTjdyfBjxLb2/1oXvblgJXOY22WkP8LNNXdTAk8pmYc3O+yDZZa0KXqu4N
	D/BXkmgLXdxJ3cm4OCH9se2dm4XZkVHNHlfa7YbsQEfEoSAyQu+phJHQuOzJYGyz5KSzmbe9GmVkC
	QxQhWdpNY0rTFH5yi3Xc7goVbqHzIZ/2zxu7I7MfxaH2pfRPnrh1Cs3uSTz08GVrNA+uZ9nRtjrjI
	/VqbKzG+7hohpTLSUnX/mYURaXyguG+X3Ko4gLvI4nDVndBjLEnhWgVwsMrAk2NAd0oHKSnNKuVAx
	nrTYSke+qItMrmMVylww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYXI-0002KQ-K9; Wed, 19 Jun 2019 11:13:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYVt-0000gl-6l
 for linux-mediatek@lists.infradead.org; Wed, 19 Jun 2019 11:12:28 +0000
Received: by mail-ed1-x543.google.com with SMTP id i11so26668887edq.0
 for <linux-mediatek@lists.infradead.org>; Wed, 19 Jun 2019 04:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=b8gSr6I4/PHw9p+gRYrdGHeHiCQvnmjdEFVy5GtH/wY=;
 b=R7ay8rn4vHPS8BESMzkJ+9XUNFNrAJyOat26SQbQh8blI/gP/mDGxTveLptIZu7k/e
 /AUs6z9iHsRWWAPFDrFF/NUnkAU57M80T4U2byX24dUglr2q4bcU5c+q6kfIyFEW+Yyr
 Rixzu/35poG8hQnNG11Zp49qssCmaY071lpXPJG+ptMqqHcY/MDX2STTB0cBUK/svVw0
 ZYcZFJndR7Jq2t8TjbsK5jlXsSHRir8jVEHVARnLvbYQRtfGNByt11pK8quyhHh4QCAM
 cN4x3+VrRxOkPvbxCTiCcPfmNPYZDOLlkfXYjD7V5czzGbd3bJ4ZnBqZvDCuDe6T4m5i
 rkFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=b8gSr6I4/PHw9p+gRYrdGHeHiCQvnmjdEFVy5GtH/wY=;
 b=VK+hCrVArwoHXDfkWEuMUcLzXdF6dUT7VLA1LCkkFew4UpA209GEcR/mcN4j2b1YVj
 GEmfGtAABErNzQcw+9HjsWUqixuB0Wa3P1C2Neevh/Vd7tvCUrg7Wcx3AD23cjyizgeV
 MSMDkGtxU5oOxUNj1unMtWIQUYwxIp5sSHSPH+O8zfa63nKW+vMgMZig/JgceNfVlaD6
 mT4XysbI3CMszPAAzayVRJgtXloY+oTRLiwV/NoiuqdDWRn9p9nrjNod1EGm8LxeJ253
 lx4v/EgpGegylhYSsCEKGxkWJNGalfPny5tK/1Yt5YjVGoBDAuKSns/zNb0m6PUv9Hjz
 r1Gw==
X-Gm-Message-State: APjAAAUb9LxMmtXkwaF45Xe+iGdYSfBEJyFdALvrT1paZh5SZQBh2X+u
 Y5nxjm91dBSPAi6VhraWJnA1fIXHFOY=
X-Google-Smtp-Source: APXvYqydoVf3up2lzHE1vVZy5jLvvyhuFtcMA9Ra0svI7RSO6eG46xfZ6SzL8rQiFwa+Rg6f3PtMNQ==
X-Received: by 2002:a17:906:a394:: with SMTP id
 k20mr84948854ejz.46.1560942743189; 
 Wed, 19 Jun 2019 04:12:23 -0700 (PDT)
Received: from ziggy.stardust ([37.223.145.205])
 by smtp.gmail.com with ESMTPSA id y22sm5652368edl.29.2019.06.19.04.12.22
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 04:12:22 -0700 (PDT)
Subject: Re: [PATCH v2, 3/3] mt8183: emi: add bandwidth driver support
To: Xi Chen <xixi.chen@mediatek.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, ck.hu@mediatek.com
References: <1558670066-22484-1-git-send-email-xixi.chen@mediatek.com>
 <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 jrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <91615ca4-c60a-e0da-e762-80b5eb9c374b@gmail.com>
Date: Wed, 19 Jun 2019 13:12:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1558670066-22484-4-git-send-email-xixi.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_041225_450628_9B881F9C 
X-CRM114-Status: GOOD (  24.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mediatek@lists.infradead.org, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 24/05/2019 05:54, Xi Chen wrote:
> EMI provides interface for get bandwidth  on every 1 miliseconds.
> Currently, just support GPU bandwidth info.
> 
> Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
> ---
>  drivers/memory/Kconfig     |   9 ++
>  drivers/memory/Makefile    |   1 +
>  drivers/memory/mtk-emi.c   | 373 +++++++++++++++++++++++++++++++++++++++++++++
>  include/soc/mediatek/emi.h | 116 ++++++++++++++
>  4 files changed, 499 insertions(+)
>  create mode 100644 drivers/memory/mtk-emi.c
>  create mode 100644 include/soc/mediatek/emi.h
> 
> diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
> index 2d91b00..2a76bfe 100644
> --- a/drivers/memory/Kconfig
> +++ b/drivers/memory/Kconfig
> @@ -129,6 +129,15 @@ config JZ4780_NEMC
>  	  the Ingenic JZ4780. This controller is used to handle external
>  	  memory devices such as NAND and SRAM.
>  
> +config MTK_EMI_MBW
> +	bool "Mediatek EMI bandwidth driver"
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	help
> +	  This driver is for MTK EMI control.
> +	  If unsure, use N.
> +	  This is the first time emi upstream.

That's not a usefull information.

> +	  Only support emi bw statistics.

"The driver supports the EMI bandwith statistics."

> +
>  config MTK_SMI
>  	bool
>  	depends on ARCH_MEDIATEK || COMPILE_TEST
> diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
> index 90161de..4f8b241 100644
> --- a/drivers/memory/Makefile
> +++ b/drivers/memory/Makefile
> @@ -17,6 +17,7 @@ obj-$(CONFIG_FSL_CORENET_CF)	+= fsl-corenet-cf.o
>  obj-$(CONFIG_FSL_IFC)		+= fsl_ifc.o
>  obj-$(CONFIG_MVEBU_DEVBUS)	+= mvebu-devbus.o
>  obj-$(CONFIG_JZ4780_NEMC)	+= jz4780-nemc.o
> +obj-$(CONFIG_MTK_EMI_MBW)	+= mtk-emi.o
>  obj-$(CONFIG_MTK_SMI)		+= mtk-smi.o
>  obj-$(CONFIG_DA8XX_DDRCTL)	+= da8xx-ddrctl.o
>  obj-$(CONFIG_PL353_SMC)		+= pl353-smc.o
> diff --git a/drivers/memory/mtk-emi.c b/drivers/memory/mtk-emi.c
> new file mode 100644
> index 0000000..acbe5a6
> --- /dev/null
> +++ b/drivers/memory/mtk-emi.c
> @@ -0,0 +1,373 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 MediaTek Inc.
> + * Author: Xi Chen <xixi.chen@mediatek.com>
> + */
> +
> +#include <linux/cdev.h>
> +#include <linux/clk.h>
> +#include <linux/component.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/fs.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/time.h>
> +#include <linux/timer.h>
> +#include <soc/mediatek/emi.h>

Do we really need all of them?

> +
> +/* 67ms emi bw  */
> +#define EMI_BW_ARRAY_SIZE	67
> +
> +struct mtk_emi {
> +	struct device *dev;
> +	void __iomem *cen_emi_base;
> +	void __iomem *chn_emi_base[MAX_CH];
> +	void __iomem *emi_mpu_base;
> +

name them with consistency, e.g.:
emi_cen_base
emi_chn_base
emi_mpu_base

actually only one base is used in the driver.

> +	struct timer_list emi_bw_timer;
> +	struct timeval old_tv;
> +
> +	unsigned long long emi_bw_array[EMI_BW_ARRAY_SIZE];
> +	int emi_bw_cur_idx;
> +};
> +
> +static unsigned long long emi_get_max_bw_in_last_array(struct device *dev,
> +	unsigned long long arr[], unsigned int size)

folds this function int mtk_emi_get_max_bw.

> +{
> +	unsigned int i = 0;
> +	unsigned long long max = arr[0];
> +
> +	while (i < size) {

I'd prefer a for loop.

> +		if (arr[i] > max)
> +			max = arr[i];

max = max(arr[i], max);

> +		++i;
> +	}
> +	return max;
> +}
> +
> +unsigned long long mtk_emi_get_max_bw(struct device *dev)
> +{
> +	struct mtk_emi *emi;
> +
> +	if (!dev)
> +		return 0;
> +
> +	emi = dev_get_drvdata(dev);
> +	return emi_get_max_bw_in_last_array(dev,
> +		emi->emi_bw_array, ARRAY_SIZE(emi->emi_bw_array));
> +}
> +EXPORT_SYMBOL(mtk_emi_get_max_bw);
> +
> +static void emi_update_bw_array(struct device *dev, unsigned int val)
> +{
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	if (emi->emi_bw_cur_idx == emi->EMI_BW_ARRAY_SIZE) {

EMI_BW_ARRAY_SIZE is a define not a struct member. Please don't send random code
which you haven't even tried to compile. The patches you send should compile and
provide a working driver against upstream linux kernel.

Some more comments below, although I didn't look deeply through the whole code,
as I have the feeling that this driver was never tested. Please do so and resubmit.

> +		/* remove the first array element */
> +		memmove(emi->emi_bw_array, emi->emi_bw_array + 1,
> +			sizeof(unsigned long long) * (emi->EMI_BW_ARRAY_SIZE - 1));
> +		emi->emi_bw_array[emi->EMI_BW_ARRAY_SIZE - 1] = val;
> +	} else
> +		emi->emi_bw_array[emi->emi_bw_cur_idx++] = val;
> +}
> +
> +static void emi_dump_bw_array(struct device *dev)
> +{
> +	int i = 0;
> +	const int unit = 10;
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	while (i < emi->EMI_BW_ARRAY_SIZE) {
> +		if (i != 0 && i % unit == 0)
> +			pr_info("\n");
> +		pr_info("0x%x ", emi->emi_bw_array[i]);
> +
> +		++i;
> +	}
> +
> +	pr_info("\n");
> +}
> +
> +static void emi_counter_reset(struct device *dev)
> +{
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	writel(EMI_BMEN_DEFAULT_VALUE, EMI_BMEN);
> +	writel(EMI_MSEL_DEFAULT_VALUE, EMI_MSEL);
> +	writel(EMI_MSEL2_DEFAULT_VALUE, EMI_MSEL2);
> +	writel(EMI_BMEN2_DEFAULT_VALUE, EMI_BMEN2);
> +	writel(EMI_BMRW0_DEFAULT_VALUE, EMI_BMRW0);
> +}
> +
> +static void emi_counter_pause(struct device *dev)
> +{
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +	const unsigned int value = readl(EMI_BMEN);
> +
> +	/* BW monitor */
> +	writel(value | BUS_MON_PAUSE, EMI_BMEN);
> +}
> +
> +static void emi_counter_continue(struct device *dev)
> +{
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +	const unsigned int value = readl(EMI_BMEN);
> +
> +	/* BW monitor */
> +	writel(value & (~BUS_MON_PAUSE), EMI_BMEN);
> +}
> +
> +static void emi_counter_enable(struct device *dev, const unsigned int enable)
> +{
> +	unsigned int value, value_set;
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	value = readl(EMI_BMEN);
> +	if (!enable) {	/* disable monitor circuit */
> +		/*  bit3 =1	bit0 = 0-> clear */
> +		value_set = (value) | (BUS_MON_IDLE);
> +		writel(value_set, EMI_BMEN);
> +
> +		value_set = ((value) | (BUS_MON_IDLE)) & ~(BUS_MON_EN);
> +		writel(value_set, EMI_BMEN);
> +
> +		value_set = ((value) & ~(BUS_MON_IDLE)) & ~(BUS_MON_EN);
> +		writel(value_set, EMI_BMEN);
> +	} else {		/* enable monitor circuit */
> +		/*  bit3 =0	&   bit0=1 */
> +		value_set = (value & ~(BUS_MON_IDLE));
> +		writel(value_set, EMI_BMEN);
> +
> +		value_set = (value & ~(BUS_MON_IDLE)) | (BUS_MON_EN);
> +		writel(value_set, EMI_BMEN);
> +	}
> +}
> +
> +/*****************************************************************************
> + *  APIs
> + *****************************************************************************/
> +static void mtk_emi_mon_start(struct device *dev)
> +{
> +	emi_counter_enable(dev, 0);
> +	emi_counter_reset(dev);
> +	emi_counter_enable(dev, 1);
> +}
> +
> +static void mtk_emi_mon_restart(struct device *dev)
> +{
> +	emi_counter_continue(dev);
> +	emi_counter_enable(dev, 0);
> +	emi_counter_reset(dev);
> +	emi_counter_enable(dev, 1);
> +}
> +
> +static void mtk_emi_mon_stop(struct device *dev)
> +{
> +	emi_counter_pause(dev);
> +}
> +
> +static ssize_t emi_show_max_bw(struct device *dev,
> +				struct device_attribute *attr, char *buf)
> +{
> +	unsigned long long var, bw_cpu;
> +	unsigned int bw_gpu;
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	if (!dev) {
> +		pr_warn("dev is null!!\n");
> +		return 0;
> +	}
> +
> +	var = mtk_emi_get_max_bw();

Does this actually compile?

> +	bw_gpu = readl(EMI_BWVL_4TH) & 0x7f;
> +	bw_cpu = readl(EMI_WSCT3);
> +
> +	return scnprintf(buf, PAGE_SIZE,
> +		"gpu_max_bw:%llu(0x%x) EMI_BWVL_4TH:0x%x, cpu:%llu(0x%x)\n",
> +		var, var, bw_gpu, bw_cpu, bw_cpu);
> +}
> +
> +DEVICE_ATTR(bw,  0440, emi_show_max_bw, NULL);
> +
> +static ssize_t emi_dump_bw(struct device *dev, struct device_attribute *attr,
> +			   char *buf)
> +{
> +	unsigned long long var;
> +
> +	if (!dev) {
> +		pr_warn("dev is null!!\n");
> +		return 0;
> +	}
> +
> +	emi_dump_bw_array(dev);
> +	var = mtk_emi_get_max_bw();
> +
> +	return scnprintf(buf, PAGE_SIZE,
> +		"\temi_max_bw:%llu(0x%x)\n", var, var);
> +}
> +
> +DEVICE_ATTR(dump_bw,  0440, emi_dump_bw, NULL);
> +
> +static int emi_bw_ms = 1;
> +module_param_named(bw_ms, emi_bw_ms, int, 0664);
> +
> +static void emi_bw_timer_callback(struct timer_list *tm)
> +{
> +	struct timeval tv;
> +	unsigned long long val, cur_max;
> +	struct mtk_emi *emi = from_timer(mtk_emi, tm, emi_bw_timer);
> +
> +	do_gettimeofday(&tv);
> +
> +	/* pasue emi monitor for get WACT value*/
> +	mtk_emi_mon_stop(emi->dev);
> +
> +	val = readl(EMI_WSCT4);	/* GPU BW */
> +	val *= 8;
> +
> +	cur_max = mtk_emi_get_max_bw();
> +	emi_update_bw_array(emi->dev, val);
> +
> +	/* set mew timer expires and restart emi monitor */
> +	emi->old_tv = tv;
> +	emi->emi_bw_timer.expires = jiffies + msecs_to_jiffies(emi_bw_ms);
> +
> +	add_timer(&(emi->emi_bw_timer));
> +	mtk_emi_mon_restart(emi->dev);
> +}
> +
> +static int emi_probe(struct platform_device *pdev)
> +{
> +	struct mtk_emi *emi;
> +	struct resource *res;
> +	struct device *dev = &pdev->dev;
> +	int i, ret;
> +
> +	emi = devm_kzalloc(dev, sizeof(*emi), GFP_KERNEL);
> +	if (!emi)
> +		return -ENOMEM;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	emi->cen_emi_base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(emi->cen_emi_base)) {
> +		pr_err("[EMI] unable to map cen_emi_base\n");
> +		devm_kfree(dev, emi);
> +		return -EINVAL;
> +	}
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> +	emi->emi_mpu_base = devm_ioremap_resource(dev, res);
> +	if (IS_ERR(emi->emi_mpu_base)) {
> +		pr_err("[EMI] unable to map emi_mpu_base\n");
> +		devm_kfree(dev, emi);
> +		return -EINVAL;
> +	}
> +
> +	for (i = 0; i < MAX_CH; i++) {
> +		res = platform_get_resource(pdev, IORESOURCE_MEM, 2 + i);
> +		emi->chn_emi_base[i] = devm_ioremap_resource(dev, res);
> +		if (IS_ERR(emi->chn_emi_base[i])) {
> +			pr_err("[EMI] unable to map ch%d_emi_base\n", i);
> +			devm_kfree(dev, emi);
> +			return -EINVAL;
> +		}
> +	}
> +
> +	platform_set_drvdata(pdev, emi);
> +	emi->dev = dev;
> +
> +	/* start emi bw monitor */
> +	mtk_emi_mon_start(dev);
> +
> +	/* setup timer */
> +	timer_setup(&(emi->emi_bw_timer), NULL, 0);
> +	do_gettimeofday(&(emi->old_tv));
> +
> +	emi->emi_bw_timer.function = emi_bw_timer_callback;
> +	emi->emi_bw_timer.expires = jiffies + msecs_to_jiffies(1);
> +	add_timer(&(emi->emi_bw_timer));
> +
> +	/* debug node */
> +	ret = device_create_file(dev, &dev_attr_bw);
> +	if (ret) {
> +		dev_err(dev, "create bw file failed!\n");
> +		goto err_create_attr_bw;
> +	}
> +	ret = device_create_file(dev, &dev_attr_dump_bw);
> +	if (ret) {
> +		dev_err(dev, "create dump_bw file failed!\n");
> +		goto err_create_attr_dump_bw;
> +	}
> +
> +	return 0;
> +
> +err_create_attr_dump_bw:
> +	del_timer(&(emi->emi_bw_timer));
> +	device_remove_file(dev, &dev_attr_bw);
> +err_create_attr_bw:
> +	devm_kfree(dev, emi);
> +	return -ENOMEM;
> +}
> +
> +static int emi_remove(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct mtk_emi *emi = dev_get_drvdata(dev);
> +
> +	del_timer(&(emi->emi_bw_timer));
> +	device_remove_file(dev, &dev_attr_dump_bw);
> +	device_remove_file(dev, &dev_attr_bw);
> +
> +	devm_kfree(dev, emi);
> +	return 0;
> +}
> +
> +
> +#ifdef CONFIG_OF
> +static const struct of_device_id emi_of_ids[] = {
> +	{.compatible = "mediatek,mt8183-emi",},
> +	{}
> +};
> +#endif
> +
> +static struct platform_driver emi_bw_driver = {
> +	.probe = emi_probe,
> +	.remove = emi_remove,
> +	.driver = {
> +		.name = "emi_bw",
> +		.owner = THIS_MODULE,
> +		.pm = NULL,
> +#ifdef CONFIG_OF
> +		.of_match_table = emi_of_ids,
> +#endif
> +	},
> +};
> +
> +
> +static int __init emi_bw_init(void)
> +{
> +	int ret;
> +
> +	/* register EMI ctrl interface */
> +	ret = platform_driver_register(&emi_bw_driver);
> +	if (ret) {
> +		pr_err("[EMI/BWL] fail to register emi_bw_driver\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}
> +
> +static void __exit emi_bw_exit(void)
> +{
> +	platform_driver_unregister(&emi_bw_driver);
> +}
> +
> +postcore_initcall(emi_bw_init);
> +module_exit(emi_bw_exit);
> +
> diff --git a/include/soc/mediatek/emi.h b/include/soc/mediatek/emi.h
> new file mode 100644
> index 0000000..83bdaeb
> --- /dev/null
> +++ b/include/soc/mediatek/emi.h
> @@ -0,0 +1,116 @@
> +/* SPDX-License-Identifier: GPL-2.0  */
> +/*
> + * Copyright (c) 2015-2016 MediaTek Inc.
> + * Author: Xi Chen <xixi.chen@mediatek.com>
> + */
> +
> +#ifndef _MTK_EMI_H_
> +#define _MTK_EMI_H_
> +
> +#define MAX_CH		2
> +#define MAX_RK		2
> +
> +struct emi_info_t {

why do you use _t postfix? It's not a typedef, right?

> +	unsigned int dram_type;
> +	unsigned int ch_num;
> +	unsigned int rk_num;
> +	unsigned int rank_size[MAX_RK];
> +};
> +
> +/*****************************************************************************
> + *  Macro Definiations
> + *****************************************************************************/

No need for this comment.

> +#define EMI_REG_BASE                (0x10219000)

not used here. actually the base address should always come from DTS.

> +#define EMI_REG_BASE_MAPPED         (emi->cen_emi_base)
> +

we want to use the base with emi->emi_cen_base in the driver

> +#define EMI_MDCT                    (EMI_REG_BASE_MAPPED + 0x078)
> +#define EMI_MDCT_2ND                (EMI_REG_BASE_MAPPED + 0x07C)
> +
> +#define EMI_ARBA                    (EMI_REG_BASE_MAPPED + 0x100)
> +#define EMI_ARBB                    (EMI_REG_BASE_MAPPED + 0x108)
> +#define EMI_ARBC                    (EMI_REG_BASE_MAPPED + 0x110)
> +#define EMI_ARBD                    (EMI_REG_BASE_MAPPED + 0x118)
> +#define EMI_ARBE                    (EMI_REG_BASE_MAPPED + 0x120)
> +#define EMI_ARBF                    (EMI_REG_BASE_MAPPED + 0x128)
> +#define EMI_ARBG                    (EMI_REG_BASE_MAPPED + 0x130)
> +#define EMI_ARBH                    (EMI_REG_BASE_MAPPED + 0x138)
> +
> +#define EMI_BMEN                    (EMI_REG_BASE_MAPPED + 0x400)
> +#define EMI_BCNT                    (EMI_REG_BASE_MAPPED + 0x408)
> +#define EMI_TACT                    (EMI_REG_BASE_MAPPED + 0x410)
> +#define EMI_TSCT                    (EMI_REG_BASE_MAPPED + 0x418)
> +#define EMI_WACT                    (EMI_REG_BASE_MAPPED + 0x420)
> +#define EMI_WSCT                    (EMI_REG_BASE_MAPPED + 0x428)
> +#define EMI_BACT                    (EMI_REG_BASE_MAPPED + 0x430)
> +#define EMI_BSCT                    (EMI_REG_BASE_MAPPED + 0x438)
> +#define EMI_MSEL                    (EMI_REG_BASE_MAPPED + 0x440)
> +#define EMI_TSCT2                   (EMI_REG_BASE_MAPPED + 0x448)
> +#define EMI_TSCT3                   (EMI_REG_BASE_MAPPED + 0x450)
> +#define EMI_WSCT2                   (EMI_REG_BASE_MAPPED + 0x458)
> +#define EMI_WSCT3                   (EMI_REG_BASE_MAPPED + 0x460)
> +#define EMI_WSCT4                   (EMI_REG_BASE_MAPPED + 0x464)
> +#define EMI_MSEL2                   (EMI_REG_BASE_MAPPED + 0x468)
> +
> +#define EMI_BMEN2                   (EMI_REG_BASE_MAPPED + 0x4E8)
> +
> +#define EMI_BMRW0                   (EMI_REG_BASE_MAPPED + 0x4F8)
> +
> +#define EMI_TTYPE1                  (EMI_REG_BASE_MAPPED + 0x500)
> +#define EMI_TTYPE17                 (EMI_REG_BASE_MAPPED + 0x580)
> +
> +#define EMI_BWVL                    (EMI_REG_BASE_MAPPED + 0x7D0)
> +#define EMI_BWVL_2ND                (EMI_REG_BASE_MAPPED + 0x7D4)
> +#define EMI_BWVL_3RD                (EMI_REG_BASE_MAPPED + 0x7D8)
> +#define EMI_BWVL_4TH                (EMI_REG_BASE_MAPPED + 0x7DC)
> +#define EMI_BWVL_5TH                (EMI_REG_BASE_MAPPED + 0x7E0)
> +
> +#define EMI_CH0_REG_BASE            (0x1022D000)
> +#define EMI_CH0_REG_BASE_MAPPED     (emi->chn_emi_base[0])
> +#define EMI_CH0_DRS_ST2             (EMI_CH0_REG_BASE_MAPPED + 0x17C)
> +#define EMI_CH0_DRS_ST3             (EMI_CH0_REG_BASE_MAPPED + 0x180)
> +#define EMI_CH0_DRS_ST4             (EMI_CH0_REG_BASE_MAPPED + 0x184)
> +
> +#define EMI_CH1_REG_BASE            (0x10235000)
> +#define EMI_CH1_REG_BASE_MAPPED     (emi->chn_emi_base[1])
> +#define EMI_CH1_DRS_ST2             (EMI_CH1_REG_BASE_MAPPED + 0x17C)
> +#define EMI_CH1_DRS_ST3             (EMI_CH1_REG_BASE_MAPPED + 0x180)
> +#define EMI_CH1_DRS_ST4             (EMI_CH1_REG_BASE_MAPPED + 0x184)
> +

Many unused define. Also, we usually use the offset as define and write our code
like this:
writel(value, emi->base + EMI_MSEL2);

Regards,
Matthias

> +/*
> + * DEFAULT_VALUE
> + */
> +#define EMI_BMEN_DEFAULT_VALUE    (0x00FF0000)
> +#define EMI_BMEN2_DEFAULT_VALUE   (0x02000000)
> +#define EMI_BMRW0_DEFAULT_VALUE   (0xFFFFFFFF)
> +#define EMI_MSEL_DEFAULT_VALUE    (0x00030024)
> +#define EMI_MSEL2_DEFAULT_VALUE   (0x000000C0)
> +#define BC_OVERRUN                (0x00000100)
> +
> +/* EMI_BMEN */
> +#define BUS_MON_EN          BIT(0)
> +#define BUS_MON_PAUSE       BIT(1)
> +#define BUS_MON_IDLE        BIT(3)
> +
> +#define MAX_DRAM_CH_NUM     (2)
> +#define DRAM_RANK_NUM       (2)
> +#define DRAM_PDIR_NUM       (8)
> +#define EMI_TTYPE_NUM       (21)
> +#define EMI_TSCT_NUM        (3)
> +#define EMI_MDCT_NUM        (2)
> +#define EMI_DRS_ST_NUM      (3)
> +#define EMI_BW_LIMIT_NUM    (8)
> +
> +#define DRAMC_CG_SHIFT      (9)
> +
> +#define EMI_IDX_SIZE        (1024)
> +
> +#define EMI_BWVL_UNIT       (271)
> +
> +#define MBW_BUF_LEN         (0x800000)
> +#define DATA_CNT_PER_BLK    (35)
> +#define BLK_CNT_PER_BUF     (0x800)
> +
> +/* public apis */
> +unsigned long long emi_get_max_bw(void);
> +
> +#endif
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
