Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6406C2C3
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 23:49:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2K7FcIhK62qADVs/hOju5Eu1Qc3kCaWttnvN/ulWhog=; b=CqWiOI7dJ5Dw2N
	R9vxvapakM+WRwzMdOz/1TAa0KSIVyj4vLdWF3rexwnFyAwo2LOg9zoOtgAJ4zoW3E3xaHIyMgpOu
	XUiQ7qbPlQPZOEKGQks4nfO+QFpP4jA+b/zKrV4e8HoqyyoPeHMXgAbxwPOQa6K6Yt/SGs9rvZLw/
	gpTZv1enWF2E0Vm/qbwZN0r/a620ikGYJqg1eULjmoB6lsE6qqRMhfi8GSBNO30QPLZ0VvkimLDwU
	ZIJNPpvMQQwJOKH+86l+5Mkif3BSi2JPZlEgchT/IyKRsAV7umoRcF0G/NPvgtPLcky0wya0uDtel
	XyivmzJaJLqKMtGjkpqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnrnn-0005GQ-6c; Wed, 17 Jul 2019 21:49:31 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnrnV-00055L-Fk
 for linux-mediatek@lists.infradead.org; Wed, 17 Jul 2019 21:49:15 +0000
Received: by mail-qk1-x744.google.com with SMTP id a27so18773717qkk.5
 for <linux-mediatek@lists.infradead.org>; Wed, 17 Jul 2019 14:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ejsg9zFg1SBlFMIbKb0gYl6rd1BQSyw/OZUvkIgAnYs=;
 b=TaxnU2Oyx2xFw2mWD1NKL4w1DaCcE7Y+7E0ijhbB4LV85kcJJFyakph9adbzXQFHOz
 878Z2XS7PJvMkQstz8d2kM8Kv7PEN4jRzmh6HzEWEDzyxpeFJz6gON8Dvj5Ye2rZvKH3
 6EiuYt1IV5zpofrOF9eJsX4oYBwWwKBOexo0M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ejsg9zFg1SBlFMIbKb0gYl6rd1BQSyw/OZUvkIgAnYs=;
 b=ewv38TBg61vwQdXy7CX77u4HF2ijWbZaJ7NnnU0VBbexU3Bk0TEk2j+IqWksBZS20/
 ufwDMXQPBdN/W75neXke3Cx09rhlrDA4rxzj2WEEHM01Te5LldOoyzST5+fEITNX+wer
 H644baMhOL3vUJXKmK+VtBWQymbBGtpOqs4c0FFHOXE7J90DdMQAsDRS2BTnwJ1USJqG
 hFG5Wbp2s97yzh9Epoa0y+26++9BCewvYWLVwrvgDrPb8WbJTb8O0omvVSxrlf1ts1gL
 AFkYCoGpNLV2x1HUiUv+3s3JBnatHIWHyima/eS4bvkJ67IcsH0KljpfWDjOzphK/GL1
 9ZOg==
X-Gm-Message-State: APjAAAVe4XBT62NfvvAwWj6qruEZaQpeK5CWz/fSbFoF9umcBpPTPuFC
 H8cLPskyfeT8nH5QfzTDTcHeE9y0a7+fluQlj9eYyQ==
X-Google-Smtp-Source: APXvYqyNm7b7/Vdeq0kcv6bDvARYwnBGZlOZ5GZXhVqH5sSSwkvumU2WuAPzCpUXnbYRnopJaVkUVvXRBo30p08cZDQ=
X-Received: by 2002:a37:48d0:: with SMTP id
 v199mr27184138qka.318.1563400149938; 
 Wed, 17 Jul 2019 14:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190627080116.40264-1-jitao.shi@mediatek.com>
 <20190627080116.40264-2-jitao.shi@mediatek.com>
 <1561702259.18399.7.camel@mtksdaap41>
