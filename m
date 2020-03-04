Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02EE1795D3
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 17:57:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kX43esUAyrzPXf0SdyAXuR2hzsShMJmDkunDqd7B5tw=; b=sabIfMVv+lNjmc
	TvSk9+1I80vI227iKsaxFnAzYH3O3qXlrbgpA0/bbgrt8TvPckZH85GlB4/0wYPMbCSxDsXf3FpN/
	8oAsOo5DD+exeupGvTZ01vYYlWU4L5wgXuZRfEOokrzUSu4MMkKCzSCsVZjjyujMPofpLZKeFB6Xz
	oInSbgcSAfah8ppFHpZPXMnO3XFdr7HUmbLj7ca1u0e5trY0F34FicW892WUueTv4ph2Bh7Rmw8H+
	pDqr4eW9F+QS3W3n6pdBrbLo4Nk4J4wzuU9XD/FlpArPtrf80nVgxQDjnb0PsvL8Bcr2KZHa74ME5
	R+HseJwZk5OxlCe2ybIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9XKe-0003VJ-M4; Wed, 04 Mar 2020 16:57:16 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9XKV-0003NG-Ow; Wed, 04 Mar 2020 16:57:08 +0000
Received: by mail-oi1-f179.google.com with SMTP id j80so2778156oih.7;
 Wed, 04 Mar 2020 08:57:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=v56tNbaf27S3vsJCZpK0lDpbd6dC6biMMvnBq59fAOw=;
 b=isaFSrJfmrmBZrUmN+eDF3MWfQ69pHKqRhD98cSHVOW1/D7XyRS/gOJYv0Pj98eQpo
 lyf8ewk9s82bFXbdTbBxG1ZUMSPG78Gszv7MzONrE0cdplfvTN43xFCyP3kH1CM4jOqo
 iK+PU8UnXkGm1cyGDYju2jqHr82hHdzUrsVPtuz9YqlhblWbMp/4Q8EQJnarj4U4P+6n
 ouw8APc+KgQG37yc43B3XyNWlQo+dLpaIqq4p5XbqGIO/5q85E4/CIal8qHeS6TyRVlV
 l8BmkOWP+nxVBDI7eKtLmsogAYwSdX8ipN5e7KuaAEZx0v0eF+fnB6qj9Wr/aTe2LVzm
 O9/g==
X-Gm-Message-State: ANhLgQ1UhZIObuMqWG1qgp1JITqRgZE6CngHDuE3DidcLaL2H71NVivR
 FYDPZYKO7QHiT0YV9TuyJQ==
X-Google-Smtp-Source: ADFU+vuq6LTSjctHGWYdpBagVO2mWD6V/pN+nXSJfZEGYnGz547pSblqr5DAPWLVCdCXURaCM/KV6w==
X-Received: by 2002:a05:6808:298:: with SMTP id
 z24mr2285480oic.101.1583341026709; 
 Wed, 04 Mar 2020 08:57:06 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i185sm5371438oib.51.2020.03.04.08.57.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 08:57:05 -0800 (PST)
Received: (nullmailer pid 19811 invoked by uid 1000);
 Wed, 04 Mar 2020 16:57:04 -0000
Date: Wed, 4 Mar 2020 10:57:04 -0600
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [v3,1/2] dt-bindings: pwm: Update bindings for MT7629 SoC
Message-ID: <20200304165704.GA19695@bogus>
References: <1583319973-20694-1-git-send-email-sam.shih@mediatek.com>
 <1583319973-20694-2-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583319973-20694-2-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_085707_809364_94C461D9 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -1.5 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
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
 Sam Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 4 Mar 2020 19:06:12 +0800, Sam Shih wrote:
> This updates bindings for MT7629 pwm controller.
> 
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
