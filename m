Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E32210E6AF
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Dec 2019 09:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lutJ7CZaIcdRsLz12PGWJ0RWvMgDaenD3P7BeUTCXi8=; b=JaovhAtsaAxaqs
	NPbIlqeJApA/7gRc04DIFqqtRbq6TtoazomVhtyZa/hgZkBKe+erfhPMggT4tVMCJprYEkG9CMpg/
	ennDE5TAI853JZkCMqKprOGctrcfVdk0eCC7XdTTIbBLOb6zHxP/b6UGzPpSp7V2hfJoL6DseSFC/
	gw1jC2b66NbESSmxNAhUmF3obaIBB1XMeX16HLTxo0gB1ZTV6OxUdHAF9fbN3z5oQL2ivLxka7LaW
	cq66Q6xeBYZPCTH157z4MlZC/A1wOETfGwo+wxRViGtxxMc/CWoF8zYCawAe/omg91BlySsz6VZ3c
	+ymWVTkubbZtMafzT6pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibgkF-0000b0-LE; Mon, 02 Dec 2019 08:07:47 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibgk5-0000RN-97
 for linux-mediatek@lists.infradead.org; Mon, 02 Dec 2019 08:07:39 +0000
Received: by mail-ed1-x544.google.com with SMTP id v28so5990600edw.12
 for <linux-mediatek@lists.infradead.org>; Mon, 02 Dec 2019 00:07:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hB2nJ8CzTKjXCm6SOFfHQcbAJFeLp6+ruAS0J+kmEz4=;
 b=XRIhVxFW2iDfWHxbVlSiSV4PpvApyRBnSh0jlF7EDk/saneQv8Jfys+8UXjIN+iVT4
 UgPX8PYXfFfL+H21cq04VIyNM1HXjeB3XCMex9nIMrzxb/+DIUKLqHyR++nk5PkAgbmP
 Z2E1/rUB/83oyoTGcmJ+ZjW0Yk279VnZIhn3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hB2nJ8CzTKjXCm6SOFfHQcbAJFeLp6+ruAS0J+kmEz4=;
 b=YAGEvvHFDcJZ00HjpWqmJmnHHoihrPZW7kyawHGFvlaEzSoHeeOrDZe726Ik+ZIO8D
 rp0kRU63sOh8qdVgBNtB+9m5ovevAUO62SasFnhSq6t5QPGTJnBdW3kdawke9JxII3hJ
 +p3nRKHg1X+HCnfI8bjR+KuZ2O48M+NhyUpQ5gj2l7KwwRsRIo424s7+i1yRio/ExX+h
 c30ph9n9Kx7Ii5cUbNPz7DQ1Wal+WiWf6vFiII2p8HAfxkE+gcBhJYZMjfz84lX4uBn4
 dWY5cyU3p9pOwmR/nufx5c+jaTiAV57C2Zq21rMjdleoDAoZJ5ywKqKdkrakoBSph2MB
 Y8bQ==
X-Gm-Message-State: APjAAAXiEynixslt1FIp+cyven9XwO9a2dMWdkejNPS8Bz17FlflDhSG
 NhVJ25mUOhX/sDHDpz3tKrx3leEzCRLfM78bKjktsQ==
X-Google-Smtp-Source: APXvYqzDbZscQDJrs8HoXLTnIMKzHpXcUPG2LW45MmuMV7G7PnHlmrJzw50Qyt0vl90Wse02bh6Lo9CsDwS9zUUwCBU=
X-Received: by 2002:a50:e00a:: with SMTP id e10mr6951207edl.119.1575274055153; 
 Mon, 02 Dec 2019 00:07:35 -0800 (PST)
