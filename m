Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32C024BEB
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 11:44:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dgCfmwUBfQEA7ljO2jE3ByfTFlH0yAWXDXZP1DZpse8=; b=O4wW/fQRhKxkKi
	b9EP5Iy5rqsU7rc7Rb6DFyBFGJ/0Ao0/NpT9RgIDu+pZDEiTEbklXVBJ64G+2vfysAJ8ySQWBPJOD
	/8+ekQPt1ZYCgldwXGNXXFSKbAOHcGq+crR3p4P21/4APn47UwgkPumpnu9Qfo2GMlnLemBMGFjnh
	vVx+Kj4870cNdHYN1TaAvECnPS3QlEg+M44/0prCiL7Aap8kE+w6VFxFl888fDCUSmm5fUgpsEhZ0
	jb6X4Tz3PFsSGDqF3zvnP6hG1ntKPTqQWXQJgbWy4K6WRmI23EyzNrknFH6/jUyJN79VdWdyuxwc4
	XZoGwweloWiwOrmZ9Mgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT1Jq-0002IC-8I; Tue, 21 May 2019 09:44:26 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT1Jn-0002Hl-7t
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 09:44:24 +0000
Received: by mail-qk1-x741.google.com with SMTP id a132so10569004qkb.13
 for <linux-mediatek@lists.infradead.org>; Tue, 21 May 2019 02:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ijroMiTrkHXqlMfhn9SztkG7X6uOQ25XEQdTn0jnBnY=;
 b=oBKmmDSv00sKW7IyLYp9aV+eXwzB1AcB3oLXoQb04qQNrJpKL6G3m4XjLmqxzHzKOn
 pOq0CYNLqyuSfHmo0PEeaxQGPd11BZ472oJAL1G9Wp8yrbpJR85UDo2tBzPrgonP3Z4/
 drvT5ig+crfNE/69ftEi8C4DMbrEj+f0oQmoY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ijroMiTrkHXqlMfhn9SztkG7X6uOQ25XEQdTn0jnBnY=;
 b=WZfaF0rBVJPhtUVcaXujzpgqytGsVR6Fy0uLIOL/BjVyw7dc/wMZWh7E5nPXrVSWyC
 sjKVLGbbuW9L1hoH6inaZFTsvpvRKMuX9t5B26uinahogyAWu9JUWbGNZLLP+VwWMBPS
 rJjpln0DIrneKrXN4djDeE4M3+5lpZxTZlSB6v/qdwkiFhFN+6muOA6cZPxPcUaBkpKc
 LPWhEqOWZzhJKTO5Ler2QetvKcREH+WH5nualvceUim2l+71dfcCdz1u/o5DZWWBR1rl
 XWAYi27WyBv8ZUkKqRC3uER+8W6kGDdX9Lw/0YFf7iVwD513oNk/h8rAQVGw4mD4gWHb
 VMnA==
X-Gm-Message-State: APjAAAXpzTlAqIyWAEB8fkhFQlZICpEvuyqwkX1ShSruyfKLf5jzbkbi
 OUuMS2HDGWPbgwNI4qz0FjL50ziKec0yKWROU3hyaA==
X-Google-Smtp-Source: APXvYqxJHoRHsB+jmV/hKJW19VMYhjx1IQg9Q7eOkF2Is+aUmsmuEFTIGhRYezCAUHfu9/0HEyav4atEdfXTYpBZJSs=
X-Received: by 2002:a37:af03:: with SMTP id y3mr3391061qke.296.1558431861328; 
 Tue, 21 May 2019 02:44:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190521084701.100179-1-tientzu@chromium.org>
 <20190521084701.100179-3-tientzu@chromium.org>
In-Reply-To: <20190521084701.100179-3-tientzu@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Tue, 21 May 2019 17:44:10 +0800
Message-ID: <CANMq1KAa6mOFJdhdXjV73wE8et8Cj+W-b73w=1kPaxmS6iimow@mail.gmail.com>
Subject: Re: [PATCH 2/2] uart: mediatek: support Rx in-band wakeup
To: Claire Chang <tientzu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_024423_301330_1E179995 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 <linux-mediatek@lists.infradead.org>, changqi.hu@mediatek.com,
 linux-serial@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 4:47 PM Claire Chang <tientzu@chromium.org> wrote:
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
> ---
>  drivers/tty/serial/8250/8250_mtk.c | 33 ++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>
> diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
> index 417c7c810df9..61892abf707d 100644
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
> @@ -572,15 +576,44 @@ static int mtk8250_remove(struct platform_device *pdev)
>  static int __maybe_unused mtk8250_suspend(struct device *dev)
>  {
>         struct mtk8250_data *data = dev_get_drvdata(dev);
> +       struct uart_8250_port *up = serial8250_get_port(data->line);
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
> +       int err;
> +
> +       if (irq >= 0) {
> +               err = disable_irq_wake(irq);
> +               if (err) {
> +                       dev_err(dev,
> +                               "failed to disable irq wake on IRQ %d: %d\n",
> +                               irq, err);
> +                       return err;

I'd drop this return err in the resume path, still better to restore
the pinctrl and resume the port, even if we can't disable the irq_wake
(which, really, shouldn't happen if we could enable it earlier...).

Also, many other callers of disable_irq_wake just ignore the return
value, so maybe it's ok to do the same, but I'll let other people
comment.

> +               }
> +       }
> +       pinctrl_pm_select_default_state(dev);
>
>         serial8250_resume_port(data->line);
>
> --
> 2.21.0.1020.gf2820cf01a-goog
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
