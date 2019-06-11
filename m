Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C974186F
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 00:54:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jySrk95mByUgJP+/STtKTKQ2AkbZFg+TbJrcXOUYkKM=; b=TNxcyFSLVJSLiG
	40j0ASV1yH987123Ikkpzqws7OvkGLnog0/qSdbRJQ/iosd7meuDT8PKFhKIlX1UiFnkZAq5w3PNJ
	uHCmvDyJ9rMv7v7UPKCns+/LV8Czz1w407ZTbDN8ysQlbXIhcmgN7Pg4mGbPxyaaR0nBv0IVe9U3Z
	yhKd0PQi12v/Y0j5fi3xxM67MBh5aoXz5TdokXT5mGfSU0piRJIJLZSehTV86BethU0HQzgVV/NnO
	whl6SCy1OQtY/G4ZVL9MJYe5ZxygBWnjWwzaOENYINK0umThxuTfeyhU9ZkqxhxWcXJlyjIeCgD5N
	1lpLnjkg6q5IuwI/1nFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hapea-0002DK-1y; Tue, 11 Jun 2019 22:54:08 +0000
Received: from mail-it1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hapeP-00024m-HY; Tue, 11 Jun 2019 22:53:58 +0000
Received: by mail-it1-f194.google.com with SMTP id n189so7584671itd.0;
 Tue, 11 Jun 2019 15:53:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iQPRF6XFm/QWEVO1CPfMz0EhoIEuoqt7VcGHt4YVR3s=;
 b=evM1em5gIYL767UkQYlbJ6fX+auhmHtq4GJPQYY7fZITlX+z+CdbrNperJRfDbTq4B
 fHU3TL2yYY91y/6BfTvPBQ+zBzgRhNIaLdNRLELvIbVIy6qPLWFARKMHu/fEd6si9eIT
 im/ilkXg7jA+pW875wzBRT8cp9Uy7YF9FCrr6Xafcst7ntu2X+czHLt4TgterwRYKaox
 c+1vlcoPRgt4aJ3mUmpLn639PDFy2yj1E0WdYH/zQ9BkGMqMFWYhdpDquKvBnGzBECEn
 6R3qDXeGyyA1aoJc9kEJxIPGchS4m+HfnpQlTwciy6icR0SKXG3aTy5hNU9vHT7DCowt
 7TAA==
X-Gm-Message-State: APjAAAU3aQUBs/oMEpDP32ZutfZeTP4YEXGelwbpWERcT/oYDp0Eoqn7
 bXMbjhu6OkD3qu4FFrUQTukLgbw=
X-Google-Smtp-Source: APXvYqzoe7kqFMLzrRy1dkQxZdck05wcc6WXp2uGdqhH5bgqiTrtunhGBZNVP2Qc9VtW1KcUeh7Ffg==
X-Received: by 2002:a24:61d7:: with SMTP id
 s206mr19458252itc.133.1560293636578; 
 Tue, 11 Jun 2019 15:53:56 -0700 (PDT)
Received: from localhost (ip-174-149-252-64.englco.spcsdns.net.
 [174.149.252.64])
 by smtp.gmail.com with ESMTPSA id f4sm5155254iok.56.2019.06.11.15.53.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 15:53:55 -0700 (PDT)
Date: Tue, 11 Jun 2019 16:53:51 -0600
From: Rob Herring <robh@kernel.org>
To: Neal Liu <neal.liu@mediatek.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: rng: update bindings for MediaTek
 ARMv8 SoCs
Message-ID: <20190611225351.GA17332@bogus>
References: <1560162984-26104-1-git-send-email-neal.liu@mediatek.com>
 <1560162984-26104-3-git-send-email-neal.liu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560162984-26104-3-git-send-email-neal.liu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_155357_583463_DBA75143 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Matt Mackall <mpm@selenic.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Crystal Guo <Crystal.Guo@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 06:36:23PM +0800, Neal Liu wrote:
> Document the binding used by the MediaTek ARMv8 SoCs random
> number generator with TrustZone enabled.
> 
> Signed-off-by: Neal Liu <neal.liu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/rng/mtk-rng.txt |   15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.txt b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> index 2bc89f1..fb3dd59 100644
> --- a/Documentation/devicetree/bindings/rng/mtk-rng.txt
> +++ b/Documentation/devicetree/bindings/rng/mtk-rng.txt
> @@ -3,9 +3,13 @@ found in MediaTek SoC family
>  
>  Required properties:
>  - compatible	    : Should be
> -			"mediatek,mt7622-rng", 	"mediatek,mt7623-rng" : for MT7622
> -			"mediatek,mt7629-rng",  "mediatek,mt7623-rng" : for MT7629
> -			"mediatek,mt7623-rng" : for MT7623
> +			"mediatek,mt7622-rng", "mediatek,mt7623-rng" for MT7622
> +			"mediatek,mt7629-rng", "mediatek,mt7623-rng" for MT7629
> +			"mediatek,mt7623-rng" for MT7623
> +			"mediatek,mtk-sec-rng" for MediaTek ARMv8 SoCs with
> +			security RNG

Is there any commonality with the prior h/w? If not, make this a 
separate binding doc.

> +
> +Optional properties:
>  - clocks	    : list of clock specifiers, corresponding to
>  		      entries in clock-names property;
>  - clock-names	    : Should contain "rng" entries;
> @@ -19,3 +23,8 @@ rng: rng@1020f000 {
>  	clocks = <&infracfg CLK_INFRA_TRNG>;
>  	clock-names = "rng";
>  };
> +
> +/* secure RNG */
> +hwrng: hwrng {
> +	compatible = "mediatek,mtk-sec-rng";

How does one access this? Seems like this should be part of a node for 
firmware? What about other functions?

> +};
> -- 
> 1.7.9.5
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
