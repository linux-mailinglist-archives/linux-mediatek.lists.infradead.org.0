Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9471D18326F
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 15:08:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vd5fBUsiyaqqFVmqDOVNH0vF3tOlSqdjU6bx3T5Hhik=; b=scdSsh7eH+qQem
	/bexEZgGPlX/MWGA6eC/5/mhH4sl3ul+E7gCeyDH9jo2wxUS0JAT5Cg6SVVX2tVxIzc/AAAlYWli7
	D16+RvEer6G2vmJbIg18+I+a/Iwb1DAM28soNV4joZh4BmGZZt00y1gpcIBelMQh4HowYXRAgr0rH
	OmuvXucy6fRWdMnwITNp0/p3OmAqk1jPPzhTsprlGAkEh+GxfAiOvAHoX+nUou1fy1jaqTjmbWH9e
	SR1seSPzNzqFLDyk7noZcKO3RnTuPIgxO0AauoxgZUUN/NSPF6jvGUO6UgtY5mspXtU4ED609fEYD
	cU99GgdLi03YI2uxG16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOVb-0005xo-K9; Thu, 12 Mar 2020 14:08:23 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOVO-0005pP-WF
 for linux-mediatek@lists.infradead.org; Thu, 12 Mar 2020 14:08:12 +0000
Received: by mail-vk1-xa43.google.com with SMTP id w67so1600920vkf.1
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Mar 2020 07:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6J9Ig2oz1bb7guvVXYyRNpRVz0RKMu9DYxVEd/SzgXI=;
 b=H7DN/hrXC5SOfs2915ZbQulRR7iAHtt3uIi89leVhH11cRIYwJ9rIM5rrJTWqrQc9c
 k6W4+S7mPhWQ2G271UpAF2UqqOBhfUyXVTTOQeRHxJK7VosV9dmfY0UvneGlfP+dqukd
 ba3Z/Ki7tJ2JemSrkSaxjoOoJtCIg6pMKZ3j9UHyB38C1Ah7aqbxMCC2r+nHacnypqbc
 r3A4lgiLdqxs92Kk3ltPbguQYkRSI1unHNO6GWPHWvlAERBw4nfA4AMns8o44eOr+zKm
 BUJ0/BKeCLxznbuOfoSnK76G/tzMHiPgKc78DV+nGGwt69TptpgDvh0rOWdTy6i018Jm
 ag0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6J9Ig2oz1bb7guvVXYyRNpRVz0RKMu9DYxVEd/SzgXI=;
 b=MjfJvzXPWH8eTpHX1rdqQHFjVcfMDjFzBqWrKBrN4juSJLITahHPrzjPvuSdNIyKpv
 Le4LfjAvYUIJeEkD76TLyg987Yj+BFrlD2i4vS99VSqibqYTPziCLOvUwy5zzluSMOrz
 U5sLGZY05ood173zzR9FJ2O+D7p65LS++zeqXR/9Z/qmiNZ0nm0opS16Ri1tt/rXJLp8
 ptxpm701eI8KN19fG3MYKg3jCbkf2mLm/nRyeqiOUQeJWhg5xK7IktVGuoOrgAYpkZYS
 DStaZAiyEMlB5Lpltn6nOhTB5dpksETzFSaLf/sEoE/Dcecrlw2OBGMboLzk4ytYFNXn
 c5Bg==
X-Gm-Message-State: ANhLgQ27IUAJgNuTXV2clV9JT94qFS2BdREWsvj+6IarO9rxKHisguSX
 m6SnRXT9eyt3BR0vSGqNfGIGML2Co1RiHVeduD/ttg==
X-Google-Smtp-Source: ADFU+vsGDaiiav8lo5THUgIDY0HPzi+5T5mlfmPdJyURWCmQInX4drk2MUTv+qfoecTOl54d4a4OmoBfL83ZlRl3Who=
X-Received: by 2002:a1f:5c84:: with SMTP id q126mr5449459vkb.5.1584022089616; 
 Thu, 12 Mar 2020 07:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1583952275.git.amanharitsh123@gmail.com>
 <d12a15f496ca472e100798ac2cd256fbfc1de15d.1583952276.git.amanharitsh123@gmail.com>
In-Reply-To: <d12a15f496ca472e100798ac2cd256fbfc1de15d.1583952276.git.amanharitsh123@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Mar 2020 15:07:58 +0100
Message-ID: <CACRpkdYv0U0RmT7snp+UejEXecq4wLkhc11DUniUfGYAgyXC=A@mail.gmail.com>
Subject: Re: [PATCH 1/5] pci: handled return value of platform_get_irq
 correctly
To: Aman Sharma <amanharitsh123@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070811_039131_973F11D1 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Marc Gonzalez <marc.w.gonzalez@free.fr>, linux-pci <linux-pci@vger.kernel.org>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Mans Rullgard <mans@mansr.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Andrew Murray <amurray@thegoodpenguin.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 8:19 PM Aman Sharma <amanharitsh123@gmail.com> wrote:

> Signed-off-by: Aman Sharma <amanharitsh123@gmail.com>
> ---
>  drivers/pci/controller/pci-v3-semi.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/pci-v3-semi.c b/drivers/pci/controller/pci-v3-semi.c
> index bd05221f5a22..a5bf945d2eda 100644
> --- a/drivers/pci/controller/pci-v3-semi.c
> +++ b/drivers/pci/controller/pci-v3-semi.c
> @@ -777,9 +777,9 @@ static int v3_pci_probe(struct platform_device *pdev)
>
>         /* Get and request error IRQ resource */
>         irq = platform_get_irq(pdev, 0);
> -       if (irq <= 0) {
> +       if (irq < 0) {

Have you considered:
https://lwn.net/Articles/470820/

TL;DR Linus (both of them) are not with you on this.

And that is why the code is written like this.

Do you really have a platform that could return 0 as IRQ
here? In that case, can we fix it?

>                 dev_err(dev, "unable to obtain PCIv3 error IRQ\n");
> -               return -ENODEV;
> +               return irq;

That's OK with me.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
