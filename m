Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64C2EE3C
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 03:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fiDqJPi8vCmt8pz5FcQkTzm7h8S7zhezDeg4NAPAT/4=; b=kL1GFZQr08jWTU
	5YpuicsbjAFePzv7W8ZlBa4wRZg7P5/U2Hkqvdypwdkl5I+/JJSzsEEcCvYPA7MJ0fieGmU1K1nPJ
	USeUWML2zB6Hnd+hBtCmnHodotdUS05rb09tOBi4Thbq8K5Jqftzy15jnHAuNlnvJ0gKHYul1ygDX
	eRNMXeaBosT353DBkH+GdeP9C/ISMZFyuU6Wnm9jKGESq0HfsBvC8jfCkVk3Uxdvb5GAy7qHbXeoM
	7fKxXgGXuAuUaEi+JNVkO4atyiQn5GkCnYpuLRj+brPTRR0rYu+6livToDk7t8guVl3tYI0ygIHB8
	7wytWLE6KSFvy8dYFTXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLHNh-0000lc-5C; Tue, 30 Apr 2019 01:16:25 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLHNd-0000l3-Sx; Tue, 30 Apr 2019 01:16:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id b18so1454126otq.3;
 Mon, 29 Apr 2019 18:16:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SQZxWQDZW8/QOAQDuwFNwl//qikn1cHVqQ6ue/TM68k=;
 b=VBpl2fHja+h8rQyU1EGbXKNtkncqWRXDbLH43k7OGqT0lEEDC2PNCwGXZ8rhsOtxnQ
 IlE1teOdja1n7YbBbkoillMR9SsST749CTv8zALVVXBDsNZo/Ux2VrctL3LzivkJDR3z
 raqgE/XG0/HPhx1biyL0IKjR2ton2yQr1KLgnIzHL/kiYZ2BWgWAFDc7nzb0lw+iZ/uU
 SoCTu/K7aW/TrOITG9oVuR00o4ThK9j6QPhW1qYK1NkOmEhiXZzFAiluGuy66OvowIP5
 5ADP1Gr3L6aXwF5zBgfUqAAufUtGDCX+e+VddQYoNmydTbDa5qnUy6Po6jbySt3StE7F
 WWvQ==
X-Gm-Message-State: APjAAAVdeE/pdgF89CRA0xoeix4ZW7AaM3fwpwQxHavvzbB76WbilOIz
 6PeFuSIlS4ji09RFv01zYA==
X-Google-Smtp-Source: APXvYqxSqUjuRyMgW1bUn+uBZ/b9Nz+CnOlelgEI3LlYald3OCQLZm1tFowOlbDv5zDh0+v4cWxXUg==
X-Received: by 2002:a05:6830:1248:: with SMTP id
 s8mr89131otp.234.1556586980916; 
 Mon, 29 Apr 2019 18:16:20 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h23sm16727340oic.10.2019.04.29.18.16.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 18:16:20 -0700 (PDT)
Date: Mon, 29 Apr 2019 20:16:19 -0500
From: Rob Herring <robh@kernel.org>
To: Frederic Chen <frederic.chen@mediatek.com>
Subject: Re: [RFC PATCH V1 3/6] dt-bindings: mt8183: Added DIP dt-bindings
Message-ID: <20190430011619.GA22170@bogus>
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-4-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417104511.21514-4-frederic.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_181621_931278_454C18EB 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 tfiga@chromium.org, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, hans.verkuil@cisco.com, zwisler@chromium.org,
 matthias.bgg@gmail.com, linux-mediatek@lists.infradead.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Apr 17, 2019 at 06:45:08PM +0800, Frederic Chen wrote:
> This patch adds DT binding documentation for the Digital Image
> Processing (DIP) unit of camera ISP system on Mediatek's SoCs.
> 
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> ---
>  .../bindings/media/mediatek,mt8183-dip.txt    | 35 +++++++++++++++++++
>  1 file changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
> new file mode 100644
> index 000000000000..0e1994bf82f0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
> @@ -0,0 +1,35 @@
> +* Mediatek Digital Image Processor (DIP)
> +
> +Digital Image Processor (DIP) unit in Mediatek ISP system is responsible for
> +image content adjustment according to the tuning parameters. DIP can process
> +the image form memory buffer and output the processed image to multiple output
> +buffers. Furthermore, it can support demosaicing and noise reduction on the
> +images.
> +
> +Required properties:
> +- compatible: "mediatek,mt8183-dip"
> +- reg: Physical base address and length of the function block register space
> +- interrupts: interrupt number to the cpu
> +- iommus: should point to the respective IOMMU block with master port as
> +  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
> +  for details.
> +- mediatek,larb: must contain the local arbiters in the current Socs, see
> +  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
> +  for details.
> +- clocks: must contain the local arbiters 5 (LARB5) and DIP clock
> +- clock-names: must contain DIP_CG_IMG_LARB5 and DIP_CG_IMG_DIP
> +
> +Example:
> +	dip: dip@15022000 {
> +		compatible = "mediatek,mt8183-dip";
> +		mediatek,larb = <&larb5>;

> +		mediatek,mdp3 = <&mdp_rdma0>;
> +		mediatek,vpu = <&vpu>;

Not documented.

> +		iommus = <&iommu M4U_PORT_CAM_IMGI>;
> +		reg = <0 0x15022000 0 0x6000>;
> +		interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
> +		clocks = <&imgsys CLK_IMG_LARB5>,
> +			 <&imgsys CLK_IMG_DIP>;
> +		clock-names = "DIP_CG_IMG_LARB5",
> +			      "DIP_CG_IMG_DIP";
> +	};
> -- 
> 2.18.0
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
