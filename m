Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38D8326E8
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 05:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9e6LL6IDbTVwdQzIkkeMhjI9Fb2Jd92bsv3gnZPIYSk=; b=PH8kOeRbe606xl
	/sYaN3MR9THpqbFQ/vqWCpahIJNSrR/dasLinQy2Eu0QnSi8DKn0Q7wXNoJlNJFxrgCOcX+uWHusC
	66+8RQxjKJid5xSGDsys/M0iXUnsG6GWb3z1iwa26fr2hJ6be7SYTAnySO6SyzrNq9245XB3Ynt28
	SB5br5mmx1aayZLDaPGCWQZm93+dbVoYzRRLALWQplLSJEiIPAJ+0i2nm/X0glGshOaQofTmdF+nU
	pg7/W16LkbvxT+pY0egK9/QLfpr4/ZIflQtz0I3ODxrhCLskPvSoK8/Wy1tbxAA9tDioK+R9FC1fv
	ls2vByCA6Y/TKav6WO+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXdhG-0006OA-Sz; Mon, 03 Jun 2019 03:31:42 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXdhD-0006Nl-Cl
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 03:31:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id c70so10131924qkg.7
 for <linux-mediatek@lists.infradead.org>; Sun, 02 Jun 2019 20:31:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M2pM/nkf1A1euBtVWZMDLIqDbLGr66zihKn/vdYTjTQ=;
 b=UlW2uTB2hMdPcjBNNW5Lbo14ZXuAeoI4n/h8qMjd1qHsaoDYKe66yYTvfIWtY0fJHK
 dkvvwaUCGt5is3ltB0Srvsr2kbg+aKKvVqSifbv/YEeWZQmtb9fTzWAmfJqm82UinXGi
 RAb6CzCifI/b/d1BqBqQp8Iax55LjNHqbZkcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M2pM/nkf1A1euBtVWZMDLIqDbLGr66zihKn/vdYTjTQ=;
 b=iU1umt4MNI06d/vHLU+9U2bEu1ymolcFngt8uM9A+3lq8U8tKPWPK6vQf9KK6/cG3a
 K8cRLIbeI0o677fqECBpcaByHBO4RcczXY8q/IhSBhhY+P1A6i8k7jL0A+pbPjx25bhm
 dKB12009hessah+XV3kFDY40X7RImAdzdWAUla1EFvReGMUXuuh9DYks8T2OTmcu0mN6
 o/2v5liWyZihTnIwbdR3N96uGlIy6rxnFt4k/iVMgP9NdMaJBq8On9HWCzNscpxZehLh
 0Kqw61ACV9fCms/mHPRkhhLlr6wuOn37drVO+c84K6DvA/CkO2UAWNnVHV322XKcQys1
 3imQ==
X-Gm-Message-State: APjAAAW574XuD3dzhFpD0M+5Wh2dqX2o1LGDhKG/P9fsj5kSaop4QbrU
 OWvh1yjHLslRA1DQUxc1z7S6Ba+0nu4ETGnbnnknDA==
X-Google-Smtp-Source: APXvYqymK56mIsfk25HR9DGgVNvsNl7A358Z+rnD4UFU4EfXzBDVvfpl0srlguV90A6phujqMAsvuDwUioifOaAf590=
X-Received: by 2002:a37:4c04:: with SMTP id z4mr20217027qka.195.1559532696386; 
 Sun, 02 Jun 2019 20:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190527083150.220194-1-tientzu@chromium.org>
 <20190527083150.220194-3-tientzu@chromium.org>
In-Reply-To: <20190527083150.220194-3-tientzu@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 3 Jun 2019 11:31:25 +0800
Message-ID: <CANMq1KAym_cp8vCJ0+OtxAMJmsFp1LXM15rcZdKEM+w6f92=aA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] uart: mediatek: support Rx in-band wakeup
To: Claire Chang <tientzu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_203139_765199_838F0D83 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 4:32 PM Claire Chang <tientzu@chromium.org> wrote:
>
> In order to support Rx in-band wakeup, we need to enable irq wake on an
> edge sensitive interrupt of Rx pin before suspend and disable it when
> resuming.
>
> This interrupt is used only as wake source to resume the system when
> suspended. Note that the sent character will be lost as the controller is
> actually suspended.
>
> We use this to support wakeup on bluetooth. Bluetooth will repeatedly send
> 0xFD to wakeup host. Once host detects Rx falling, an interrupt is
> triggered, and the system leaves sleep state. Then, the bluetooth driver
> will send 0xFC to bluetooth and bluetooth can start to send normal HCI
> packets.
>
> Signed-off-by: Claire Chang <tientzu@chromium.org>

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  drivers/tty/serial/8250/8250_mtk.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> index 417c7c810df9..5b94b853387d 100644
> --- a/drivers/tty/serial/8250/8250_mtk.c
> +++ b/drivers/tty/serial/8250/8250_mtk.c
> @@ -10,6 +10,7 @@
>  #include <linux/module.h>
>  #include <linux/of_irq.h>
>  #include <linux/of_platform.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/serial_8250.h>
> @@ -70,6 +71,7 @@ struct mtk8250_data {
>  #ifdef CONFIG_SERIAL_8250_DMA
>         enum dma_rx_status      rx_status;
>  #endif
> +       int                     rx_wakeup_irq;
>  };
>
>  /* flow control mode */
> @@ -551,6 +553,8 @@ static int mtk8250_probe(struct platform_device *pdev)
>         pm_runtime_set_active(&pdev->dev);
>         pm_runtime_enable(&pdev->dev);
>
> +       data->rx_wakeup_irq = platform_get_irq(pdev, 1);
> +
>         return 0;
>  }
>
> @@ -572,15 +576,35 @@ static int mtk8250_remove(struct platform_device *pdev)
>  static int __maybe_unused mtk8250_suspend(struct device *dev)
>  {
>         struct mtk8250_data *data = dev_get_drvdata(dev);
> +       int irq = data->rx_wakeup_irq;
> +       int err;
>
>         serial8250_suspend_port(data->line);
>
> +       pinctrl_pm_select_sleep_state(dev);
> +       if (irq >= 0) {
> +               err = enable_irq_wake(irq);
> +               if (err) {
> +                       dev_err(dev,
> +                               "failed to enable irq wake on IRQ %d: %d\n",
> +                               irq, err);
> +                       pinctrl_pm_select_default_state(dev);
> +                       serial8250_resume_port(data->line);
> +                       return err;
> +               }
> +       }
> +
>         return 0;
>  }
>
>  static int __maybe_unused mtk8250_resume(struct device *dev)
>  {
>         struct mtk8250_data *data = dev_get_drvdata(dev);
> +       int irq = data->rx_wakeup_irq;
> +
> +       if (irq >= 0)
> +               disable_irq_wake(irq);
> +       pinctrl_pm_select_default_state(dev);
>
>         serial8250_resume_port(data->line);
>
> --
> 2.22.0.rc1.257.g3120a18244-goog
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
