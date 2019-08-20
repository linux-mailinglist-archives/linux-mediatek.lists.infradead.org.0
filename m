Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDF896837
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 20:00:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kq8kahH1Tx+n807toJX6lJ720KoBtq77D8RN6iuSS70=; b=hEiXeCfb0yd70+
	idzArPrsIWUtvmg1Y97GlLLku+W5LVYs7AD14WGEzzry2NeCRh87v0Sk+JD4JMgIIOR8zVUrvAB+/
	YZBRHYIMkvAEruc16Xto2O5L8Qz5nB6YVtzc8tz0uMWb7SF9DRr/aQU/XjrflQsymiHA2CjnlfgaJ
	xTLvLExhlky9wnKl0Fe9SCDvn5870GHEOcjk63n69IX/nr14xrbbYMn8o4/MX9bhL5Kkcj+1OoPv5
	iMqavT8c/hsEn4+kZR/B+qWxd67QaJVUrRsnliaBM+Gi/KJvXlaXAbyUkAC6B6Cfhsu2wFMFPvkAm
	uYFjUyKSiAuTjoK9Wifw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08Qm-0006Q6-Lo; Tue, 20 Aug 2019 18:00:28 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i08Qh-0006Om-SF
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 18:00:25 +0000
Received: by mail-oi1-f193.google.com with SMTP id v12so4781873oic.12
 for <linux-mediatek@lists.infradead.org>; Tue, 20 Aug 2019 11:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Q1gvNC9FakNN70iNTlLfpOxXe43hETiV8DaUowjuk4k=;
 b=Y0jSLZObOv3K/ttj2994a0ShvIySF/gWY1SiG4e9RjGVNdw6BLA770f43AbtHJkPU7
 dhTFaxQ9WgQJsjnwZqzcXDo+oZF/qEMzaPuE46pH+z97y53QTP5vJI1T5yCoY0PUvuLS
 Edizsew0v1LfQPQ2EoYdmpTm/gZ+Pz6u7LEsoG6aaJ97zmnyAb2Rk3Vv+F3UmqOUe3Gj
 BGf002GfxOm2AKpnDUrPsRgWdXQt1qj7ogYHg5CeJ20hgcdZg61xuw9gBSNvgAiPgbwh
 ion/9HhhF+CFiUju4kpbcrgPfzR0FdCvSml1kLMOtDtJ4gY98abf7AgHcViyAsh5XIiN
 topw==
X-Gm-Message-State: APjAAAVHFwtpz3woPukpXWsw/Ft9vw//p44I6+Dl3X72+YbU3GGzATeU
 rYi6CDtGQBhAo2H0atJjfQ==
X-Google-Smtp-Source: APXvYqwS6vfSL5GG6Hy6vUEP0afiI29iW09/eMOV/jj9QtbvAKZYhgHCM2xtDsPdntbHcHfBhRBbOg==
X-Received: by 2002:aca:3509:: with SMTP id c9mr900141oia.179.1566324016813;
 Tue, 20 Aug 2019 11:00:16 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id o26sm6431165otl.34.2019.08.20.11.00.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 11:00:16 -0700 (PDT)
Date: Tue, 20 Aug 2019 13:00:15 -0500
From: Rob Herring <robh@kernel.org>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v4 9/10] dt-bindings: pwm: update bindings for MT7629 SoC
Message-ID: <20190820180015.GA12975@bogus>
References: <1566265225-27452-1-git-send-email-sam.shih@mediatek.com>
 <1566265225-27452-10-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566265225-27452-10-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_110023_916997_849C9A9F 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 Sam Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 09:40:24 +0800, Sam Shih wrote:
> From: Ryder Lee <ryder.lee@mediatek.com>
> 
> This updates bindings for MT7629 pwm controller.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
