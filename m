Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77583B016
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 09:58:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MU3P5gUGWaNZwbTnHVaUf0LLNhmK4ypyoKM0tXk0dg8=; b=ur/ixACAU9In12
	O8nbNgAV9iT7m91MuF2i9/ei4Eip9SJiZpDmm2LEVZipugsAgAhtw7twnJyg9iey29xzf3veZ3rXW
	GqaqBPIC6fn42FjVJSYKSc9OMPxeEA3BqCaQnlI1gmvfSpKlWXvBqcjHTz9ptGgcfM3O/PMWCzThR
	IL59B8rxqHABdccbUw5153AvQY3G5PRFcGLXvrtwg6G2AA4AOgOjsVHv3m8En87TP/jP1OoP/UxXo
	hlgTi0l/GX4JoAOjpAih/OMTF6ERuDSWDgp0nyllnj90m1u0zuiTOgSrHq3NvsxEcLAzxtzty1N23
	NytaAIuNf+/JAz5dkdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFCB-0005nS-5x; Mon, 10 Jun 2019 07:58:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFC6-0005mc-Pl
 for linux-mediatek@lists.infradead.org; Mon, 10 Jun 2019 07:58:20 +0000
Received: by mail-ed1-x543.google.com with SMTP id w33so13193413edb.10
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 00:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jlJ7kEpQ8wNqI+qin5NIgLFKGHCVC1ANXb/nCDBzTgQ=;
 b=kQL2AZP0gBm+87LmnpAKPXsOFeHuskGZAqtDENXQ/pKLYBwGsN6NaE81wgpDmot6Hj
 7fNmavFRolq1Db2Mq7AZ3WHlDhuOyRXBv8JepydsyiqQKVLjUCQlnmLmgvx6Du80Gl0A
 MCMu/Pgz4vY3DJg0rAisvrMPjvVdfTJGxc5OQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jlJ7kEpQ8wNqI+qin5NIgLFKGHCVC1ANXb/nCDBzTgQ=;
 b=GuLGcKrNy5xC2DwImHkodilCBjDRtDU06fil9JFzge2rGIsZop6k2KRnIWZLvuSIBM
 ESotxJxtRx+z7QxFBLGFlGhT4Mtjv75Vhc6+6/7mBUj2dKj3QwYQUoi/Ae1ONjXjIATH
 pJRYy716nTYZ8LnBM6vNS6tN6e6/sEKF5BRcPxie9hc16gzV3j1QAT5RbjXOI9eRFS5z
 9KACBkduYsUaNP7KOXUkmSSdbibtRVpKzyR/K34M5UjoWKUtdwKq7bka1jTn6rnNbgbL
 xO5itc649ZqLznZeBIvSy6qqczp+Z9O09uEhMWc+mCKCKfsB4JrsCoHBG/xVTyQxnYC5
 JfiA==
X-Gm-Message-State: APjAAAVLVc21yLVitDvyFMt09+pheMvKdkruXWkkEV1pF80UBVF1tCzq
 DzEQg8yTkNDJa2pPuE/73BWvhOjD0POBDg==
X-Google-Smtp-Source: APXvYqzvlBEmpcq1bQwlSAzB4K039RwEebgDZ47scydVNNVwHKD5xYZnQCK2GdfDk6WGb4Fb6oxjww==
X-Received: by 2002:a50:ec8e:: with SMTP id e14mr32977012edr.153.1560153496758; 
 Mon, 10 Jun 2019 00:58:16 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com.
 [209.85.128.50])
 by smtp.gmail.com with ESMTPSA id b10sm1699447eje.29.2019.06.10.00.58.14
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 00:58:15 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id v19so7146264wmj.5
 for <linux-mediatek@lists.infradead.org>; Mon, 10 Jun 2019 00:58:14 -0700 (PDT)
X-Received: by 2002:a7b:cd04:: with SMTP id f4mr13318912wmj.64.1560153493721; 
 Mon, 10 Jun 2019 00:58:13 -0700 (PDT)
MIME-Version: 1.0
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
 <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
 <1560134057.28527.5.camel@mtksdaap41>
 <CAHD77H=vuPi2Rj4Mw-CQ2=UYX7YnS8w8FpUk0QTVxNUVLWKbJg@mail.gmail.com>
 <1560153073.31854.6.camel@mtksdaap41>
In-Reply-To: <1560153073.31854.6.camel@mtksdaap41>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 10 Jun 2019 16:58:02 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DDE-L7mW8sTXVYOTLZ8yi3+X6Q3O73fJ61e1aUoeddgg@mail.gmail.com>
Message-ID: <CAAFQd5DDE-L7mW8sTXVYOTLZ8yi3+X6Q3O73fJ61e1aUoeddgg@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_005818_888226_1DB29B6A 
X-CRM114-Status: GOOD (  21.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 srv_heupstream <srv_heupstream@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stu Hsieh <stu.hsieh@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 4:51 PM CK Hu <ck.hu@mediatek.com> wrote:
>
> Hi, Tomasz:
>
> On Mon, 2019-06-10 at 12:32 +0900, Tomasz Figa wrote:
> > Hi CK, Stu,
> >
> > On Mon, Jun 10, 2019 at 11:34 AM CK Hu <ck.hu@mediatek.com> wrote:
> > >
> > > Hi, Stu:
> > >
> > > "mediatek,mt2712-mipicsi" and "mediatek,mt2712-mipicsi-common" have many
> > > common part with "mediatek,mt8183-seninf", and I've a discussion in [1],
> > > so I would like these two to be merged together.
> > >
> > > [1] https://patchwork.kernel.org/patch/10979131/
> > >
> >
> > Thanks CK for spotting this.
> >
> > I also noticed that the driver in fact handles two hardware blocks at
> > the same time - SenInf and CamSV. Unless the architecture is very
> > different from MT8183, I'd suggest splitting it.
> >
> > On a general note, the MT8183 SenInf driver has received several
> > rounds of review comments already, but I couldn't find any comments
> > posted for this one.
> >
> > Given the two aspects above and also based on my quick look at code
> > added by this series, I'd recommend adding MT2712 support on top of
> > the MT8183 series.
>
> In [1], "mediatek,mt8183-seninf" use one device to control multiple csi
> instance, so it duplicate many register definition. In [2], one
> "mediatek,mt2712-mipicsi" device control one csi instance, so there are
> multiple device and the register definition does not duplicate.

I guess we didn't catch that in the review yet. It should be fixed.

> You
> recommend adding MT2712 support on top of the MT8183 series, do you mean
> that "mediatek,mt2712-mipicsi" should use one device to control multiple
> csi instance and duplicate the register setting?

There are some aspects of MT8183 series that are done better than the
MT2712 series, but apparently there are also some better aspects in
MT2712. We should take the best aspects of both series. :)

Best regards,
Tomasz

>
> [1] https://patchwork.kernel.org/patch/10979121/
> [2] https://patchwork.kernel.org/patch/10974573/
>
> Regards,
> CK
>
> >
> > Best regards,
> > Tomasz
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
