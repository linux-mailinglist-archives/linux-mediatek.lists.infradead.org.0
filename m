Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8C645925
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Jun 2019 11:47:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfUpctcwHRj72J74OHDi44pUJux3bis1xXyqVDpYXB4=; b=rK/+96WSqL/NsM
	SXtPMYiEVRfkM4zO4CBeLfqaBvSqABhM/5X4YrIxci/abjMXznN1OMbzalYSjf1bNauwjF9Mj1QGv
	bPcdhSnkBAtUuLMnaItJCnKj3WhStOWLAF+RRK4ucs8fXGgU93Mhh94k42AlSadVxrM9Wa73SWY56
	GI/vx/X5t/VcCz23wRecDna6QiS4qGuJ5e+Q5QYACGXeqTpxcdSWBd6eCQ7f1zQkAsTHr02HFS6WU
	cn59BPMSlGqJXy6xb08nBWlIBv5XsxFJvJRAEGyzthBQZrPMeqTmsjOUZN+zT4oBzT1WWvyexiKD+
	H2/32HL/k/KF8eHq1Kvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbio3-00065c-GS; Fri, 14 Jun 2019 09:47:35 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbinz-00063N-1Z
 for linux-mediatek@lists.infradead.org; Fri, 14 Jun 2019 09:47:32 +0000
Received: by mail-ua1-x943.google.com with SMTP id r7so735278ual.2
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Jun 2019 02:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cTK6glBPsz+2c5s1UM+u1mPbwUZRam6/XPlur2ZEtiY=;
 b=HPMHUIQdfdoOM0SDvI3sEr6kDCZmo3ittCV4pWVgYCuhj/g133nGW30tKHco9ZZ5rU
 gUHMwgjIVbEmt0wnvkJeQW2boDKtayXRBXS7Pq71cohgA+FkmRAkswIpbcjGHuh6W8mk
 hxsRCiHsqLhR7e0MKcnIuTB9H8OaGbMW+rRRt32mNRnXt+iul9wWIQyohIRf4nuOsduE
 BXiAv5Y7RnoKW3HdNFZ4Mxr9wcOUuOJaYBVr7cZMPBLK67bS+my4/grmh2rY9me/aeLn
 jlsCHo9rYElEr9pQVMIKq+8cPMmszf4ToaQVGKVIWHRjFJitOCxtIliXkKnSC+vwD0+o
 Gd9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cTK6glBPsz+2c5s1UM+u1mPbwUZRam6/XPlur2ZEtiY=;
 b=KU6PTDKr6iqNKsRj6TVcOBC+WtFSNy01MI/QTPbsMNlblFByCH2mxwCyj8O3mzLdDN
 7rUYUOhP/WwEjijWT4LIpS8RO5anB0xfrJ0J+0zFhQafuL9ZEvlnlPZ7BfX0zPccbw7P
 5cvEGTMkDwss6YQCZCsBYp+CWAKHJDM7HLi94LZE0e5krrFdy7vOTPkAAllxziny/7eI
 Zp4S9BbbV6TAFLl5uNzxwwud5EzaNZvc89m+Rs6lGuLIX+yZRzJdA3AtF/17fJYvP0sJ
 4LKOvcgafiUpLSry1/8cszyuaLJ/PJEQ2nh/XSas4h5OjGasc+Ho0Iv/oTe1dCqhSu2s
 /Piw==
X-Gm-Message-State: APjAAAVbyxWYnEjgj8smxhdeRsn2DbNfW0vmBVAt03AMngI06kv74d2a
 kFoGM0dWYd//A17DO34tKpeeJXRSh97bYHBAjbDXUw==
X-Google-Smtp-Source: APXvYqwEVgKDbhvEOENA1sMGmEeMCk5a+6br+06u+T6+nPm6VgkH/bVzBGVaU7nnHL0NMG98KmSPpYmqqpRQ7ET6Mec=
X-Received: by 2002:ab0:2705:: with SMTP id s5mr9263458uao.104.1560505649842; 
 Fri, 14 Jun 2019 02:47:29 -0700 (PDT)
MIME-Version: 1.0
References: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
In-Reply-To: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 14 Jun 2019 11:46:52 +0200
Message-ID: <CAPDyKFrXU4bpKeB7Aa15j2nHqUCn-bk+YKn9_vkznmi+PS8H7A@mail.gmail.com>
Subject: Re: [PATCH 1/2] mmc: mediatek: fix SDIO IRQ interrupt handle flow
To: Jjian Zhou <jjian.zhou@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_024731_099119_3F279707 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yong Mao <yong.mao@mediatek.com>, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 at 07:26, Jjian Zhou <jjian.zhou@mediatek.com> wrote:
>
> From: jjian zhou <jjian.zhou@mediatek.com>
>
> SDIO IRQ is triggered by low level. It need disable SDIO IRQ
> detected function. Otherwise the interrupt register can't be cleared.
> It will process the interrupt more.
>
> Signed-off-by: Jjian Zhou <jjian.zhou@mediatek.com>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
> Signed-off-by: Yong Mao <yong.mao@mediatek.com>
> ---
>  drivers/mmc/host/mtk-sd.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
> index c518cc2..29992ae 100644
> --- a/drivers/mmc/host/mtk-sd.c
> +++ b/drivers/mmc/host/mtk-sd.c
> @@ -1389,10 +1389,12 @@ static void __msdc_enable_sdio_irq(struct mmc_host *mmc, int enb)
>         struct msdc_host *host = mmc_priv(mmc);
>
>         spin_lock_irqsave(&host->lock, flags);
> -       if (enb)
> +       if (enb) {
>                 sdr_set_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);
> -       else
> +               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       } else {
>                 sdr_clr_bits(host->base + MSDC_INTEN, MSDC_INTEN_SDIOIRQ);

Rather than clearing SDC_CFG_SDIOIDE in the irq handler, you need to
do it here. As otherwise when the mmc core calls
host->ops->enable_sdio_irq() to disable the SDIO IRQ, it may stay
enabled.

> +       }
>         spin_unlock_irqrestore(&host->lock, flags);
>  }
>
> @@ -1422,6 +1424,8 @@ static irqreturn_t msdc_irq(int irq, void *dev_id)
>                 spin_lock_irqsave(&host->lock, flags);
>                 events = readl(host->base + MSDC_INT);
>                 event_mask = readl(host->base + MSDC_INTEN);
> +               if ((events & event_mask) & MSDC_INT_SDIOIRQ)
> +                       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);

As stated above, I suggest you move this into __msdc_enable_sdio_irq()
and thus call that function from here instead. Well, that doesn't work
as is, because of the spin lock, so you rather need to make a
sub-function of __msdc_enable_sdio_irq, that don't take/releases the
lock.

I hope that was clear. If not, I can post a patch to show you what I mean.


>                 /* clear interrupts */
>                 writel(events & event_mask, host->base + MSDC_INT);
>
> @@ -1572,10 +1576,7 @@ static void msdc_init_hw(struct msdc_host *host)
>         sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIO);
>
>         /* Config SDIO device detect interrupt function */
> -       if (host->mmc->caps & MMC_CAP_SDIO_IRQ)
> -               sdr_set_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> -       else
> -               sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
> +       sdr_clr_bits(host->base + SDC_CFG, SDC_CFG_SDIOIDE);
>
>         /* Configure to default data timeout */
>         sdr_set_field(host->base + SDC_CFG, SDC_CFG_DTOC, 3);
> --
> 1.9.1
>

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
