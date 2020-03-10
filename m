Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F2318024B
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 16:47:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+h/i5KvpXZSrigdVaGmEfinEiwu4M8tfoGv3LG58Uhs=; b=JmHRKjtJdP+OjJ
	Ko/0gs5Jd9fCywmE75obcr/z9D3m6I9PRe69bf8SI1CPpGp/oGJdKPO4VrrPibHjDGu0mATmV0/k4
	6X17ZB9MBrTT7i1+N2S9ztrrEaW3byP011LrAd0szLD1ZpMfRIgyGBjdy0TTBzkoerVlircDpnQ+C
	kEXhbrPIfZ8CAXDa7QnO7n7WvK5jWjHdslkiYPvZz1585YN7GRQJJDYhe087BHPPFAY54UzeoT9+8
	kv6Ew1kUIPMJRGvlxFHr38s8LjvO8ei3QxK3C3dO+YAaB+/SE0vldb1XBoSIpj7mZUESx5gocsNDf
	fp/YOJPf1GhsVH4ZUCxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBh68-000794-96; Tue, 10 Mar 2020 15:47:12 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBh64-00071u-Pg
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 15:47:10 +0000
Received: by mail-ot1-x342.google.com with SMTP id k26so6337787otr.2
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Mar 2020 08:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4HrHpJuYloPdd64QgDvsMEZuP7xh7v2AxwQIiGYP/MQ=;
 b=nyX2OVgPZVTO0zNEHpYlZ63oRyFSngj5xEudidOqj0uclLGX1S3zY0a0pfVYbatnkh
 2D8dMoBtwD6CVOzC+glCPpuvt8B96EHbtS82/rUczghAC0dNb4kQCpDrfGDyM9WZnqhE
 cD6V6C6atqbJIAFiPVYvmYb94/db0bZxLbC57HdisRWP2TiqR6vE7vFtKOUuGN2Qqnoy
 UMexxU5mlNO2XThhD5qTcBXOc17qUOjEsd6a01vAIa4/bhVs6QdAKwNo165h4SqsC52p
 ITAZxkyx2Yityikj+lkO5XXyvLWVkLC9LbqQ8yZeKIwAnTwqHFumm0Ja4JSGxjFCyNUe
 iFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4HrHpJuYloPdd64QgDvsMEZuP7xh7v2AxwQIiGYP/MQ=;
 b=ArzqAzITYo6SX1VQZgDPZJKObP3IzZQZBSeCdQwcGr8M255UJHP7f+PAx4lingPZpm
 rP1o3wg9Bk9BSY7hOsesWyUt7V8ya5HEbU2oaNEqIbbYHVdZaSasLXF/0Gir5AZugfPt
 +RzDOKWvjgS3UUAR83M7rJD9dm4FjCDZsdmGNsaS9RPIbt4aceqhWIarSR1YUq5LHvUW
 TjWcw1V6DV72o8t7FGE9mwC72OXtFH9T19+mssuRsC0IALs9aXGyjMyTSTYdLzPm0uPK
 dwm1QcL4fBsYmJrBh00+eFtCiZbYAOBLRdnOsYzMVrqHMb7z5RihuIBFAbzquhD7bLXR
 XcBw==
X-Gm-Message-State: ANhLgQ3hvWG6t6ImGuNoLblQ97qzgvouWFeDgy+vfwxu+h5FsyIUW8R0
 ZXdo3W5iDKpZrXI8zs1/kEuCfadtWcICmmGzP+B4IA==
X-Google-Smtp-Source: ADFU+vvtWUnpgSR4cBsrFTI3Mtf9+RyaT5KjmUoKRwAbx1+YCbYzwZsgMVbDCYPSxtaSHxlcT6lv+BwV3Srw2n+HtWY=
X-Received: by 2002:a9d:19e9:: with SMTP id k96mr17642241otk.68.1583855227689; 
 Tue, 10 Mar 2020 08:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-3-robert.foss@linaro.org>
 <CAOMZO5D7N6FfPMiycGun-eui-G-tbp15stwRWBWs4L98JHFfGA@mail.gmail.com>
In-Reply-To: <CAOMZO5D7N6FfPMiycGun-eui-G-tbp15stwRWBWs4L98JHFfGA@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 10 Mar 2020 16:46:56 +0100
Message-ID: <CAG3jFyuwHEXHD1JbWMwNX_LDtawJ1+-zEptzq2yrn8Uk+S3fdQ@mail.gmail.com>
Subject: Re: [v1 2/3] media: ov8856: Add devicetree support
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_084708_840905_E638D7DE 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 ben.kao@intel.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 10 Mar 2020 at 15:03, Fabio Estevam <festevam@gmail.com> wrote:
>
> On Tue, Mar 10, 2020 at 10:47 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > +{
> > +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > +       int ret;
> > +
> > +       ret = clk_prepare_enable(ov8856->xvclk);
> > +       if (ret < 0) {
> > +               dev_err(&client->dev, "failed to enable xvclk\n");
> > +               return ret;
> > +       }
> > +
> > +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> > +
> > +       ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > +       if (ret < 0) {
> > +               dev_err(&client->dev, "failed to enable regulators\n");
> > +               goto disable_clk;
> > +       }
> > +
> > +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);
>
> To power it up you probably only need:
>
> gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, 0);
>
> And use reset-gpios as active low in your device tree. Assuming the
> reset-gpios is active low like other OmniVision sensors.

Ack.

>
> > +
> > +       usleep_range(1500, 1800);
> > +
> > +       return 0;
> > +
> > +disable_clk:
> > +       clk_disable_unprepare(ov8856->xvclk);
> > +
> > +       return ret;
> > +}
> > +
> > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > +{
> > +       gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> > +       regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > +       clk_disable_unprepare(ov8856->xvclk);
> > +}
> > +
> > +
>
> Unneede extra blank line.

Ack.

>
> >         v4l2_i2c_subdev_init(&ov8856->sd, client, &ov8856_subdev_ops);
> > +       ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> > +       if (IS_ERR(ov8856->xvclk)) {
> > +               dev_err(&client->dev, "failed to get xvclk\n");
> > +               return -EINVAL;
>
> You should better return the real error insteald
> PTR_ERR(ov8856->xvclk). This way defer probe could work.
>

Ack.

> > +       }
> > +
> > +       ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> > +       if (ret < 0) {
> > +               dev_err(&client->dev, "failed to set xvclk rate (24MHz)\n");
> > +               return ret;
> > +       }
> > +
> > +       ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> > +                                              GPIOD_OUT_LOW);
> > +       if (IS_ERR(ov8856->n_shutdn_gpio)) {
> > +               dev_err(&client->dev, "failed to get reset-gpios\n");
> > +               return -EINVAL;
>
> Please return the real error.

Ack.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
