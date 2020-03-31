Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1223198D2A
	for <lists+linux-mediatek@lfdr.de>; Tue, 31 Mar 2020 09:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhtBfWTVVKlcqXugZirT257Ygzxa6t4ihC2zIwzaDOQ=; b=TcZ4qu/3nEXIKT
	+i752f5wK2662368lr5ekDDbcPwjxdnsGSoVHL3BAXvzzxIuAVnZjdBLeFS80pGFY9XaVtJJrhhs6
	tJT6hwHDeAlQbYmptCU9GAz3hmGz8gj5Rt2m3Snnn8mZnanv38KGt8B8rYM/bJ3g81kOWpA1WDmK+
	XbEulYHIytU6Z0OJvuvOB9XauZUI4Ou3547THqDHWdlHRPNH00OSsklp3bSxLNsLusJX6Ucio43HY
	/QOTEsP+EU8tlrSGWn3WwRo/LUVKWhjEAoGCya1s8Cr08KAj3EuW1X+xXlkLYXMWshujrnJe9I+U2
	EP4L5ZTo6DzuS7IQBaaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJBUX-0000zz-3J; Tue, 31 Mar 2020 07:39:21 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJBUJ-0000q2-FF
 for linux-mediatek@lists.infradead.org; Tue, 31 Mar 2020 07:39:08 +0000
Received: by mail-vs1-xe41.google.com with SMTP id e138so12789703vsc.11
 for <linux-mediatek@lists.infradead.org>; Tue, 31 Mar 2020 00:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mf4BvDmC+BGalJU9mD8gdNB8rFbbjrC+WqY4Crh0V9U=;
 b=Dmi4tPnjWtoexjKLMIWqLDO5lCj3eQdHzUN071JAVkhCTGW2dViDrf3zad75bGYIPc
 d0tqnzqL8Bj8qwzVlVzHOjntDEyZw9VhRwUYwJur//Tfk8ueGnJdlsdF2P4u2IE6rzEw
 5vzDSI7EvnvF1qwMf1GqeACswRLGjCYk2lItk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mf4BvDmC+BGalJU9mD8gdNB8rFbbjrC+WqY4Crh0V9U=;
 b=Zp4u8yO7qVOpqQE14a0SkxlE4beiK7n46sQUBfFin1BhbN2RiUR7HduNKQfoXEqo/P
 aFpfJwjYG3+QsWPLKq1SLcQ61e+LMsWgLSsOp0+69uDHrgEQN3KdSGK+nJlSE5UrsIl5
 LleF/GOA58pMo2gk/48LdPHqLNNHF/eBHWIE5f32fuwBGThphVyEzYSSxAAzYKw+8rr1
 +S1UEr2f8CmXvY4TrM0c81gNYqfb7211R2iCV5+wBb1Onh3xwr+7lWFlHucWUvpNfxym
 iZBAkncfZzWF+fDFm2gYNEHlVQKDxsn5uSg8wIA7lztDs/TcN/eZauq8BU7g0ef/AFyU
 mz0Q==
X-Gm-Message-State: AGi0PuYfiOu/yPYX8UWnEKKrtdGH4l3eqA35gSOgZJ/3K3QiT5lh8lqk
 4hMWQrNH4Bn/gsxBG5ztIclAoD+XQ4hVrk99LfjYRw==
X-Google-Smtp-Source: APiQypJ8tjSDzNqqzb7QPP0t8s2sSqBWUkMLyEdCd2TJFUnJLO+3bNKncFxIFwNs73XDYJEY31KCmS0oC5Cf+GSpzZw=
X-Received: by 2002:a67:d45:: with SMTP id 66mr10355355vsn.1.1585640346189;
 Tue, 31 Mar 2020 00:39:06 -0700 (PDT)
MIME-Version: 1.0
References: <1585627657-3265-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1585627657-3265-5-git-send-email-hsin-hsiung.wang@mediatek.com>
In-Reply-To: <1585627657-3265-5-git-send-email-hsin-hsiung.wang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 31 Mar 2020 15:38:55 +0800
Message-ID: <CANMq1KAT0x7rLeRVQ7uzxSFbq+g_ef_OCAfAVf3dtYySJwYG2Q@mail.gmail.com>
Subject: Re: [PATCH v11 4/5] rtc: mt6397: Add support for the MediaTek MT6358
 RTC
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_003907_518275_8D23712A 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Kate Stewart <kstewart@linuxfoundation.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 lkml <linux-kernel@vger.kernel.org>, Richard Fontana <rfontana@redhat.com>,
 Lee Jones <lee.jones@linaro.org>, linux-rtc@vger.kernel.org,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Devicetree List <devicetree@vger.kernel.org>,
 Frank Wunderlich <frank-w@public-files.de>, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Alessandro Zummo <a.zummo@towertech.it>, Josef Friedl <josef.friedl@speed.at>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Sebastian Reichel <sre@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 12:07 PM Hsin-Hsiung Wang
