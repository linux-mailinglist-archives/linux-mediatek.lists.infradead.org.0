Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51244158CB
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 07:11:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3T8D5331aUTrJIqzIf6gwVlyIvklGyG4T0O+ivKMMY=; b=InJktFvRPLFtxB
	Xtj88vNp73ePUtoTjKWRallbW3IoZ+RLrZEupUtK8Z+UNR7wR/9xG85Mye6F+M8wM5jscl9BwLLiR
	UvY4O0VDv9t9Sw9ZoRWvWOAYuNYq64sOSycr6wVtMtlboaCsxRyFpX4WnNZ0bhwgk/wqtLLWL1Ikl
	5iObHxoGGeQ61yiOA5moK66W4SvoxVCXOUgUbm25tqYS4hzzmYWQbBGJAFlhD/DZq2nK0zpHk55Fe
	eMeU48eI/AxwZQQfpXUkN2CJ043jSibSg+uNDlxjFtJrDwhyn09WjoK9WS99M6tzm63WFknpj+GrO
	MlU99TX63O6DzqzyrZoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsOL-000114-2g; Tue, 07 May 2019 05:11:49 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsOH-000103-KA
 for linux-mediatek@lists.infradead.org; Tue, 07 May 2019 05:11:47 +0000
Received: by mail-qk1-x741.google.com with SMTP id j1so3522941qkk.12
 for <linux-mediatek@lists.infradead.org>; Mon, 06 May 2019 22:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cuZqPiaHdRyK5EsQDblRbMvvSGa3s4Eect3883erhaw=;
 b=lxgDoRldxbno/9ylfSOWpMK4wf+ifKBt1gdK6Hr5OyVxT11AXQmUWzCbwhhFMT/OO8
 2784rf5TD+RhMEqffwxwRexkOi2qFBdE1UgNnfLUkYFSMMV2sg0XjAg5ThMqvkKPjqYO
 K6uH/pZITYdD8lXrgF1MPDp6xtsGFLrDUCPEA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cuZqPiaHdRyK5EsQDblRbMvvSGa3s4Eect3883erhaw=;
 b=gGxAcWw9kYkvm+nrrh4vXLyunyN7gSf3pZd8lSgk5rclofsJQFqmM6VqmRgO9XOTYO
 RLk1ZEqLWmsCSBxBRjyhCklG6z06LjrH1xeg5VGf7xYpe09Jw25ynJJ6ns0nE1W6Owkx
 vePp1MRSRW8Yk8VnrAusKlmBajzl/P34EQcuF8uyYa63fTfwLO6zbhpz1Z8rfbePsfHt
 H+5UW6EJ+TgLQW2ibrS6YjdAp5FJYwoAOloUTp/zZG3z8XvBeL6SFbY7V19bPQgLAowz
 Qwyf0e/BTP84bocAjb/aDD+GePXUYNRF/Xjc4lcwXC6lYmXgM8kDGPPT8QLrDjhtrVym
 ECEQ==
X-Gm-Message-State: APjAAAUi0JUkvGpi59rTTYHQK9eW8VpNAuB8NBCLOwm+xquhfRxeOsBR
 iqmGVnkzsLMaueqSM+vxVTY+ihDvd/Uzm0CMI8Zg0Q==
X-Google-Smtp-Source: APXvYqyv5EQ5irNCPA4T846DhHCo00ogGDkwgn6SQE1+cGNgCsTqViygCDR1Q1vSaMXgl9kq9SZ9jC3yzZea+zCQXdQ=
X-Received: by 2002:a05:620a:1670:: with SMTP id
 d16mr10808413qko.288.1557205903573; 
 Mon, 06 May 2019 22:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
 <20190503093117.54830-3-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <20190503093117.54830-3-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 7 May 2019 14:11:32 +0900