MIME-Version: 1.0
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-7-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1566531931-9772-7-git-send-email-hsin-hsiung.wang@mediatek.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 2 Dec 2019 16:06:59 +0800
Message-ID: <CANdKZ0eUDhhQPBBiOWZ0u03SFoFQM6b=ED9AGe+JtBSr_zeJKQ@mail.gmail.com>
Subject: Re: [PATCH v5 06/10] mfd: Add support for the MediaTek MT6358 PMIC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_000737_351519_D0974CAD 
X-CRM114-Status: GOOD (  23.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Richard Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 "open list:REAL TIME CLOCK \(RTC\) SUBSYSTEM" <linux-rtc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

On Fri, Aug 23, 2019 at 11:46 AM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> This adds support for the MediaTek MT6358 PMIC. This is a
> multifunction device with the following sub modules:
>
> - Regulator
> - RTC
> - Codec
> - Interrupt
>
> It is interfaced to the host controller using SPI interface
> by a proprietary hardware called PMIC wrapper or pwrap.
> MT6358 MFD is a child device of the pwrap.
>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> ---
>  drivers/mfd/Makefile                 |   3 +-
>  drivers/mfd/mt6358-irq.c             | 231 ++++++++++++++++++++++++++++
>  drivers/mfd/mt6397-core.c            |  52 ++++++-
>  include/linux/mfd/mt6358/core.h      | 158 ++++++++++++++++++++
>  include/linux/mfd/mt6358/registers.h | 282 +++++++++++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h      |   3 +
>  6 files changed, 727 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/mfd/mt6358-irq.c
>  create mode 100644 include/linux/mfd/mt6358/core.h
>  create mode 100644 include/linux/mfd/mt6358/registers.h
> (...)
> diff --git a/drivers/mfd/mt6358-irq.c b/drivers/mfd/mt6358-irq.c
> new file mode 100644
> index 0000000..760b72f
> --- /dev/null
> +++ b/drivers/mfd/mt6358-irq.c
> @@ -0,0 +1,231 @@
> +// SPDX-License-Identifier: GPL-2.0
> +//
> +// Copyright (c) 2019 MediaTek Inc.
> +
> +#include <linux/interrupt.h>
> +#include <linux/mfd/mt6358/core.h>
> +#include <linux/mfd/mt6358/registers.h>
> +#include <linux/mfd/mt6397/core.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +static struct irq_top_t mt6358_ints[] = {
> +       MT6358_TOP_GEN(BUCK),
> +       MT6358_TOP_GEN(LDO),
> +       MT6358_TOP_GEN(PSC),
> +       MT6358_TOP_GEN(SCK),
> +       MT6358_TOP_GEN(BM),
> +       MT6358_TOP_GEN(HK),
> +       MT6358_TOP_GEN(AUD),
> +       MT6358_TOP_GEN(MISC),
> +};
> +
> +static void pmic_irq_enable(struct irq_data *data)
> +{
> +       unsigned int hwirq = irqd_to_hwirq(data);
> +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> +       struct pmic_irq_data *irqd = chip->irq_data;
> +
> +       irqd->enable_hwirq[hwirq] = true;
> +}
> +
> +static void pmic_irq_disable(struct irq_data *data)
> +{
> +       unsigned int hwirq = irqd_to_hwirq(data);
> +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> +       struct pmic_irq_data *irqd = chip->irq_data;
> +
> +       irqd->enable_hwirq[hwirq] = false;
> +}
> +
> +static void pmic_irq_lock(struct irq_data *data)
> +{
> +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> +
> +       mutex_lock(&chip->irqlock);
> +}
> +
> +static void pmic_irq_sync_unlock(struct irq_data *data)
> +{
> +       unsigned int i, top_gp, en_reg, int_regs, shift;
> +       struct mt6397_chip *chip = irq_data_get_irq_chip_data(data);
> +       struct pmic_irq_data *irqd = chip->irq_data;
> +
> +       for (i = 0; i < irqd->num_pmic_irqs; i++) {
> +               if (irqd->enable_hwirq[i] == irqd->cache_hwirq[i])
> +                       continue;
> +
> +               /* Find out the irq group */
> +               top_gp = 0;
> +               while ((top_gp + 1) < ARRAY_SIZE(mt6358_ints) &&
> +                      i >= mt6358_ints[top_gp + 1].hwirq_base)
> +                       top_gp++;
> +
> +               if (top_gp >= ARRAY_SIZE(mt6358_ints)) {

Would this condition ever be true? The while loop before this always
break when top_gp == ARRAY_SIZE(mt6358_ints) - 1.

> +                       mutex_unlock(&chip->irqlock);
> +                       dev_err(chip->dev,
> +                               "Failed to get top_group: %d\n", top_gp);
> +                       return;
> +               }
> +
> +               /* Find the irq registers */
> +               int_regs = (i - mt6358_ints[top_gp].hwirq_base) /
> +                           MT6358_REG_WIDTH;
> +               en_reg = mt6358_ints[top_gp].en_reg +
> +                       mt6358_ints[top_gp].en_reg_shift * int_regs;
> +               shift = (i - mt6358_ints[top_gp].hwirq_base) % MT6358_REG_WIDTH;
> +               regmap_update_bits(chip->regmap, en_reg, BIT(shift),
> +                                  irqd->enable_hwirq[i] << shift);
> +               irqd->cache_hwirq[i] = irqd->enable_hwirq[i];
> +       }
> +       mutex_unlock(&chip->irqlock);
> +}
> +
> +static struct irq_chip mt6358_irq_chip = {
> +       .name = "mt6358-irq",
> +       .flags = IRQCHIP_SKIP_SET_WAKE,
> +       .irq_enable = pmic_irq_enable,
> +       .irq_disable = pmic_irq_disable,
> +       .irq_bus_lock = pmic_irq_lock,
> +       .irq_bus_sync_unlock = pmic_irq_sync_unlock,
> +};
> +
> +static void mt6358_irq_sp_handler(struct mt6397_chip *chip,
> +                                 unsigned int top_gp)
> +{
> +       unsigned int sta_reg, irq_status;
> +       unsigned int hwirq, virq;
> +       int ret, i, j;
> +
> +       for (i = 0; i < mt6358_ints[top_gp].num_int_regs; i++) {
> +               sta_reg = mt6358_ints[top_gp].sta_reg +
> +                       mt6358_ints[top_gp].sta_reg_shift * i;
> +               ret = regmap_read(chip->regmap, sta_reg, &irq_status);
> +               if (ret) {
> +                       dev_err(chip->dev,
> +                               "Failed to read irq status: %d\n", ret);
> +                       return;
> +               }
> +
> +               if (!irq_status)
> +                       continue;
> +
> +               for (j = 0; j < MT6358_REG_WIDTH ; j++) {
> +                       if ((irq_status & BIT(j)) == 0)
> +                               continue;
> +                       hwirq = mt6358_ints[top_gp].hwirq_base +
> +                               MT6358_REG_WIDTH * i + j;
> +                       virq = irq_find_mapping(chip->irq_domain, hwirq);
> +                       if (virq)
> +                               handle_nested_irq(virq);
> +               }
> +
> +               regmap_write(chip->regmap, sta_reg, irq_status);
> +       }
> +}
> +
> +static irqreturn_t mt6358_irq_handler(int irq, void *data)
> +{
> +       struct mt6397_chip *chip = data;
> +       struct pmic_irq_data *mt6358_irq_data = chip->irq_data;
> +       unsigned int top_irq_status;
> +       unsigned int i;
> +       int ret;
> +
> +       ret = regmap_read(chip->regmap,
> +                         mt6358_irq_data->top_int_status_reg,
> +                         &top_irq_status);
> +       if (ret) {
> +               dev_err(chip->dev, "Can't read TOP_INT_STATUS ret=%d\n", ret);
> +               return IRQ_NONE;
> +       }
> +
> +       for (i = 0; i < mt6358_irq_data->num_top; i++) {
> +               if (top_irq_status & BIT(mt6358_ints[i].top_offset))
> +                       mt6358_irq_sp_handler(chip, i);
> +       }
> +
> +       return IRQ_HANDLED;
> +}
> +
> +static int pmic_irq_domain_map(struct irq_domain *d, unsigned int irq,
> +                              irq_hw_number_t hw)
> +{
> +       struct mt6397_chip *mt6397 = d->host_data;
> +
> +       irq_set_chip_data(irq, mt6397);
> +       irq_set_chip_and_handler(irq, &mt6358_irq_chip, handle_level_irq);
> +       irq_set_nested_thread(irq, 1);
> +       irq_set_noprobe(irq);
> +
> +       return 0;
> +}
> +
> +static const struct irq_domain_ops mt6358_irq_domain_ops = {
> +       .map = pmic_irq_domain_map,
> +       .xlate = irq_domain_xlate_twocell,
> +};
> +
> +int mt6358_irq_init(struct mt6397_chip *chip)
> +{
> +       int i, j, ret;
> +       struct pmic_irq_data *irqd;
> +
> +       irqd = devm_kzalloc(chip->dev, sizeof(struct pmic_irq_data *),
> +                           GFP_KERNEL);
> +       if (!irqd)
> +               return -ENOMEM;
> +
> +       chip->irq_data = irqd;
> +
> +       mutex_init(&chip->irqlock);
> +       irqd->top_int_status_reg = MT6358_TOP_INT_STATUS0;
> +       irqd->num_pmic_irqs = MT6358_IRQ_NR;
> +       irqd->num_top = ARRAY_SIZE(mt6358_ints);

ARRAY_SIZE(mt6358_ints) is still used in pmic_irq_sync_unlock. Is this
variable needed, or should the ARRAY_SIZE(mt6358_ints) in
pmic_irq_sync_unlock be changed to irqd->num_top too?

> +
> +       irqd->enable_hwirq = devm_kcalloc(chip->dev,
> +                                         irqd->num_pmic_irqs,
> +                                         sizeof(bool),
> +                                         GFP_KERNEL);
> +       if (!irqd->enable_hwirq)
> +               return -ENOMEM;
> +
> +       irqd->cache_hwirq = devm_kcalloc(chip->dev,
> +                                        irqd->num_pmic_irqs,
> +                                        sizeof(bool),
> +                                        GFP_KERNEL);
> +       if (!irqd->cache_hwirq)
> +               return -ENOMEM;
> +
> +       /* Disable all interrupts for initializing */
> +       for (i = 0; i < irqd->num_top; i++) {
> +               for (j = 0; j < mt6358_ints[i].num_int_regs; j++)
> +                       regmap_write(chip->regmap,
> +                                    mt6358_ints[i].en_reg +
> +                                    mt6358_ints[i].en_reg_shift * j, 0);
> +       }
> +
> +       chip->irq_domain = irq_domain_add_linear(chip->dev->of_node,
> +                                                irqd->num_pmic_irqs,
> +                                                &mt6358_irq_domain_ops, chip);
> +       if (!chip->irq_domain) {
> +               dev_err(chip->dev, "could not create IRQ domain\n");
> +               return -ENODEV;
> +       }
> +
> +       ret = devm_request_threaded_irq(chip->dev, chip->irq, NULL,
> +                                       mt6358_irq_handler, IRQF_ONESHOT,
> +                                       mt6358_irq_chip.name, chip);
> +       if (ret) {
> +               dev_err(chip->dev, "failed to register irq=%d; err: %d\n",
> +                       chip->irq, ret);
> +               return ret;
> +       }
> +
> +       enable_irq_wake(chip->irq);
> +       return ret;
> +}
> (...)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
