Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468601900CC
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Mar 2020 23:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VyW1p7eJp5LCGbiV2yuSgiMj5mE+fycbQk7UF9bvsnM=; b=F1XW67/xHT6ASf
	ETZEOp+37NouzuYKDSSCNfz49hN+j2dnTn+L5bevBzbWLgsTSIkv+iS7TnSt8XwE95aci+NwTRvmu
	m6p1EQ0gK0OIEfXkTqIgl9Ya2irhGH3EA0raphDNx/KJhW2KNXAnkz8jX13JW8fc0aT30XtmAPe06
	U80gGRi9mLCwS9deXsX0thkBrr5GbdlbYBQkMDMtfkwKLE7ALYPxr++URqnz2DQBpAz8N/uy1YvpI
	EtF5YcDdw2+AD0mm2psXn8o0/ZVaW0O9RIXinLloHF4B4Ti0uwLzoU9m61Q87/pRSyy+1Td4UpNYv
	c105YaCVHJIBGqdejHqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGV7f-0007IG-DL; Mon, 23 Mar 2020 22:00:39 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGV7c-0007Hs-Rp; Mon, 23 Mar 2020 22:00:38 +0000
Received: by mail-il1-f193.google.com with SMTP id m9so14888336ilq.12;
 Mon, 23 Mar 2020 15:00:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qFiwHqrhsKdbaQVzkW2fMkiFVAgwIM9ohgEmy5tZ2Xk=;
 b=rT3Q5PILoIm/MckgX+ZnBNgc8Zhqk0q2EeAFX7VGd5Rzj326EmNnN9DUjX7yvBnRTV
 AzbAFbg0mm6wZdiYUxo6wTSOO6Tmw4J9ZB2/CE0sZzbJF0eDW70TntJOVuYTirsMnaRf
 Y35XtHSQ8xRZIVucg/ursh2dFirqqNlpfPQdfACQ4cjSVWlxfh28LYe2P88Jq1xxN1/7
 1y3AjS5VhWkMfnV1MfNaOCgTjOip7NdMOaP6jU/ZanOnV2tqaBGdEereI4q1AzHqIpRG
 Ygxawf6eCNO3AdaW19APRgULTM5BwTIBotObhLgJYUVS2M1G7jqf7H5gFXrVezv06KzR
 3bvg==
X-Gm-Message-State: ANhLgQ0I6MHXO5N+s3ptziwinPJcUtNnkGc077qc312hIlVpbap+J1V8
 qC8aOkW50xK5kNXmVU94TA==
X-Google-Smtp-Source: ADFU+vtSXHZEpiLMs2FsMhDZIZ99EheK1oZfK6YT/nyh4eZQFkcY0AWh7hyF7JqjXt0YhfmzAA9P8Q==
X-Received: by 2002:a92:ddcb:: with SMTP id d11mr23249377ilr.211.1585000835890; 
 Mon, 23 Mar 2020 15:00:35 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id m18sm5620099ila.54.2020.03.23.15.00.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 15:00:35 -0700 (PDT)
Received: (nullmailer pid 10516 invoked by uid 1000);
 Mon, 23 Mar 2020 22:00:33 -0000
Date: Mon, 23 Mar 2020 16:00:33 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
Message-ID: <20200323220033.GA29463@bogus>
References: <20200311074032.119481-1-jitao.shi@mediatek.com>
 <20200311074032.119481-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311074032.119481-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_150036_900020_61ACF797 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
 bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 03:40:29PM +0800, Jitao Shi wrote:
> Add a property to control mipi tx drive current:
> "drive-strength-microamp"
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt     | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> index a19a6cc375ed..d501f9ff4b1f 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
> @@ -33,6 +33,9 @@ Required properties:
>  - #clock-cells: must be <0>;
>  - #phy-cells: must be <0>.
>  
> +Optional properties:
> +- drive-strength-microamp: adjust driving current, should be 1 ~ 0xF

TBC, 1-0xf is in units of microamps? So a max drive strength of 15uA? 
Seems a bit low.

> +
>  Example:
>  
>  mipi_tx0: mipi-dphy@10215000 {
> @@ -42,6 +45,7 @@ mipi_tx0: mipi-dphy@10215000 {
>  	clock-output-names = "mipi_tx0_pll";
>  	#clock-cells = <0>;
>  	#phy-cells = <0>;
> +	drive-strength-microamp = <0x8>;
>  };
>  
>  dsi0: dsi@1401b000 {
> -- 
> 2.21.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
