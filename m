Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DFCA580B
	for <lists+linux-mediatek@lfdr.de>; Mon,  2 Sep 2019 15:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Subject:From:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mb2+RKNfoHiTWxW96hD+4Key2TH463NCTUEdtQ+9t0U=; b=m+CuOJt3PkMmXVmywcMn+uxRtl
	/m6OeHmyy/2nydwxH4uk0U031BQfj9d0dQTId7vKnlRZQWqC16Ov2IN4z0FJDQLFgye+e5Q2ZNl2f
	T7DdmO/3VoGyrEseeTICo55rUjJZzwxXH1D4s4K+DeCuRnwQ/8wFp6cZgN7iDfvPOZLIMUsLkkyBP
	wxyzId1fFebse15IKuO7zuj084mAkLYdqtJP3zE7FEPLdS4Di/OnOj13nIzyW9aIMQfNh2PQKw/8H
	ROsjEHYV3rUXLB4WAnNErNRZOlQiB83fzW975w4nPXV8sTJu9qjpsGPuj2f+/8q3Jc5WITpEZrtPt
	lRv/V8yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4maX-0005RP-G9; Mon, 02 Sep 2019 13:41:45 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4mXy-0001TE-3e; Mon, 02 Sep 2019 13:39:07 +0000
Received: by mail-wm1-f67.google.com with SMTP id d16so14654662wme.2;
 Mon, 02 Sep 2019 06:39:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:subject:references
 :in-reply-to:cc:cc:to;
 bh=/K8OvsXsZCheANwrAkNuWunYQ2pvjJqxEyQmrxyZlt4=;
 b=C1B4bxqjVNiyRQW5LUuaLXlnY1nVBh0CTeFFmA6a/dn/h+hTNcTIo5q7WoV6/Itti6
 Sbjth/z6JQvicdMK479Quo9p1hPo2rEQLLUlVv35cyQBifDIQ23wgndcpVH+R9qNuK6s
 UQbbu2kHSYJAMaovHnd0De15MypjiBz5wtcjWU0s1QJFbgqjrnnubaaV6G86PZQYeaaI
 zMQzfvCa6naFaxdnoHpLnV3bJcIWoUF79ljJMNMEZBh9cFYnnTsyTE6bFyvGOfClN5h1
 silsL9SRMKHi8p+gqWWdEoS1xw5APHG+B+iGYOhuAq91cQtMT6kTh7GLhF5SOyfHhjGq
 EG1g==
X-Gm-Message-State: APjAAAWXTCTW9hyvYhqTjOM2mvU7uzfrcC61+1pGwpn1dyYvKvFtrk71
 RNdYUOkaXNg4ZVfugwsWsg==
X-Google-Smtp-Source: APXvYqz6TMzEjyfG3kmbt9uaJnP2sm8Z90Zk6luGpmxi7KqHhzc3KAOfqiKS5//djPQF/U6HLrxfXQ==
X-Received: by 2002:a1c:be04:: with SMTP id o4mr3998916wmf.60.1567431544818;
 Mon, 02 Sep 2019 06:39:04 -0700 (PDT)
Received: from localhost ([212.187.182.166])
 by smtp.gmail.com with ESMTPSA id h12sm11281211wrp.51.2019.09.02.06.39.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Sep 2019 06:39:04 -0700 (PDT)
Message-ID: <5d6d1b78.1c69fb81.11037.fc17@mx.google.com>
Date: Mon, 02 Sep 2019 14:39:03 +0100
From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v7 1/6] dt-bindings: usb: musb: Add support for MediaTek
 musb controller
References: <20190830082026.30401-1-min.guo@mediatek.com>
 <20190830082026.30401-2-min.guo@mediatek.com>
In-Reply-To: <20190830082026.30401-2-min.guo@mediatek.com>
To: <min.guo@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_063906_235690_2B93E3FC 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: , Mark Rutland <mark.rutland@arm.com>, hdegoede@redhat.com,
 devicetree@vger.kernel.org, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, chunfeng.yun@mediatek.com,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 16:20:21 +0800, <min.guo@mediatek.com> wrote:
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

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
