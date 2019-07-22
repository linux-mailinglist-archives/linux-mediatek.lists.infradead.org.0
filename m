Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E0A70692
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 19:13:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dknHzet7rv0zu9T4qWOBew1R/QaYMrNxOiWj+dsjluI=; b=UFjZledbIi0ANT
	V/xFSw0MH38UFjhpIUPHZu2jolQDIGEnvTQ4Euklq6gjB8reXoSmQEwPWxEbBRQWaj4KPD15we75m
	FNqHNlsfP6upg4vbU+9oxYigRyvGbnILbI4wfzx2caPIqrffkXbRFu3qXEdHYFMm70gIGKuGRY29N
	ujOUPMzW67CGRFjgLo8aXF1bIepZ1OEfowL/VZnDfm8RyQvh70euME59a6ovsLkHM674Uu+/E2qFm
	EAtjBgZjWLjpJXKr/sWjpchxpQqU0FmDPhQKzeq3rpwmaGflVELjnPfentigtDXMtgSCK1jgSdDO1
	xi746HwTzWbsSxqaDXGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpbsl-0006Qf-83; Mon, 22 Jul 2019 17:13:51 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpbsJ-0006EA-0e; Mon, 22 Jul 2019 17:13:30 +0000
Received: by mail-io1-f66.google.com with SMTP id o9so75664366iom.3;
 Mon, 22 Jul 2019 10:13:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L1CKsuR2Aj6lAs8InXlYaMJ2CXlS4I/JR7pcZ0ogj/k=;
 b=lNcbe/RImdi9WP9RDG4gucYY8KVsebL/I2iKkGiAidHOqQuIpeAWFFZv0QKRTOfPD6
 vTLjuc5PJ1nLoUzYgmKzE0J8FKR9MnttCdeuejcAaNmztPXFfOOi9+YEiEA3YhQD0ffZ
 pSYCH+ecxWIEel2T0WgBXzXuoY0vVXSH5Ox8FzXZKhLC1OeHI9JnQVfYek91RDHBD89+
 vWaYqvW6wCLK3w1zZ0ZTh5TxZCAC2uxMgF2C+kpVzxigMgPzgdoENvnDJxBf9lUawMTu
 nnOUQIdUg5UT6eWRoiPb0P2ipSVwHqf1haTiXXFIzbbFIjlGpKNl+rKOdybkXBCufu6G
 Ms9g==
X-Gm-Message-State: APjAAAUmRGeN5GaV3rknvEszPom/nz85RhE4k01n/VMJl9pJQvJTUQGK
 JGZbkKekg0DeiUoK4ofFZw==
X-Google-Smtp-Source: APXvYqy72Ozo+5lEKdgPd0TnUyVwMIgJagxKRXz4L0gqBlISYHh886+zOO3SwVbKeK4f70AEfGNBcQ==
X-Received: by 2002:a6b:7b01:: with SMTP id l1mr62468845iop.60.1563815601759; 
 Mon, 22 Jul 2019 10:13:21 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id n17sm32851341iog.63.2019.07.22.10.13.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 10:13:21 -0700 (PDT)
Date: Mon, 22 Jul 2019 11:13:20 -0600
From: Rob Herring <robh@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: rng: add bindings for MediaTek ARMv8
 SoCs
Message-ID: <20190722171320.GA9806@bogus>
References: <1561361052-13072-1-git-send-email-neal.liu@mediatek.com>
 <1561361052-13072-3-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561361052-13072-3-git-send-email-neal.liu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_101328_275943_00E7079E 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Herbert Xu <herbert@gondor.apana.org.au>, wsd_upstream@mediatek.com,
 Sean Wang <sean.wang@kernel.org>, linux-kernel@vger.kernel.org,
 Crystal Guo <Crystal.Guo@mediatek.com>, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 03:24:11PM +0800, Neal Liu wrote:
> Document the binding used by the MediaTek ARMv8 SoCs random
> number generator with TrustZone enabled.
> 
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  .../devicetree/bindings/rng/mtk-sec-rng.txt        |   10 ++++++++++
>  1 file changed, 10 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> 
> diff --git a/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> new file mode 100644
> index 0000000..c04ce15
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/rng/mtk-sec-rng.txt
> @@ -0,0 +1,10 @@
> +MediaTek random number generator with TrustZone enabled
> +
> +Required properties:
> +- compatible : Should be "mediatek,mtk-sec-rng"

What's the interface to access this? 

A node with a 'compatible' and nothing else is a sign of something that 
a parent device should instantiate and doesn't need to be in DT. IOW, 
what do complete bindings for firmware functions look like?

> +
> +Example:
> +
> +hwrng: hwrng {
> +	compatible = "mediatek,mtk-sec-rng";
> +}
> -- 
> 1.7.9.5
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