<hsin-hsiung.wang@mediatek.com> wrote:
>
> From: Ran Bi <ran.bi@mediatek.com>
>
> This add support for the MediaTek MT6358 RTC. Driver using
> compatible data to store different RTC_WRTGR address offset.
> This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> driver which only needed by armv7 CPU without ATF.
>
> Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>

This looks good to me now, thanks.

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/power/reset/mt6323-poweroff.c |  2 +-
>  drivers/rtc/rtc-mt6397.c              | 23 +++++++++++++++++++----
>  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
>  3 files changed, 28 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/power/reset/mt6323-poweroff.c b/drivers/power/reset/mt6323-poweroff.c
> index 1caf43d..0532803 100644
> --- a/drivers/power/reset/mt6323-poweroff.c
> +++ b/drivers/power/reset/mt6323-poweroff.c
> @@ -30,7 +30,7 @@ static void mt6323_do_pwroff(void)
>         int ret;
>
>         regmap_write(pwrc->regmap, pwrc->base + RTC_BBPU, RTC_BBPU_KEY);
> -       regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR, 1);
> +       regmap_write(pwrc->regmap, pwrc->base + RTC_WRTGR_MT6323, 1);
>
>         ret = regmap_read_poll_timeout(pwrc->regmap,
>                                         pwrc->base + RTC_BBPU, val,
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index cda238d..7f3dfd2 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -9,6 +9,7 @@
>  #include <linux/mfd/mt6397/core.h>
>  #include <linux/module.h>
>  #include <linux/mutex.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/regmap.h>
>  #include <linux/rtc.h>
> @@ -20,7 +21,7 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
>         int ret;
>         u32 data;
>
> -       ret = regmap_write(rtc->regmap, rtc->addr_base + RTC_WRTGR, 1);
> +       ret = regmap_write(rtc->regmap, rtc->addr_base + rtc->data->wrtgr, 1);
>         if (ret < 0)
>                 return ret;
>
> @@ -269,6 +270,8 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>         res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>         rtc->addr_base = res->start;
>
> +       rtc->data = of_device_get_match_data(&pdev->dev);
> +
>         rtc->irq = platform_get_irq(pdev, 0);
>         if (rtc->irq < 0)
>                 return rtc->irq;
> @@ -325,10 +328,22 @@ static int mt6397_rtc_resume(struct device *dev)
>  static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
>                         mt6397_rtc_resume);
>
> +static const struct mtk_rtc_data mt6358_rtc_data = {
> +       .wrtgr = RTC_WRTGR_MT6358,
> +};
> +
> +static const struct mtk_rtc_data mt6397_rtc_data = {
> +       .wrtgr = RTC_WRTGR_MT6397,
> +};
> +
>  static const struct of_device_id mt6397_rtc_of_match[] = {
> -       { .compatible = "mediatek,mt6323-rtc", },
> -       { .compatible = "mediatek,mt6397-rtc", },
> -       { }
> +       { .compatible = "mediatek,mt6323-rtc",
> +               .data = &mt6397_rtc_data, },
> +       { .compatible = "mediatek,mt6358-rtc",
> +               .data = &mt6358_rtc_data, },
> +       { .compatible = "mediatek,mt6397-rtc",
> +               .data = &mt6397_rtc_data, },
> +       {}
>  };
>  MODULE_DEVICE_TABLE(of, mt6397_rtc_of_match);
>
> diff --git a/include/linux/mfd/mt6397/rtc.h b/include/linux/mfd/mt6397/rtc.h
> index 7dfb63b..6200f3b 100644
> --- a/include/linux/mfd/mt6397/rtc.h
> +++ b/include/linux/mfd/mt6397/rtc.h
> @@ -18,7 +18,9 @@
>  #define RTC_BBPU_CBUSY         BIT(6)
>  #define RTC_BBPU_KEY            (0x43 << 8)
>
> -#define RTC_WRTGR              0x003c
> +#define RTC_WRTGR_MT6358       0x3a
> +#define RTC_WRTGR_MT6397       0x3c
> +#define RTC_WRTGR_MT6323       RTC_WRTGR_MT6397
>
>  #define RTC_IRQ_STA            0x0002
>  #define RTC_IRQ_STA_AL         BIT(0)
> @@ -65,6 +67,10 @@
>  #define MTK_RTC_POLL_DELAY_US  10
>  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
>
> +struct mtk_rtc_data {
> +       u32                     wrtgr;
> +};
> +
>  struct mt6397_rtc {
>         struct device           *dev;
>         struct rtc_device       *rtc_dev;
> @@ -74,6 +80,7 @@ struct mt6397_rtc {
>         struct regmap           *regmap;
>         int                     irq;
>         u32                     addr_base;
> +       const struct mtk_rtc_data *data;
>  };
>
>  #endif /* _LINUX_MFD_MT6397_RTC_H_ */
> --
> 2.6.4

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
