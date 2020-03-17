Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346CF188432
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 13:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvhHaWgxva65b9BHXqpK4WwiRuGQcj7JQaFJh38KEJI=; b=LtiZxBXIrwR9eo
	FI3QBKbUjam70b1UskCBkH0VVnI3z3egNKIOiWQGGoGX+jBDFfhOWSGSI/Y+9YiTZeQZRhqafqdKO
	/emKU/6IumVaDeeAiHmLyl9gLaO97cqOXqdzExOsY/qOgkDLOaSuG9XbfZ/xp1OP3T+4401WzYKYJ
	N3g29+/sPAE57eUayz7oQOSEWtm+9emnCD87DxpHPm6B2nJxgJzUMHR/Dkc1b/+Sxuy7U9u4HCqWG
	vNcb/fzhkjCD0mnFbpugC2syjJFa3pN++bk8PK5bajAIpN6ueMrPuCiaa7RLOLX/BxRjh/m7Kuaz8
	0swWP1tS9cmGAbsq20Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBMr-0007CW-NM; Tue, 17 Mar 2020 12:30:45 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBMU-0006tY-Ru; Tue, 17 Mar 2020 12:30:24 +0000
Received: by mail-oi1-f195.google.com with SMTP id k18so21511000oib.3;
 Tue, 17 Mar 2020 05:30:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7bWIGrmJckT1m6t9quae5+JZV9bgbsoWOVuE/IRPIaU=;
 b=lWd/LjDs4/tPdL73+xqyBFKAsW7rf7sbEjSSd0IBeognoh3axNq14rN0Bs1Gc+pphQ
 n67wFPVNx3TqzXLx9u7vsAAx+l/vO9U0TTG04qiVRTyO3IsK3Rjkm1obS7YsyP8duI37
 bOscn9qxwFLiFm5FiLQYFBTb4QCPZPkDYL+cPiPwgR3jiKAarnS7egTUw4po6DeqQL5b
 jp9i/1nWkbFWA+ASYYP/Y2v3TmpAnlt2aaIzTSbH3Elygx7IiQKGueHD6QDB6hdqgyk1
 eikhL2BAcKLxAsSy1oDYz/yNf6Pfq3aztMFqsIIFf4tVY6fMGpVvIkZLbwb9fMZ37LqC
 TkoA==
X-Gm-Message-State: ANhLgQ2rCTcgz3q7Loqjx6xeygOAswf1UEzuiBQgJ3rSrJ8iRMiP6syZ
 W2B7hvzcosvfmOsGaxZ5R9UhD2DoEpJ6a85bNnA=
X-Google-Smtp-Source: ADFU+vuNAHmuooiafUqKBUMfEczzYmFc/BAx7C+JWZfkPiA2MFSi8dPCdNgJmpF13jUW4ASUOw2odywHhSz6CZpai2U=
X-Received: by 2002:aca:cdd1:: with SMTP id d200mr3061324oig.153.1584448221150; 
 Tue, 17 Mar 2020 05:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
In-Reply-To: <20200316104701.209293-1-alexandre.belloni@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 17 Mar 2020 13:30:10 +0100
Message-ID: <CAMuHMdVy6J1G5P6BQ14D65=pRu-q=+kcN3RV8mjtaZcwBooZyw@mail.gmail.com>
Subject: Re: [PATCH 1/2] rtc: mt2712: fix build without PM_SLEEP
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_053022_940918_1EA97D72 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Eddie Huang <eddie.huang@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Alexandre,

On Mon, Mar 16, 2020 at 11:48 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> Move SIMPLE_DEV_PM_OPS out of #ifdef to fix build issues when PM_SLEEP is
> not selected.
>
> Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> ---
>  drivers/rtc/rtc-mt2712.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/rtc/rtc-mt2712.c b/drivers/rtc/rtc-mt2712.c
> index 432df9b0a3ac..c2709c1602f0 100644
> --- a/drivers/rtc/rtc-mt2712.c
> +++ b/drivers/rtc/rtc-mt2712.c
> @@ -394,10 +394,10 @@ static int mt2712_rtc_resume(struct device *dev)
>
>         return 0;
>  }
> +#endif
>
>  static SIMPLE_DEV_PM_OPS(mt2712_pm_ops, mt2712_rtc_suspend,
>                          mt2712_rtc_resume);

That's 23 more unused pointers in your kernel image.

> -#endif
>
>  static const struct of_device_id mt2712_rtc_of_match[] = {
>         { .compatible = "mediatek,mt2712-rtc", },

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
