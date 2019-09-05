Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A290A9A6D
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 08:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7PMlQI9nt7O7xF8t3tgPgK8rStWgA9vU8w3iVmHUBo=; b=WZ2xTtdmQ7TIzk
	GV9EMNeifaDHS8akHJGhEJC2jFH/OhtEFHn/497t+l4+IVDlB8nvxY6OVby2+tpIk0vv7m1snIsb/
	Mod4h8DQj8xkPSpHpURIk2mc47wL9ehEkYLAeVGD1B62mx5SMRB5fIFA19u91Bj5cnQQjHQ9ok8Ub
	QZ+66VrgbtShrd1yFHyWxusKXeGNK3gwKbVISEhQdT/9oSkW1LXvCwdHdUN8IAn7Rw23V4h9V47/N
	LBYDKdFkSkAhJsfZXXshsYi+9xKqGKmg0h3+QpDiHKzv9iceZPcU6ptE6hN5wogkY1C1hwwO52eQ2
	X/BHT6j241VrzxO0Ki7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5l3r-0008Px-KM; Thu, 05 Sep 2019 06:16:03 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5l3Y-0008Bw-6q
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 06:15:46 +0000
Received: by mail-vk1-xa42.google.com with SMTP id s72so223031vkh.5
 for <linux-mediatek@lists.infradead.org>; Wed, 04 Sep 2019 23:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Lxv2YjVDy5w6AQ+Z95Jd1OHt1865rQWbHzl1H0ckHb4=;
 b=IurRXFpodLHrXjhNeDu0PBjJR6aKmlNT/dzeEONMU1V5mjYfCIsKTQIXkLXspZuRLT
 SO2IeUW73ig0y4hTpIc1LeJScYwe/7jF3x1ItS7fkoJd9YSTWsUH2sI/3COuK4II6o/r
 +Kj20DSoITETteLabp2V7jA4ju9DbWda2nuGTSuEzhZ1KGohbqZEVKqkpRJCAhcLSXD9
 kEdWKNMJEgbkZzacsvDJtyDbgG7jhbcfx/K1U5vEhgoviC+KwrwJF0gUE3d7mSshVMHg
 A0LYcz1miwyWZt1OUA9B7KkZFPklzUWf8pMOs0ddGs8nwCkutop0K9qwCxD0ooyRsoi+
 ohUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Lxv2YjVDy5w6AQ+Z95Jd1OHt1865rQWbHzl1H0ckHb4=;
 b=RUNfil9b+uTuLaV7WbrdfeXxJRqJ50KYfjWOq/LQrIt/1wIhynutN6SBAAY+WaITTz
 q2Hrv9MPFOCONi1gfwsWcOnqerfAGz8Xh4IzMDnlFHLvTK972isZ7aAhLd0QP/pNYBK6
 McQ9A42MclYvuao9W0aWApxBaCs9Bfxe3pKHigVFG4mFZ019ujDprFO3mtTEVoEqgztc
 K44Dclkc68BL7AD2c3481CXNNTrn7XOM5D7VqJyjtVuaxFVqzCzo3UdTuN7/lkfCxL6k
 xJ3x0RbSqj3hxnx6OQltN2808CmAw+AzyoMwSE38gSOcIGsfne+YNl/EkQFCQfoPC2ve
 Ei9Q==
X-Gm-Message-State: APjAAAXfN8qH5IAYs3vyL1smaYEHQzneyVWzVW8X58zj8xdzrkZX/75g
 EmIE2ttO33u41mUBi7G1waHmzf+SHmyyACPBnJ12+w==
X-Google-Smtp-Source: APXvYqwVi7szQ+w3nsCf0zPQZyYdR4HeVO1GXvtz/sWMMhtS2v2QWLsWh3Ip3Jb3oWwBQ9pfzHwoVyT/iOmN8ovRJtE=
X-Received: by 2002:a1f:4981:: with SMTP id w123mr690507vka.13.1567664142296; 
 Wed, 04 Sep 2019 23:15:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-9-yuehaibing@huawei.com>
In-Reply-To: <20190904122939.23780-9-yuehaibing@huawei.com>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Thu, 5 Sep 2019 11:45:30 +0530
Message-ID: <CAHLCerOVuNEAkCggBoDU4NgbzhTVxpdJXeTXVrTs5tp7ZVtSMg@mail.gmail.com>
Subject: Re: [PATCH -next 08/15] thermal: tsens: use
 devm_platform_ioremap_resource() to simplify code
To: YueHaibing <yuehaibing@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_231544_256714_86D79CC7 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mans@mansr.com, Markus Mayer <mmayer@broadcom.com>,
 Eric Anholt <eric@anholt.net>, miquel.raynal@bootlin.com,
 linux-stm32@st-md-mailman.stormreply.com, Heiko Stuebner <heiko@sntech.de>,
 f.fainelli@gmail.com, Daniel Lezcano <daniel.lezcano@linaro.org>,
 phil@raspberrypi.org, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, rjui@broadcom.com,
 Eduardo Valentin <edubezval@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, gregory.0xf0@gmail.com,
 Matthias Brugger <matthias.bgg@gmail.com>, horms+renesas@verge.net.au,
 talel@amazon.com, lakml <linux-arm-kernel@lists.infradead.org>,
 sbranden@broadcom.com, wsa+renesas@sang-engineering.com,
 gregkh@linuxfoundation.org, Linux PM list <linux-pm@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, Jun Nie <jun.nie@linaro.org>,
 computersforpeace@gmail.com, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 4, 2019 at 6:05 PM YueHaibing <yuehaibing@huawei.com> wrote:
>
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Amit Kucheria <amit.kucheria@linaro.org>

> ---
>  drivers/thermal/qcom/tsens-common.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/thermal/qcom/tsens-common.c b/drivers/thermal/qcom/tsens-common.c
> index 528df88..43ce4fb 100644
> --- a/drivers/thermal/qcom/tsens-common.c
> +++ b/drivers/thermal/qcom/tsens-common.c
> @@ -155,7 +155,6 @@ int __init init_common(struct tsens_priv *priv)
>  {
>         void __iomem *tm_base, *srot_base;
>         struct device *dev = priv->dev;
> -       struct resource *res;
>         u32 enabled;
>         int ret, i, j;
>         struct platform_device *op = of_find_device_by_node(priv->dev->of_node);
> @@ -166,8 +165,7 @@ int __init init_common(struct tsens_priv *priv)
>         if (op->num_resources > 1) {
>                 /* DT with separate SROT and TM address space */
>                 priv->tm_offset = 0;
> -               res = platform_get_resource(op, IORESOURCE_MEM, 1);
> -               srot_base = devm_ioremap_resource(&op->dev, res);
> +               srot_base = devm_platform_ioremap_resource(op, 1);
>                 if (IS_ERR(srot_base)) {
>                         ret = PTR_ERR(srot_base);
>                         goto err_put_device;
> @@ -184,8 +182,7 @@ int __init init_common(struct tsens_priv *priv)
>                 priv->tm_offset = 0x1000;
>         }
>
> -       res = platform_get_resource(op, IORESOURCE_MEM, 0);
> -       tm_base = devm_ioremap_resource(&op->dev, res);
> +       tm_base = devm_platform_ioremap_resource(op, 0);
>         if (IS_ERR(tm_base)) {
>                 ret = PTR_ERR(tm_base);
>                 goto err_put_device;
> --
> 2.7.4
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