Message-ID: <CANMq1KCGudrXDB-A=1VZ5PbA0gS49S5M-On4Tbn8OW+615joSQ@mail.gmail.com>
Subject: Re: [PATCH v3 02/10] mfd: mt6397: extract irq related code from core
 driver
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_221145_662231_6C7BF807 
X-CRM114-Status: GOOD (  23.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Claire Chang <tientzu@chromium.org>,
 Eddie Huang <eddie.huang@mediatek.com>, Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 6:33 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> In order to support different types of irq design, we decide to add
> separate irq drivers for different design and keep mt6397 mfd core
> simple and reusable to all generations of PMICs so far.
>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/Makefile            |   3 +-
>  drivers/mfd/mt6397-core.c       | 146 --------------------------
>  drivers/mfd/mt6397-irq.c        | 181 ++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h |   9 ++
>  4 files changed, 192 insertions(+), 147 deletions(-)
>  create mode 100644 drivers/mfd/mt6397-irq.c
>
> diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
> index b4569ed7f3f3..ab1e228b5a2f 100644
> --- a/drivers/mfd/Makefile
> +++ b/drivers/mfd/Makefile
> @@ -234,7 +234,8 @@ obj-$(CONFIG_INTEL_SOC_PMIC)        += intel-soc-pmic.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_BXTWC)     += intel_soc_pmic_bxtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTWC)     += intel_soc_pmic_chtwc.o
>  obj-$(CONFIG_INTEL_SOC_PMIC_CHTDC_TI)  += intel_soc_pmic_chtdc_ti.o
> -obj-$(CONFIG_MFD_MT6397)       += mt6397-core.o
> +mt6397-objs    := mt6397-core.o mt6397-irq.o
> +obj-$(CONFIG_MFD_MT6397)       += mt6397.o
>
>  obj-$(CONFIG_MFD_ALTERA_A10SR) += altera-a10sr.o
>  obj-$(CONFIG_MFD_STPMIC1)      += stpmic1.o
> diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
> index c9393bc86743..c80f0449fe7e 100644
> --- a/drivers/mfd/mt6397-core.c
> +++ b/drivers/mfd/mt6397-core.c
> @@ -26,10 +26,6 @@
>  #define MT6397_RTC_BASE                0xe000
>  #define MT6397_RTC_SIZE                0x3e
>
> -#define MT6323_CHIP_ID         0x23
> -#define MT6391_CHIP_ID         0x91
> -#define MT6397_CHIP_ID         0x97
> -
>  static const struct resource mt6397_rtc_resources[] = {
>         {
>                 .start = MT6397_RTC_BASE,
> @@ -94,148 +90,6 @@ static const struct mfd_cell mt6397_devs[] = {
>         }
>  };
>
> -static void mt6397_irq_lock(struct irq_data *data)
> -{
> -       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> -
> -       mutex_lock(&mt6397->irqlock);
> -}
> -
> -static void mt6397_irq_sync_unlock(struct irq_data *data)
> -{
> -       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> -
> -       regmap_write(mt6397->regmap, mt6397->int_con[0],
> -                    mt6397->irq_masks_cur[0]);
> -       regmap_write(mt6397->regmap, mt6397->int_con[1],
> -                    mt6397->irq_masks_cur[1]);
> -
> -       mutex_unlock(&mt6397->irqlock);
> -}
> -
> -static void mt6397_irq_disable(struct irq_data *data)
> -{
> -       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> -       int shift = data->hwirq & 0xf;
> -       int reg = data->hwirq >> 4;
> -
> -       mt6397->irq_masks_cur[reg] &= ~BIT(shift);
> -}
> -
> -static void mt6397_irq_enable(struct irq_data *data)
> -{
> -       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> -       int shift = data->hwirq & 0xf;
> -       int reg = data->hwirq >> 4;
> -
> -       mt6397->irq_masks_cur[reg] |= BIT(shift);
> -}
> -
> -#ifdef CONFIG_PM_SLEEP
> -static int mt6397_irq_set_wake(struct irq_data *irq_data, unsigned int on)
> -{
> -       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(irq_data);
> -       int shift = irq_data->hwirq & 0xf;
> -       int reg = irq_data->hwirq >> 4;
> -
> -       if (on)
> -               mt6397->wake_mask[reg] |= BIT(shift);
> -       else
> -               mt6397->wake_mask[reg] &= ~BIT(shift);
> -
> -       return 0;
> -}
> -#else
> -#define mt6397_irq_set_wake NULL
> -#endif
> -
> -static struct irq_chip mt6397_irq_chip = {
> -       .name = "mt6397-irq",
> -       .irq_bus_lock = mt6397_irq_lock,
> -       .irq_bus_sync_unlock = mt6397_irq_sync_unlock,
> -       .irq_enable = mt6397_irq_enable,
> -       .irq_disable = mt6397_irq_disable,
> -       .irq_set_wake = mt6397_irq_set_wake,
> -};
> -
> -static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
> -               int irqbase)
> -{
> -       unsigned int status;
> -       int i, irq, ret;
> -
> -       ret = regmap_read(mt6397->regmap, reg, &status);
> -       if (ret) {
> -               dev_err(mt6397->dev, "Failed to read irq status: %d\n", ret);
> -               return;
> -       }
> -
> -       for (i = 0; i < 16; i++) {
> -               if (status & BIT(i)) {
> -                       irq = irq_find_mapping(mt6397->irq_domain, irqbase + i);
> -                       if (irq)
> -                               handle_nested_irq(irq);
> -               }
> -       }
> -
> -       regmap_write(mt6397->regmap, reg, status);
> -}
> -
> -static irqreturn_t mt6397_irq_thread(int irq, void *data)
> -{
> -       struct mt6397_chip *mt6397 = data;
> -
> -       mt6397_irq_handle_reg(mt6397, mt6397->int_status[0], 0);
> -       mt6397_irq_handle_reg(mt6397, mt6397->int_status[1], 16);
> -
> -       return IRQ_HANDLED;
> -}
> -
> -static int mt6397_irq_domain_map(struct irq_domain *d, unsigned int irq,
> -                                       irq_hw_number_t hw)
> -{
> -       struct mt6397_chip *mt6397 = d->host_data;
> -
> -       irq_set_chip_data(irq, mt6397);
> -       irq_set_chip_and_handler(irq, &mt6397_irq_chip, handle_level_irq);
> -       irq_set_nested_thread(irq, 1);
> -       irq_set_noprobe(irq);
> -
> -       return 0;
> -}
> -
> -static const struct irq_domain_ops mt6397_irq_domain_ops = {
> -       .map = mt6397_irq_domain_map,
> -};
> -
> -static int mt6397_irq_init(struct mt6397_chip *mt6397)
> -{
> -       int ret;
> -
> -       mutex_init(&mt6397->irqlock);
> -
> -       /* Mask all interrupt sources */
> -       regmap_write(mt6397->regmap, mt6397->int_con[0], 0x0);
> -       regmap_write(mt6397->regmap, mt6397->int_con[1], 0x0);
> -
> -       mt6397->irq_domain = irq_domain_add_linear(mt6397->dev->of_node,
> -               MT6397_IRQ_NR, &mt6397_irq_domain_ops, mt6397);
> -       if (!mt6397->irq_domain) {
> -               dev_err(mt6397->dev, "could not create irq domain\n");
> -               return -ENOMEM;
> -       }
> -
> -       ret = devm_request_threaded_irq(mt6397->dev, mt6397->irq, NULL,
> -               mt6397_irq_thread, IRQF_ONESHOT, "mt6397-pmic", mt6397);
> -       if (ret) {
> -               dev_err(mt6397->dev, "failed to register irq=%d; err: %d\n",
> -                       mt6397->irq, ret);
> -               return ret;
> -       }
> -
> -       return 0;
> -}
> -
>  #ifdef CONFIG_PM_SLEEP
>  static int mt6397_irq_suspend(struct device *dev)
>  {
> diff --git a/drivers/mfd/mt6397-irq.c b/drivers/mfd/mt6397-irq.c
> new file mode 100644
> index 000000000000..b2d3ce1f3115
> --- /dev/null
> +++ b/drivers/mfd/mt6397-irq.c
> @@ -0,0 +1,181 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2019 MediaTek Inc.
> +
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/mt6323/core.h>
> +#include <linux/mfd/mt6323/registers.h>
> +#include <linux/mfd/mt6397/core.h>
> +#include <linux/mfd/mt6397/registers.h>
> +
> +static void mt6397_irq_lock(struct irq_data *data)
> +{
> +       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> +
> +       mutex_lock(&mt6397->irqlock);
> +}
> +
> +static void mt6397_irq_sync_unlock(struct irq_data *data)
> +{
> +       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> +
> +       regmap_write(mt6397->regmap, mt6397->int_con[0],
> +                    mt6397->irq_masks_cur[0]);
> +       regmap_write(mt6397->regmap, mt6397->int_con[1],
> +                    mt6397->irq_masks_cur[1]);
> +
> +       mutex_unlock(&mt6397->irqlock);
> +}
> +
> +static void mt6397_irq_disable(struct irq_data *data)
> +{
> +       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> +       int shift = data->hwirq & 0xf;
> +       int reg = data->hwirq >> 4;
> +
> +       mt6397->irq_masks_cur[reg] &= ~BIT(shift);
> +}
> +
> +static void mt6397_irq_enable(struct irq_data *data)
> +{
> +       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(data);
> +       int shift = data->hwirq & 0xf;
> +       int reg = data->hwirq >> 4;
> +
> +       mt6397->irq_masks_cur[reg] |= BIT(shift);
> +}
> +
> +#ifdef CONFIG_PM_SLEEP
> +static int mt6397_irq_set_wake(struct irq_data *irq_data, unsigned int on)
> +{
> +       struct mt6397_chip *mt6397 = irq_data_get_irq_chip_data(irq_data);
> +       int shift = irq_data->hwirq & 0xf;
> +       int reg = irq_data->hwirq >> 4;
> +
> +       if (on)
> +               mt6397->wake_mask[reg] |= BIT(shift);
> +       else
> +               mt6397->wake_mask[reg] &= ~BIT(shift);
> +
> +       return 0;
> +}
> +#else
> +#define mt6397_irq_set_wake NULL
> +#endif
> +
> +static struct irq_chip mt6397_irq_chip = {
> +       .name = "mt6397-irq",
> +       .irq_bus_lock = mt6397_irq_lock,
> +       .irq_bus_sync_unlock = mt6397_irq_sync_unlock,
> +       .irq_enable = mt6397_irq_enable,
> +       .irq_disable = mt6397_irq_disable,
> +       .irq_set_wake = mt6397_irq_set_wake,
> +};
> +
> +static void mt6397_irq_handle_reg(struct mt6397_chip *mt6397, int reg,
> +                                 int irqbase)
> +{
> +       unsigned int status;
> +       int i, irq, ret;
> +
> +       ret = regmap_read(mt6397->regmap, reg, &status);
> +       if (ret) {
> +               dev_err(mt6397->dev, "Failed to read irq status: %d\n", ret);
> +               return;
> +       }
> +
> +       for (i = 0; i < 16; i++) {
> +               if (status & BIT(i)) {
> +                       irq = irq_find_mapping(mt6397->irq_domain, irqbase + i);
> +                       if (irq)
> +                               handle_nested_irq(irq);
> +               }
> +       }
> +
> +       regmap_write(mt6397->regmap, reg, status);
> +}
> +
> +static irqreturn_t mt6397_irq_thread(int irq, void *data)
> +{
> +       struct mt6397_chip *mt6397 = data;
> +
> +       mt6397_irq_handle_reg(mt6397, mt6397->int_status[0], 0);
> +       mt6397_irq_handle_reg(mt6397, mt6397->int_status[1], 16);
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int mt6397_irq_domain_map(struct irq_domain *d, unsigned int irq,
> +                                irq_hw_number_t hw)
> +{
> +       struct mt6397_chip *mt6397 = d->host_data;
> +
> +       irq_set_chip_data(irq, mt6397);
> +       irq_set_chip_and_handler(irq, &mt6397_irq_chip, handle_level_irq);
> +       irq_set_nested_thread(irq, 1);
> +       irq_set_noprobe(irq);
> +
> +       return 0;
> +}
> +
> +static const struct irq_domain_ops mt6397_irq_domain_ops = {
> +       .map = mt6397_irq_domain_map,
> +};
> +
> +int mt6397_irq_init(struct mt6397_chip *chip)
> +{
> +       int ret;
> +
> +       mutex_init(&chip->irqlock);
> +
> +       switch (chip->chip_id) {
> +       case MT6323_CHIP_ID:
> +               chip->int_con[0] = MT6323_INT_CON0;
> +               chip->int_con[1] = MT6323_INT_CON1;
> +               chip->int_status[0] = MT6323_INT_STATUS0;
> +               chip->int_status[1] = MT6323_INT_STATUS1;
> +               break;
> +
> +       case MT6391_CHIP_ID:
> +       case MT6397_CHIP_ID:
> +               chip->int_con[0] = MT6397_INT_CON0;
> +               chip->int_con[1] = MT6397_INT_CON1;
> +               chip->int_status[0] = MT6397_INT_STATUS0;
> +               chip->int_status[1] = MT6397_INT_STATUS1;
> +               break;
> +
> +       default:
> +               dev_err(chip->dev, "unsupported chip: 0x%x\n", chip->chip_id);
> +               return -ENODEV;
> +       }

This switch/case wasn't there before the move... Doesn't that now
duplicates with code in mt6397_probe, or am I missing something?

> +
> +       /* Mask all interrupt sources */
> +       regmap_write(chip->regmap, chip->int_con[0], 0x0);
> +       regmap_write(chip->regmap, chip->int_con[1], 0x0);
> +
> +       chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
> +                                                MT6397_IRQ_NR,
> +                                                &mt6397_irq_domain_ops,
> +                                                chip);
> +       if (!chip->irq_domain) {
> +               dev_err(chip->dev, "could not create irq domain\n");
> +               return -ENOMEM;
> +       }
> +
> +       ret = devm_request_threaded_irq(chip->dev, chip->irq, NULL,
> +                                       mt6397_irq_thread, IRQF_ONESHOT,
> +                                       "mt6397-pmic", chip);
> +       if (ret) {
> +               dev_err(chip->dev, "failed to register irq=%d; err: %d\n",
> +                       chip->irq, ret);
> +               return ret;
> +       }
> +
> +       return 0;
> +}
> diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
> index d678f526e498..93f9f5235575 100644
> --- a/include/linux/mfd/mt6397/core.h
> +++ b/include/linux/mfd/mt6397/core.h
> @@ -15,6 +15,12 @@
>  #ifndef __MFD_MT6397_CORE_H__
>  #define __MFD_MT6397_CORE_H__
>
> +enum chip_id {
> +       MT6323_CHIP_ID = 0x23,
> +       MT6391_CHIP_ID = 0x91,
> +       MT6397_CHIP_ID = 0x97,
> +};
> +
>  enum mt6397_irq_numbers {
>         MT6397_IRQ_SPKL_AB = 0,
>         MT6397_IRQ_SPKR_AB,
> @@ -62,6 +68,9 @@ struct mt6397_chip {
>         u16 irq_masks_cache[2];
>         u16 int_con[2];
>         u16 int_status[2];
> +       u16 chip_id;
>  };
>
> +int mt6397_irq_init(struct mt6397_chip *chip);
> +
>  #endif /* __MFD_MT6397_CORE_H__ */
> --
> 2.18.0
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