In-Reply-To: <1561702259.18399.7.camel@mtksdaap41>
From: Ryan Case <ryandcase@chromium.org>
Date: Wed, 17 Jul 2019 14:48:59 -0700
Message-ID: <CACjz--k+Z2QqLEyrWoWSma_K1eP9jcaN3osc80UJQNK9m8=TFQ@mail.gmail.com>
Subject: Re: [v5 1/7] drm/mediatek: move mipi_dsi_host_register to probe
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_144913_526484_275FFA0D 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, Sean Paul <seanpaul@chromium.org>,
 devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki Dae <inki.dae@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 11:11 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Jitao:
>
> On Thu, 2019-06-27 at 16:01 +0800, Jitao Shi wrote:
> > DSI panel driver need attach function which is inculde in
> > mipi_dsi_host_ops.
> >
> > If mipi_dsi_host_register is not in probe, dsi panel will
> > probe more delay.
> >
> > So move the mipi_dsi_host_register to probe from bind.
> >
> > Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> > Reviewed-by: CK Hu <ck.hu@mediatek.com>
>
> This version is different than v4, so please remove reviewed-by tag when
> this patch change. When I see a reviewed-by tag of mine, I would just
> skip review it again because I assume this patch is the same as previous
> version.
>
> For this version, I give still give it a
>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>
> > ---
> >  drivers/gpu/drm/mediatek/mtk_dsi.c | 53 +++++++++++++++++-------------
> >  1 file changed, 31 insertions(+), 22 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > index b00eb2d2e086..595b3b047c7b 100644
> > --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> > +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> > @@ -528,7 +528,7 @@ static s32 mtk_dsi_switch_to_cmd_mode(struct mtk_dsi *dsi, u8 irq_flag, u32 t)
> >
> >  static int mtk_dsi_poweron(struct mtk_dsi *dsi)
> >  {
> > -     struct device *dev = dsi->dev;
> > +     struct device *dev = dsi->->host.dev;

single -> here

> >       int ret;
> >       u64 pixel_clock, total_bits;
> >       u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
> > @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
> >               return ret;
> >       }
> >
> > -     ret = mipi_dsi_host_register(&dsi->host);
> > -     if (ret < 0) {
> > -             dev_err(dev, "failed to register DSI host: %d\n", ret);
> > -             goto err_ddp_comp_unregister;
> > -     }
> > -
> >       ret = mtk_dsi_create_conn_enc(drm, dsi);
> >       if (ret) {
> >               DRM_ERROR("Encoder create failed with %d\n", ret);
> > @@ -1060,8 +1054,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
> >       return 0;
> >
> >  err_unregister:
> > -     mipi_dsi_host_unregister(&dsi->host);
> > -err_ddp_comp_unregister:
> >       mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
> >       return ret;
> >  }
> > @@ -1073,7 +1065,6 @@ static void mtk_dsi_unbind(struct device *dev, struct device *master,
> >       struct mtk_dsi *dsi = dev_get_drvdata(dev);
> >
> >       mtk_dsi_destroy_conn_enc(dsi);
> > -     mipi_dsi_host_unregister(&dsi->host);
> >       mtk_ddp_comp_unregister(drm, &dsi->ddp_comp);
> >  }
> >
> > @@ -1097,31 +1088,36 @@ static int mtk_dsi_probe(struct platform_device *pdev)
> >
> >       dsi->host.ops = &mtk_dsi_ops;
> >       dsi->host.dev = dev;
> > +     ret = mipi_dsi_host_register(&dsi->host);
> > +     if (ret < 0) {
> > +             dev_err(dev, "failed to register DSI host: %d\n", ret);
> > +             return ret;
> > +     }
> >
> >       ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
> >                                         &dsi->panel, &dsi->bridge);
> >       if (ret)
> > -             return ret;
> > +             goto err_unregister_host;
> >
> >       dsi->engine_clk = devm_clk_get(dev, "engine");
> >       if (IS_ERR(dsi->engine_clk)) {
> >               ret = PTR_ERR(dsi->engine_clk);
> >               dev_err(dev, "Failed to get engine clock: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       dsi->digital_clk = devm_clk_get(dev, "digital");
> >       if (IS_ERR(dsi->digital_clk)) {
> >               ret = PTR_ERR(dsi->digital_clk);
> >               dev_err(dev, "Failed to get digital clock: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       dsi->hs_clk = devm_clk_get(dev, "hs");
> >       if (IS_ERR(dsi->hs_clk)) {
> >               ret = PTR_ERR(dsi->hs_clk);
> >               dev_err(dev, "Failed to get hs clock: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > @@ -1129,33 +1125,35 @@ static int mtk_dsi_probe(struct platform_device *pdev)
> >       if (IS_ERR(dsi->regs)) {
> >               ret = PTR_ERR(dsi->regs);
> >               dev_err(dev, "Failed to ioremap memory: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       dsi->phy = devm_phy_get(dev, "dphy");
> >       if (IS_ERR(dsi->phy)) {
> >               ret = PTR_ERR(dsi->phy);
> >               dev_err(dev, "Failed to get MIPI-DPHY: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       comp_id = mtk_ddp_comp_get_id(dev->of_node, MTK_DSI);
> >       if (comp_id < 0) {
> >               dev_err(dev, "Failed to identify by alias: %d\n", comp_id);
> > -             return comp_id;
> > +             ret = comp_id;
> > +             goto err_unregister_host;
> >       }
> >
> >       ret = mtk_ddp_comp_init(dev, dev->of_node, &dsi->ddp_comp, comp_id,
> >                               &mtk_dsi_funcs);
> >       if (ret) {
> >               dev_err(dev, "Failed to initialize component: %d\n", ret);
> > -             return ret;
> > +             goto err_unregister_host;
> >       }
> >
> >       irq_num = platform_get_irq(pdev, 0);
> >       if (irq_num < 0) {
> > -             dev_err(&pdev->dev, "failed to request dsi irq resource\n");
> > -             return -EPROBE_DEFER;
> > +             dev_err(&pdev->dev, "failed to get dsi irq_num: %d\n", irq_num);
> > +             ret = irq_num;
> > +             goto err_unregister_host;
> >       }
> >
> >       irq_set_status_flags(irq_num, IRQ_TYPE_LEVEL_LOW);
> > @@ -1163,14 +1161,24 @@ static int mtk_dsi_probe(struct platform_device *pdev)
> >                              IRQF_TRIGGER_LOW, dev_name(&pdev->dev), dsi);
> >       if (ret) {
> >               dev_err(&pdev->dev, "failed to request mediatek dsi irq\n");
> > -             return -EPROBE_DEFER;
> > +             goto err_unregister_host;
> >       }
> >
> >       init_waitqueue_head(&dsi->irq_wait_queue);
> >
> >       platform_set_drvdata(pdev, dsi);
> >
> > -     return component_add(&pdev->dev, &mtk_dsi_component_ops);
> > +     ret = component_add(&pdev->dev, &mtk_dsi_component_ops);
> > +     if (ret) {
> > +             dev_err(&pdev->dev, "failed to add component: %d\n", ret);
> > +             goto err_unregister_host;
> > +     }
> > +
> > +     return 0;
> > +
> > +err_unregister_host:
> > +     mipi_dsi_host_unregister(&dsi->host);
> > +     return ret;
> >  }
> >
> >  static int mtk_dsi_remove(struct platform_device *pdev)
> > @@ -1179,6 +1187,7 @@ static int mtk_dsi_remove(struct platform_device *pdev)
> >
> >       mtk_output_dsi_disable(dsi);
> >       component_del(&pdev->dev, &mtk_dsi_component_ops);
> > +     mipi_dsi_host_unregister(&dsi->host);
> >
> >       return 0;
> >  }
>
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
