Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B3F1A64D
	for <lists+linux-mediatek@lfdr.de>; Sat, 11 May 2019 04:31:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H436msV3vutS12udmqxtPJfxKJl4QgMvCTfPxIJiO2Q=; b=KxEM77YQzdotkK
	+GEIhU91YOrlCjhr4hDZgBnbfytfXrWNMCLxQhg5jfjnRuKJ2F/xL/13jftJL9+8qmodRPuE6LLv8
	pQv40wkZSWvrQM+qaazNcfvqFxdeTsy+tyGcvGO3HZoT1c4uADQrwX7xHWGIbL8Qejtt+ZX/qZHvJ
	Q8z/2WdDm8c98W10J8HV+qWX9ZE3DGZpXooZIamnFSs0Fbk0LeOVXzQONjRHQe7SjrufcrO5WS+g1
	2tT7bqUEQ+uXCzYlu+5GE51f8Hv+1Y6tzU9E47szNksw7Xhnz0jGo3NALeAd58USkXZMMsx0lZHTS
	i/iIWbN5pdlIs7eQglaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPHnQ-0008HY-DK; Sat, 11 May 2019 02:31:32 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPHnG-0008Ap-2C
 for linux-mediatek@lists.infradead.org; Sat, 11 May 2019 02:31:24 +0000
Received: by mail-qt1-x842.google.com with SMTP id k24so3912930qtq.7
 for <linux-mediatek@lists.infradead.org>; Fri, 10 May 2019 19:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QkHid6lisLXvpmq0JMNlVb1recKQukJ7PuauuXWUQBw=;
 b=CFYwUdlb6kDt1NhEEjrC0A0nuRHWn/prCx1A1kIqu1GhRZfmdY8bgahc02/X19llbd
 fvxssMqrQQ6Z/4ELAilm0gKIZ0OkiTljAKrePdvGDo8GmzBW4bSQ+Pk9F/xHwraaTGug
 hP27VQvggJlYqYGyMP2FvkeRHxg3gYVJdXK60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QkHid6lisLXvpmq0JMNlVb1recKQukJ7PuauuXWUQBw=;
 b=nNcc99+jhjLCot1PJkmByWs0KP4Y3UY4KXBuNsjP4+3TqNGTV48ORhvz1n8p1IHiGG
 3iqDm6Ha8t27LEeLnc8olei3rnHnhr8WbMWF50kbPcXq2XdwZBr4+HQVY9Z/JTMDrHj9
 aD+vmEW0vLtfWtiDsRyq6IrrLMaT5dXQ9lyYxmyXMV9Z6jWBi8WTMLU9a3/5UHy234N3
 COD+F7UlMfAX5roX1DU5qmAZWLM2GtUkP2c+TCQ59n/1gH5XRM0xuREXBZMFskE/gDHR
 m849OuWahYiT7WYCOQ19a0Pc5LEs+OB00UHe6fPU3i7qQF4ujALXXz/cr3mAa+HQNXum
 EvWg==
X-Gm-Message-State: APjAAAUxHyKUeQ6Fu+i0zGuoBSH3y87my9d4kyuj/sKWUFDeX5DqxL3x
 l0b/N0JQTj9OG7PwItBRrBtqXfVVitOrc1ho9cT+Ew==
X-Google-Smtp-Source: APXvYqyW5OpnvPwOyXp+1b/92lREfPpRtf9W5zCWsq24yemetlTdNNphRPH6NE7SW8/mCSyxiaqF+3PgsW4V3IWGCTA=
X-Received: by 2002:a0c:ee28:: with SMTP id l8mr11862487qvs.67.1557541879585; 
 Fri, 10 May 2019 19:31:19 -0700 (PDT)
MIME-Version: 1.0
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
 <1556793795-25204-8-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1556793795-25204-8-git-send-email-michael.kao@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sat, 11 May 2019 11:31:08 +0900
Message-ID: <CANMq1KBna0V2X3_CNQrcH==WVLs7oY=GvFGzEbWS91-oZCLKTQ@mail.gmail.com>
Subject: Re: [PATCH 7/8] thermal: mediatek: add another get_temp ops for
 thermal sensors
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_193122_147853_683FCA61 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, James Liao <jamesjj.liao@mediatek.com>,
 devicetree@vger.kernel.org, louis.yu@mediatek.com, dawei.chien@mediatek.com,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 roger.lu@mediatek.com, lkml <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Fan Chen <fan.chen@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 2, 2019 at 7:45 PM michael.kao <michael.kao@mediatek.com> wrote:
>
> From: Michael Kao <michael.kao@mediatek.com>
>
> Provide thermal zone to read thermal sensor
> in the SoC. We can read all the thermal sensors
> value in the SoC by the node /sys/class/thermal/
>
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
>  drivers/thermal/mtk_thermal.c | 68 ++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 60 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
> index cb41e46..d5c78b0 100644
> --- a/drivers/thermal/mtk_thermal.c
> +++ b/drivers/thermal/mtk_thermal.c
> @@ -230,6 +230,11 @@ enum {
>
>  struct mtk_thermal;
>
> +struct mtk_thermal_zone {
> +       struct mtk_thermal *mt;
> +       int id;
> +};
> +
>  struct thermal_bank_cfg {
>         unsigned int num_sensors;
>         const int *sensors;
> @@ -612,7 +617,7 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
>                  * not immediately shut down.
>                  */
>                 if (temp > 200000)
> -                       temp = 0;
> +                       temp = -EACCES;

EACCES/permission denied doesn't really seem to be the right error
code here. Maybe EAGAIN?

>
>                 if (temp > max)
>                         max = temp;
> @@ -623,7 +628,8 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
>
>  static int mtk_read_temp(void *data, int *temperature)
>  {
> -       struct mtk_thermal *mt = data;
> +       struct mtk_thermal_zone *tz = data;
> +       struct mtk_thermal *mt = tz->mt;
>         int i;
>         int tempmax = INT_MIN;
>
> @@ -636,16 +642,48 @@ static int mtk_read_temp(void *data, int *temperature)
>
>                 mtk_thermal_put_bank(bank);
>         }
> -

I'd drop that change.

>         *temperature = tempmax;
>
>         return 0;
>  }
>
> +static int mtk_read_sensor_temp(void *data, int *temperature)
> +{
> +       struct mtk_thermal_zone *tz = data;
> +       struct mtk_thermal *mt = tz->mt;
> +       const struct mtk_thermal_data *conf = mt->conf;
> +       int id = tz->id - 1;
> +       int temp = INT_MIN;

No need to initialize temp.

> +       u32 raw;
> +
> +       if (id < 0)
> +               return  -EACCES;

EINVAL?

> +
> +       raw = readl(mt->thermal_base + conf->msr[id]);
> +
> +       temp = raw_to_mcelsius(mt, id, raw);
> +
> +       /*
> +        * The first read of a sensor often contains very high bogus
> +        * temperature value. Filter these out so that the system does
> +        * not immediately shut down.
> +        */
> +

nit: Drop this blank line

> +       if (temp > 200000)
> +               return  -EACCES;

Again, EAGAIN, maybe?

> +
> +       *temperature = temp;
> +       return 0;
> +}
> +
>  static const struct thermal_zone_of_device_ops mtk_thermal_ops = {
>         .get_temp = mtk_read_temp,
>  };
>
> +static const struct thermal_zone_of_device_ops mtk_thermal_sensor_ops = {
> +       .get_temp = mtk_read_sensor_temp,
> +};
> +
>  static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
>                                   u32 apmixed_phys_base, u32 auxadc_phys_base,
>                                   int ctrl_id)
> @@ -878,6 +916,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>         struct resource *res;
>         u64 auxadc_phys_base, apmixed_phys_base;
>         struct thermal_zone_device *tzdev;
> +       struct mtk_thermal_zone *tz;
>
>         mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
>         if (!mt)
> @@ -959,11 +998,24 @@ static int mtk_thermal_probe(struct platform_device *pdev)
>
>         platform_set_drvdata(pdev, mt);
>
> -       tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
> -                                                    &mtk_thermal_ops);
> -       if (IS_ERR(tzdev)) {
> -               ret = PTR_ERR(tzdev);
> -               goto err_disable_clk_peri_therm;
> +       for (i = 0; i < mt->conf->num_sensors + 1; i++) {
> +               tz = kmalloc(sizeof(*tz), GFP_KERNEL);

Are we leaking this pointer? Should this be devm_kmalloc?

> +               if (!tz)
> +                       return -ENOMEM;
> +
> +               tz->mt = mt;
> +               tz->id = i;
> +
> +               tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
> +                               tz, (i == 0) ?
> +                               &mtk_thermal_ops : &mtk_thermal_sensor_ops);
> +
> +               if (IS_ERR(tzdev)) {
> +                       if (IS_ERR(tzdev) != -EACCES) {

Why would EACCES ever happen? AFAICT
devm_thermal_zone_of_sensor_register does not actually try to read the
temperature value? Or does the error come from somewhere else?

> +                               ret = PTR_ERR(tzdev);
> +                               goto err_disable_clk_peri_therm;
> +                       }
> +               }
>         }
>
>         return 0;
> --
> 1.9.1
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
