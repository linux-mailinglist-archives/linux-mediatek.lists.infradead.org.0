Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AA918A859
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Mar 2020 23:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8n+3AGFqam9IxpyKftjfUKO1KxCSTY6QDbddiRvfp98=; b=kIGv2hiX9Hg4Q5
	SelpuJZEGwiPQhd8zVzuj69tiN/480qPkjVrNf/XOiT0p7BqxzbJV8jgzhF62ts3erOK2swK48Prl
	cJ1c64SahvkXNfQRgrhv/Ti32YYZ8PzZsaL1UPwTcEPaqUAy5j/+hfimU5P8NRvlIlXUP7y5eCY0Z
	xAi63Qa7F3dKUObj72LduXXscZHfI8FajPRTgceWPjdXQVazr3Z7aazs6XEei4XmH9oJivNcYwFIF
	WXVd3yBW0eRLxN1SxxISymgyU0Ei0mi0W/y2pwFLs8z0V7y2Th+8/1r9tEvkD9EmQqMWVJ5RDDR9O
	jznZEPxLtisZ8/LQbX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhKr-00056P-Jx; Wed, 18 Mar 2020 22:38:49 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhKo-00055u-3S
 for linux-mediatek@lists.infradead.org; Wed, 18 Mar 2020 22:38:47 +0000
Received: by mail-io1-f65.google.com with SMTP id q9so265596iod.4
 for <linux-mediatek@lists.infradead.org>; Wed, 18 Mar 2020 15:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hjd4cWdqxb7vqLIGudSEI03tN+skbBZc4IaGVCWe4bE=;
 b=VNf9ffoQUVP2JQ1wsOufjqzmbi030xQKPbrB4yw4jelr5f/hbjM/9awm+YEHymYGjO
 2qrSh2yHWHsYYTeAlU9YDxemC+0U0V3FlkP1JN8fQCCDpTUXFBTUepZys/bKY+/UHhju
 H23spAuzF6DmTgRd55IpBr3kvs5Yn5yhPDMhjOsYLCiZyTBJx3P8WypVOowK3UWsPTJB
 aqjfkXrPOQIUf3jm5ahO8SnPCLuP+41nRbN7tFeLjH+uKt5XxntizHZBVABPdY1U9MjI
 2scOk/rRowxMfDKdK81LNet3ZOCVhMsmfob1UenaB6S/wcRqqALGduB+/0lfUZNWjHL4
 0R3A==
X-Gm-Message-State: ANhLgQ1+bjZI9lB3GcL0g5iLar3xvkT6impBFVOS95o25Sqi/lpD1kVN
 OEy1pPqthPR8rLulIfclFw==
X-Google-Smtp-Source: ADFU+vuWOZ5C5oLxE9dB/U/jglteCOUaH90nZHmvZdWYJLWdri0o66f9VabHUrjNFihG7WzqU2uzrA==
X-Received: by 2002:a5d:958f:: with SMTP id a15mr70087ioo.170.1584571125436;
 Wed, 18 Mar 2020 15:38:45 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h29sm96397ili.19.2020.03.18.15.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2020 15:38:44 -0700 (PDT)
Received: (nullmailer pid 31930 invoked by uid 1000);
 Wed, 18 Mar 2020 22:38:42 -0000
Date: Wed, 18 Mar 2020 16:38:42 -0600
From: Rob Herring <robh@kernel.org>
To: Hanks Chen <hanks.chen@mediatek.com>
Subject: Re: [PATCH v3 1/6] dt-bindings: pinctrl: add bindings for MediaTek
 MT6779 SoC
Message-ID: <20200318223842.GA31707@bogus>
References: <1584454007-2115-1-git-send-email-hanks.chen@mediatek.com>
 <1584454007-2115-2-git-send-email-hanks.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584454007-2115-2-git-send-email-hanks.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_153846_146220_57EC7B07 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.65 listed in wl.mailspike.net]
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
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 17 Mar 2020 22:06:42 +0800, Hanks Chen wrote:
> From: Andy Teng <andy.teng@mediatek.com>
> 
> Add devicetree bindings for MediaTek MT6779 pinctrl driver.
> 
> Change-Id: I92586369564948f2628f70421bcd70668f132c4f
> Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> ---
>  .../bindings/pinctrl/mediatek,mt6779-pinctrl.yaml  |  208 ++++++++++++++++++++
>  1 file changed, 208 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

warning: no schema found in file: Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml: ignoring, error parsing file
Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.yaml:  while parsing a block collection
  in "<unicode string>", line 28, column 5
did not find expected '-' indicator
  in "<unicode string>", line 29, column 5
Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.example.dts] Error 1
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1256429
Please check and re-submit.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
