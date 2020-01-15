Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F14C13C69B
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Jan 2020 15:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iPiVEm71v2GB24YviDE1qihYmeL8NUVBVMccB39CEU=; b=bFUocJ9k7VFjDh
	lKvYxdFj2JX40Y9TEsRliDzgW8CjRdYrpNzes7nlz+fvV/nhpHbD+rUbj8Dkkhr/Hm8ULYgEFF4kF
	pRsXEjJ5Y3ADs1qwxPA6fbtygJ9Euy7VN3B8fOx/itlfGKRtKqGeS+LcjWHKT4Lf3u0ODdAPM+mb2
	SzNgCcDiPOOPsfNj5Ak/1KEik4ytAIyNmljxag70maAyatzvRJglukQsRRVGEizplkF6srgkhqs51
	kuQtlgZkCmJ19r240X1XrKVa+NTYvz6EyfTxEX/+ELRVOh7V70VCeyy1B2IuvN2IZr0YoYAFXAAfW
	+eFsBCwJz40h2KNGMJKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irk1j-0002Jw-Kg; Wed, 15 Jan 2020 14:52:11 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irk1d-0002IO-Iq
 for linux-mediatek@lists.infradead.org; Wed, 15 Jan 2020 14:52:10 +0000
Received: by mail-oi1-f193.google.com with SMTP id c16so15616142oic.3
 for <linux-mediatek@lists.infradead.org>; Wed, 15 Jan 2020 06:52:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n8ZOYkpIoAOQdlGT8sz2BDJ8ZlJ/E1aAe+yKBj0gCtM=;
 b=RGJ0/aKT9kRlfv0MKAZ00rX7PEfDE8zJpmtlkDO38G9Y/xB3ddTsfGNDp598TalbWj
 oa3CGgE55gdyq3/17n+45kf80rBEcrGgrR5lT/twvqx7f2do02xsThvpkPEUhSg+e47w
 9+/EvDuoysYlIyU8bj5ukRdE9SHW6+9MIjdgXUSuFPRDNgejWTVV5e2zxyMMNXUTFCPt
 7sJD0c0CBzNvBB/hDR8Ps2uLcYnjCOSbXigFTX1i36DTo7trEn2y1tdlYz6HKAtlnXGA
 TM/UZoDdSTqXFCChjfOre32SFfGXj5CPk9Ll0yNaXEmpuzqmp2TxoPJ1zYHRr4NcjKu/
 o91g==
X-Gm-Message-State: APjAAAW8mlOGDDeqCb7fctaAUVylZrctrKdX/6aX+5DWnCdJJ26EUSRV
 YWtHNFAnc9ViLMG04ojJAHFpJuY=
X-Google-Smtp-Source: APXvYqyxVr4+PNclUZbamSFaKiRKZWa8B5+92qtki16qWMbPYBOY9YinQjG3xsi/Ud1tow6ToMTqpg==
X-Received: by 2002:a05:6808:486:: with SMTP id z6mr57191oid.117.1579099924241; 
 Wed, 15 Jan 2020 06:52:04 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m89sm6663486otc.41.2020.01.15.06.52.03
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 06:52:03 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220379
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 08:52:02 -0600
Date: Wed, 15 Jan 2020 08:52:02 -0600
From: Rob Herring <robh@kernel.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm
 and hana
Message-ID: <20200115145202.GA27021@bogus>
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-2-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110073730.213789-2-hsinyi@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_065205_624446_4B9EC5A2 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Nicolas Boichat <drinkcat@chromium.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 10 Jan 2020 15:37:29 +0800, Hsin-Yi Wang wrote:
> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
> SoC.
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Changes in v2:
> - fix dtbs_check errors, use const instead of enum
> ---
>  .../devicetree/bindings/arm/mediatek.yaml     | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
