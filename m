Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE37498D0
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 08:19:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpJH7efTPSJq6xMo/bBcoGgNBoqgPzxlPh3srfxoWFY=; b=tmNSGXQvJid/GJ
	/KA8icA0+yM4xstsdmg1M5omjtbrADkkTDlYPo9wMwu65COW/nubfmuwxkdV4oxuBCQZByMsg+rPB
	OXR4i0mT9oFvZTgnLqD1GMdNLdbDob+rYYqlF0ntr8p7ki6zWZflHFq4TA6mRRsnbGj+iCKeqivK5
	pWSAS/FkfQU4jQwuJO8jc7VFD2uZNTRJpWqyT94iRcz/bhlHKA4RLIdyaFD/HXt75jfI/VpSUOdHK
	qzU7OL3EbJ8fmqVWUvItyxghBB+IWOM4wwsC841Ilk2GWWMF81E/ZIgx6D4+gsHvlYj6hvIkwn9nL
	g+ZSpqIIyar9LhWHeMDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd7Ss-0002Hw-BT; Tue, 18 Jun 2019 06:19:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd7Sm-0002Gt-UF
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 06:19:27 +0000
Received: by mail-wr1-x442.google.com with SMTP id f9so12451815wre.12
 for <linux-mediatek@lists.infradead.org>; Mon, 17 Jun 2019 23:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2qhMEjTGxN0dhDss7cc7zfKbD1VT4IQism6fVgX1NpE=;
 b=dvsdqA01/pZ+815FjjW8tFL5UWf7khLLQ82Ejhqn6TxNO1tCDktEgPtkMa4HNv7OLR
 1U39nh2EFsrtSmlNZcgDcq/9sa+nGn3SUOMpDbfIAp95GzajjL3XI+3GbjB5ULFzEoSH
 IwACWh8kuOmwu5jEKWjMzofeGDXqP9safEXyJXu8ve2REW9BQaUclrQL8parNOK0OQjD
 B3wkQTkyxFJk8UmfoMVdfQg+Tn/UTwLgckw83gJpr19cDBf/Gz90iGpXy7nsEYrqDA2m
 eZwEj4HpXDoxWiOrmV6yaBfhp8pBtJeFO0hOjxV5cmt7gkv5WG1rUgP3mWcFMvMsVNL0
 dfKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2qhMEjTGxN0dhDss7cc7zfKbD1VT4IQism6fVgX1NpE=;
 b=quZRkoT73BuqZGza2V/iizo69hZj0Pg/Fy0aNvuOxfXn3989UGMdyZ7Pwk7pfkuWr+
 jI+HjXhJSIMonw/ScnjBzTbEwcIxlel2672ERxY+Ue3trQ9bSc62pErdr42wj44H5GFJ
 CPW36B/KLiP3ZOQgZNJWTpb78Qjh1YfmXJSAhgbxy3goIaUXyKJHahaWgVyU6a9r6xfL
 RgK6wzb6bKwpdt4Oo1zq13jcIdom00X6dMn42926RArJUzs64Fy7P9wqpuNl1RDwyCj5
 pRi+q4PcXu3CGZ+RdO7SBk7x8Ucs08K5Jzz65bdzp5yIAqzv4Fp0shkRVKr/Y7LvHa7V
 WNPg==
X-Gm-Message-State: APjAAAWq6sToTUyl64QzOrumoCtDG77ffslSMZCgTHf0ZbSxzhKYZxt/
 FVlcKt138xCnSm/4iM0dLMlW/C1iBIElcJAiidG9bg==
X-Google-Smtp-Source: APXvYqyc9odfP5kl53sVaAJSFZ9kxou4Lg+4NAUEX3RWJa1eraarQrRn5NVyE6c41JtA+QlG76Va2MCtJMEgh2C9gYE=
X-Received: by 2002:a5d:4b43:: with SMTP id w3mr14892373wrs.166.1560838760111; 
 Mon, 17 Jun 2019 23:19:20 -0700 (PDT)
MIME-Version: 1.0
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
 <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
In-Reply-To: <1560169080-27134-15-git-send-email-yong.wu@mediatek.com>
From: Tomasz Figa <tfiga@google.com>
Date: Tue, 18 Jun 2019 15:19:07 +0900
Message-ID: <CAAFQd5A5GUn1Zq1xF2_2V0MReNPd5bra2F=nquvodSAZUua5AQ@mail.gmail.com>
Subject: Re: [PATCH v7 14/21] iommu/mediatek: Add mmu1 support
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_231925_006493_B91251D5 
X-CRM114-Status: GOOD (  17.08  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?WWluZ2pvZSBDaGVuICjpmbPoi7HmtLIp?= <yingjoe.chen@mediatek.com>,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 9:21 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Normally the M4U HW connect EMI with smi. the diagram is like below:
>               EMI
>                |
>               M4U
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
>
> Actually there are 2 mmu cells in the M4U HW, like this diagram:
>
>               EMI
>            ---------
>             |     |
>            mmu0  mmu1     <- M4U
>             |     |
>            ---------
>                |
>             smi-common
>                |
>        -----------------
>        |    |    |     |    ...
>     larb0 larb1  larb2 larb3
>
> This patch add support for mmu1. In order to get better performance,
> we could adjust some larbs go to mmu1 while the others still go to
> mmu0. This is controlled by a SMI COMMON register SMI_BUS_SEL(0x220).
>
> mt2712, mt8173 and mt8183 M4U HW all have 2 mmu cells. the default
> value of that register is 0 which means all the larbs go to mmu0
> defaultly.
>
> This is a preparing patch for adjusting SMI_BUS_SEL for mt8183.
>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  drivers/iommu/mtk_iommu.c | 46 +++++++++++++++++++++++++++++-----------------
>  1 file changed, 29 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 3a14301..ec4ce74 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -72,26 +72,32 @@
>  #define F_INT_CLR_BIT                          BIT(12)
>
>  #define REG_MMU_INT_MAIN_CONTROL               0x124
> -#define F_INT_TRANSLATION_FAULT                        BIT(0)
> -#define F_INT_MAIN_MULTI_HIT_FAULT             BIT(1)
> -#define F_INT_INVALID_PA_FAULT                 BIT(2)
> -#define F_INT_ENTRY_REPLACEMENT_FAULT          BIT(3)
> -#define F_INT_TLB_MISS_FAULT                   BIT(4)
> -#define F_INT_MISS_TRANSACTION_FIFO_FAULT      BIT(5)
> -#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   BIT(6)
> +                                               /* mmu0 | mmu1 */
> +#define F_INT_TRANSLATION_FAULT                        (BIT(0) | BIT(7))
> +#define F_INT_MAIN_MULTI_HIT_FAULT             (BIT(1) | BIT(8))
> +#define F_INT_INVALID_PA_FAULT                 (BIT(2) | BIT(9))
> +#define F_INT_ENTRY_REPLACEMENT_FAULT          (BIT(3) | BIT(10))
> +#define F_INT_TLB_MISS_FAULT                   (BIT(4) | BIT(11))
> +#define F_INT_MISS_TRANSACTION_FIFO_FAULT      (BIT(5) | BIT(12))
> +#define F_INT_PRETETCH_TRANSATION_FIFO_FAULT   (BIT(6) | BIT(13))

If there are two IOMMUs, shouldn't we have two driver instances handle
them, instead of making the driver combine them two internally?

And, what is even more important from security point of view actually,
have two separate page tables (aka IOMMU groups) for them?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
