Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E99DAF34
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 16:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlqsBerWP6RoMlHYgvxPsqwr4d+ArC5imGqAvezlLck=; b=AjREQFco8dczXG
	f3I4+9s57pZ5z3ozSNq9OuD0Fr2qr1D2ixG9sMvF2sx7mDqUUcwUsVK6q7O/r2JMSA9lZZh1lJUUC
	EiVN2EGhaKkzEd8Me8WwRu6R+a9ClUpHrCLttw5jGYaLcvPUWj0ruBU854KcUaCdKtH5cIBusg2VT
	xvWwrI9HCW1xC6jR1DaJb0R6hcVyrB7Qdzl/q2fbyDUIMwMQEQvBpa+a4s4cVh+dSHmaP63jKMTbY
	loO8HOcqYi3i9eB4TzRDGaremcO5C0D/18f6qNygfn4a6CdFttTQ56svInWqSG5eWu33VDrBr6jyF
	mW0RF3OrVXRli5sSYILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6SU-0004N6-Sx; Thu, 17 Oct 2019 14:08:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6SJ-0004E5-CI; Thu, 17 Oct 2019 14:08:44 +0000
Received: by mail-ot1-f65.google.com with SMTP id z6so2012096otb.2;
 Thu, 17 Oct 2019 07:08:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4LaxdzcWVgTMeshGXRDImrA5EwGUcbpIabxr8Z7hfxY=;
 b=oKofthAghBceLY7cYp36jN2gurtPfQaA4veMFJMcnWdLIPhgFA10Kaff6sqS193p3I
 nZBH9yIzh/R1DqVWjpR5ccDfHGiICMj1CrQoIFgPMdlO9zUBwzP+MZpuW3fokakgHsqG
 dTfKgUVKXRmGdcyPVXTxMoi2C0CbYwIz1PGl5XCED4yob0cw5RTrtZ/ovZLZ8VI8YR9x
 M7rQLClgx7yHPJMZCyoAFVQlI6qd3zdEi9axlWts6ENUQM+Pl9cJ/9HjOLULG5ITjxbg
 WmaCLLNwwOyQAA90DynM74HCBci6ISlorny2Q83Gc05k/HdhJOoPAt5q4CQi9ns3j4OH
 MzPQ==
X-Gm-Message-State: APjAAAXWzdsI3vQFnVnbGomUQgjsbI2GVXZHkbVBDq28zX740BzQdyXu
 B6Xez+IOcMUTLRSQqpEcIw==
X-Google-Smtp-Source: APXvYqzWR4t2orXzG34Y3uK5tLGUXivPJ3U/zljrWoSmEsG8YVlKGN5S+DXwZjmsakg5G35UsjPEqQ==
X-Received: by 2002:a05:6830:1510:: with SMTP id
 k16mr3207388otp.197.1571321322294; 
 Thu, 17 Oct 2019 07:08:42 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 91sm639337otn.36.2019.10.17.07.08.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 07:08:41 -0700 (PDT)
Date: Thu, 17 Oct 2019 09:08:41 -0500
From: Rob Herring <robh@kernel.org>
To: min.guo@mediatek.com
Subject: Re: [PATCH RESEND v7 1/6] dt-bindings: usb: musb: Add support for
 MediaTek musb controller
Message-ID: <20191017140841.GA20279@bogus>
References: <20191017082554.27953-1-min.guo@mediatek.com>
 <20191017082554.27953-2-min.guo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017082554.27953-2-min.guo@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_070843_417442_7AA49604 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019 16:25:49 +0800, <min.guo@mediatek.com> wrote:
> From: Min Guo <min.guo@mediatek.com>
> 
> This adds support for MediaTek musb controller in
> host, peripheral and otg mode.
> 
> Signed-off-by: Min Guo <min.guo@mediatek.com>
> ---
> changes in v7:
> 1. Modify compatible as
> - compatible : should be one of:
>                "mediatek,mt2701-musb"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Change usb connector child node compatible as "gpio-usb-b-connector" 
> 
> changes in v6:
> 1. Modify usb connector child node
> 
> changes in v5:
> suggested by Rob:
> 1. Modify compatible as 
> - compatible : should be one of:
>                "mediatek,mt-2701"
>                ...
>                followed by "mediatek,mtk-musb"
> 2. Add usb connector child node
> 
> changes in v4:
> suggested by Sergei:
> 1. String alignment
> 
> changes in v3:
> 1. no changes
> 
> changes in v2:
> suggested by Bin:
> 1. Modify DRC to DRD
> suggested by Rob:
> 2. Drop the "<soc-model>-musb" in compatible
> 3. Remove phy-names
> 4. Add space after comma in clock-names
> ---
>  .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
