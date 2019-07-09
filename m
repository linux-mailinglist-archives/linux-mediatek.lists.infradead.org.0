Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BF362E23
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jul 2019 04:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0t+X/b74fSTSk2t62Of7X0NsNgHtwgFIY6jvORlKUA=; b=hFFqHaJzOgxz4l
	XLPVGpehlr8a92Bz8l/pEA7uGYoMiV8SFG8kNQks/2zDkpXq4EAwFW28OICeuVTaF3Y6ZvtfK+ae8
	HaE139wXsdWnXEL6Qkp1uiu1Osv3PaPmJiYtSmBi2eHyGuO3F/+i5sByPNRGTOiqgPV0IpfRhnF5a
	/hpTMBPTiojQWZIj3tdwkXzRVzN6i/k1OV7hpTKmaYDJojhWfezMxujFqXAPV5fzSaYep0QA4frtu
	zL/+k6a4YV82nQbqhog++4pcppmW4d84KkWjgkWkT+3KJTwEOKZzaGFyIkfaz9n6k+oU2vVCbFtPk
	3xQIEqYlXvCAz9KFNv5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkfwo-0000Kw-3C; Tue, 09 Jul 2019 02:33:38 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkfwV-00009e-Ef; Tue, 09 Jul 2019 02:33:20 +0000
Received: by mail-io1-f65.google.com with SMTP id h6so31648038iom.7;
 Mon, 08 Jul 2019 19:33:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rmiNZbfd1KHmv8w/p95hp/bTVqLfrNkOq2EtR4rd7qE=;
 b=PfqqqjM14TlQ2S+AEJhl/k2wBV6bR8fmeOHarf9+AUNXL2tS2FPgYyW73OY1Rd8Wba
 yiIvwPFZIq+//GVrnRFDCBeBlV15s8Qo9eDd50+ul42+9Pr/0n70nWN+9APZEpzNeqbP
 GUg2pYwdPhSQQLPCcZyfi5JPnshVg+QeR/chF8Yf65CQ73b96VywCzXMHA2clKbR1tH7
 cZIwEdXwCEOJFdkUXtiDMq+tj/CAwQdtcaGIxiPqMQjxutl5FLcB+6qEJ4mmZue+cuBO
 Q/9N3V3LiGcMWfGLpAQumuCXL49Z+2bs1LA/r6qzKTusIORKd9XFX7uAAIYoxm2lU6lD
 YvRg==
X-Gm-Message-State: APjAAAWm+LuW+7sRv1Js/XObSJ63tQp9f0O1czuOwieOFRG9Sz9Kni7j
 Ma7+oiv+lBUOJpz2/7XskQ==
X-Google-Smtp-Source: APXvYqxpasfFmebFdYjmqzNOABCQJM3SIkh/b8el1fm7lZGEZU9+E5iAG05xTRNXfGYdtO8PYKXzZQ==
X-Received: by 2002:a5d:8508:: with SMTP id q8mr1172231ion.31.1562639598437;
 Mon, 08 Jul 2019 19:33:18 -0700 (PDT)
Received: from localhost ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id c14sm17398191ioa.22.2019.07.08.19.33.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 19:33:17 -0700 (PDT)
Date: Mon, 8 Jul 2019 20:33:16 -0600
From: Rob Herring <robh@kernel.org>
To: Dehui Sun <dehui.sun@mediatek.com>
Subject: Re: [PATCH v1 2/2] arm64: dts: mt8183: add systimer0 device node
Message-ID: <20190709023316.GA2962@bogus>
References: <1560252534-11412-1-git-send-email-dehui.sun@mediatek.com>
 <1560252534-11412-3-git-send-email-dehui.sun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560252534-11412-3-git-send-email-dehui.sun@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_193319_493682_ADA9615D 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
 weiyi.lu@mediatek.com, srv_heupstream@mediatek.com, erin.lo@mediatek.com,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 07:28:54PM +0800, Dehui Sun wrote:
> Add systimer0 device node for MT8183.
> 
> Signed-off-by: Dehui Sun <dehui.sun@mediatek.com>
> ---
> This patch is based on the following patches:
> https://patchwork.kernel.org/cover/10962385/
> https://patchwork.kernel.org/patch/10983939/
> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> index c2749c4..ac3f87d 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> @@ -254,6 +254,15 @@
>  			clock-names = "spi", "wrap";
>  		};
>  
> +		systimer: systimer@10017000 {

timer@...

> +			compatible = "mediatek,mt8183-timer",
> +				     "mediatek,mt6765-timer";
> +			reg = <0 0x10017000 0 0x1000>;
> +			interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&topckgen CLK_TOP_CLK13M>;
> +			clock-names = "clk13m";
> +		};
> +
>  		auxadc: auxadc@11001000 {
>  			compatible = "mediatek,mt8183-auxadc",
>  				     "mediatek,mt8173-auxadc";
> -- 
> 2.1.0
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
