Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E40A43749
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 16:40:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Keu4fclIFUW2hIvyfRkX5VKUowGhqFEcAAo+W14qIw=; b=GE5oRuY4vlnJqj
	Xo4rbUitCakt+unEltWrPzXfQUnuRiN9GkRip92YrrhJsJzcmsWBm+uEJkZ0IgqOJ5nvqXP9KFFzV
	GpsWStyg0xGb4+J7nUvlA4KM+imKXxBIO090xrNtoy6sncxr3TB66O/nYWZ8Low+amliZVRQkVCUW
	/OVNyYHUTq9BKLLJ8kD0iijEXgSakWVM0dYupjYwAGuZzGqY1WXua2/tqv661dILxa4QEF8t0Oi2m
	iABvvafj/DlBmJ9eylMxTMS56aBQAD6V//TTvzElUoka9QBGrm2b9j0CfnpFb/3aK5znCApyYaVl0
	gNEUNf9e0UbBU5QtbvRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbQu0-0000MG-OQ; Thu, 13 Jun 2019 14:40:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbQtx-0000Lh-P8
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 14:40:31 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A3BB21743
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Jun 2019 14:40:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560436829;
 bh=AMfYYiFDnSPplYQGWm8VdFubFiToLLjY7NKHWlMj/7Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=YnLk7DLWFZz4W5tpbheLAhQBzjY5uDLN+9Uv+hxWIC0R+FMWbozryhgV8EhJX6bfL
 4qhrMiGPmVxEhBQvpzFwOUOeEKf+M4rCIGazgenVj9yTrnf8FgPE3cFho3w5UApcxb
 I2EvYzXkabni0m4zeSV/se3EChpj7AyJ37XTFztM=
Received: by mail-qt1-f169.google.com with SMTP id j19so22790143qtr.12
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Jun 2019 07:40:29 -0700 (PDT)
X-Gm-Message-State: APjAAAVilUSNRfaxADfY6VOGTl9b6mjPooDe0O/p0SCVUmSq+HToH9om
 61E3RGw13q830E6esIgIs4sCiXcTPNlBHLOWuw==
X-Google-Smtp-Source: APXvYqxctR3wbgWzXGF/JoJM/uXXh7dkhlI9vwjgxMVNu6wr1wBEMkkREu2EEkaC7/NyGasJGU/Mex5miLNVy6SnR4c=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr3981799qve.72.1560436828511; 
 Thu, 13 Jun 2019 07:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190611121510.260188-1-tientzu@chromium.org>
In-Reply-To: <20190611121510.260188-1-tientzu@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 13 Jun 2019 08:40:16 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKJMAhOLH_Y2rgbdWZ9f5CEVdMMEF8+bHfjxxtu-cBKdQ@mail.gmail.com>
Message-ID: <CAL_JsqKJMAhOLH_Y2rgbdWZ9f5CEVdMMEF8+bHfjxxtu-cBKdQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serial: add documentation for Rx in-band
 wakeup support
To: Claire Chang <tientzu@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_074029_846259_D695C101 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, changqi.hu@mediatek.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 6:15 AM Claire Chang <tientzu@chromium.org> wrote:
>
> To support Rx in-band wakeup, one must create an interrupt specifier with
> edge sensitivity on Rx pin and an addtional pinctrl to reconfigure Rx pin
> to normal GPIO in sleep state. Driver will switch to sleep mode pinctrl and
> enable irq wake before suspend and restore to default settings when
> resuming.
>
> Signed-off-by: Claire Chang <tientzu@chromium.org>
> ---
> Resending this patch since I forgot to cc device tree maintainers/mailing list.
> The 2/2 patch in this series[1] is already in tty-next[2].
>
> [1] https://patchwork.kernel.org/patch/10962299/
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/tty.git/log/?h=tty-testing
>
>  .../devicetree/bindings/serial/mtk-uart.txt         | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/serial/mtk-uart.txt b/Documentation/devicetree/bindings/serial/mtk-uart.txt
> index bcfb13194f16..3488b6e24e0c 100644
> --- a/Documentation/devicetree/bindings/serial/mtk-uart.txt
> +++ b/Documentation/devicetree/bindings/serial/mtk-uart.txt
> @@ -21,7 +21,12 @@ Required properties:
>
>  - reg: The base address of the UART register bank.
>
> -- interrupts: A single interrupt specifier.
> +- interrupts or interrupts-extended:

interrupts-extended support is implied as both are supported and the
connection to the interrupt parent is outside the scope of the
binding. So we just document 'interrupts'.

> +  index 0: an interrupt specifier for the UART controller itself
> +  index 1: optional, an interrupt specifier with edge sensitivity on Rx pin to
> +           support Rx in-band wake up. If one would like to use this feature,
> +           one must create an addtional pinctrl to reconfigure Rx pin to normal
> +           GPIO before suspend.
>
>  - clocks : Must contain an entry for each entry in clock-names.
>    See ../clocks/clock-bindings.txt for details.
> @@ -37,7 +42,11 @@ Example:
>         uart0: serial@11006000 {
>                 compatible = "mediatek,mt6589-uart", "mediatek,mt6577-uart";
>                 reg = <0x11006000 0x400>;
> -               interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>;
> +               interrupts-extended = <&sysirq GIC_SPI 51 IRQ_TYPE_LEVEL_LOW>,
> +                                     <&gpio 121 IRQ_TYPE_EDGE_FALLING>;
>                 clocks = <&uart_clk>, <&bus_clk>;
>                 clock-names = "baud", "bus";
> +               pinctrl-names = "default", "sleep";
> +               pinctrl-0 = <&uart_pin>;
> +               pinctrl-1 = <&uart_pin_sleep>;
>         };
> --
> 2.22.0.rc2.383.gf4fbbf30c2-goog
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
