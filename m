Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824C473407
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 18:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xsZDr+uxEVhpzpUy5kngPzvdp+bMCAAB5SMcIgSlgsc=; b=eEX0ERu+RQBPjX
	qas6CuwvmnqqeFf4mOZTsgUabiFHWV1fVo0Bgfy2U1wAsqZ15DTzmjTMxfVwEXQ8Qkz93LUYx3Gu3
	hK6Ix99qr5M/ZsXu6OF0CA3b75brZ/QTWxNmcimm+TfQuM87KQhOu7gNbB2UDGiZEaxLKxu/+MtPG
	A33qblaY3vGJ2KM8OtMl8dKcMvSoUzogF4EyKBKWRbcEbbkvz2P3V44i+M4Csk1JiObqdSkxAuLYb
	IDTpmkYgqAHsq/JWkfDOMhc6I6qpNs9dQ+a6kIHZNWC2pYhGYEkoLboV7/p6KewevTIh6kC1S9ENh
	0A6Fn0PoJ8G4kWgwZc4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKGu-0007xo-29; Wed, 24 Jul 2019 16:37:44 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKGr-0007xI-9y; Wed, 24 Jul 2019 16:37:42 +0000
Received: by mail-io1-f65.google.com with SMTP id z3so91009718iog.0;
 Wed, 24 Jul 2019 09:37:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=aN3WiNJl0bfCZ6MqW9HUrJKO6cOxUKnLi8cPca8JyJ4=;
 b=cdbvXtFbcZdf6m0RM5l+kP7olY2OPVLqNEg5U+W4Nqsqtnc4MVUdJTnZPTAxQT14JS
 E6WmHHEMQiJKFfD4Zer/0d7OlH8LYVMr/LsnnrAHHBRd5ZsEc4QUuWHhVgQHAReJV4Ac
 6Yk0NDlIx53FkGO2shYpAApcXPw8UVcXSV4Rzwfm8+BAfjNt1KO9gVcHRK5CjUcGue3J
 AHFzHuVhYS8qAaaV+iM2r70zLOFxoBgDvDN1DdxR9BTvquUciq0TThFF2X5cHL4g2pIQ
 cH9vCE7lNPaxOVx9vkZao5RG81BaH34ZFBRn4ThShZ3vVf1fI2YnplXj2BvROvb5pSbW
 aGyg==
X-Gm-Message-State: APjAAAVuI8csiFizBEZQKYe3GH1t+nve/4fLoRz41bOSVb1iUoDJT/RJ
 JH7WfzYCVLDejZS5nmZUjg==
X-Google-Smtp-Source: APXvYqxBJFBHz4CQS6sQgG+9iwqs2ivKeU8rEkIxda0VNz5GfxhHcwnTFYOz14lhl0mS6oDzsTpOug==
X-Received: by 2002:a5d:8195:: with SMTP id u21mr78103739ion.260.1563986260529; 
 Wed, 24 Jul 2019 09:37:40 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id l5sm80967912ioq.83.2019.07.24.09.37.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 09:37:39 -0700 (PDT)
Date: Wed, 24 Jul 2019 10:37:39 -0600
From: Rob Herring <robh@kernel.org>
To: dongchun.zhu@mediatek.com
Subject: Re: [PATCH 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS
 entry
Message-ID: <20190724163739.GA29502@bogus>
References: <20190708100641.2702-1-dongchun.zhu@mediatek.com>
 <20190708100641.2702-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708100641.2702-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_093741_342430_BA7B1ADC 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jul 08, 2019 at 06:06:40PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> =

> Add the Devicetree binding documentation and MAINTAINERS entry for dw9768.
> =

> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt | 9 ++++=
+++++
>  MAINTAINERS                                                     | 7 ++++=
+++
>  2 files changed, 16 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,=
dw9768.txt
> =

> diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.=
txt b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
> new file mode 100644
> index 0000000..94b8ec3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
> @@ -0,0 +1,9 @@
> +Dongwoon Anatech DW9768 camera voice coil lens driver
> +
> +DW9768 is a 10-bit DAC with current sink capability. It is intended
> +for driving voice coil lenses in camera modules.
> +
> +Mandatory properties:
> +
> +- compatible: "dongwoon,dw9768"
> +- reg: I=B2C slave address

Why not shared with the existing DW9807 binding? Or this could be a =

trivial device.

> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5cfbea4..8f6ac93 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4872,6 +4872,13 @@ S:	Maintained
>  F:	drivers/media/i2c/dw9714.c
>  F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
>  =

> +DONGWOON DW9768 LENS VOICE COIL DRIVER
> +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> +L:	linux-media@vger.kernel.org
> +T:	git git://linuxtv.org/media_tree.git
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.txt
> +
>  DONGWOON DW9807 LENS VOICE COIL DRIVER
>  M:	Sakari Ailus <sakari.ailus@linux.intel.com>
>  L:	linux-media@vger.kernel.org
> -- =

> 2.9.2
> =


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
