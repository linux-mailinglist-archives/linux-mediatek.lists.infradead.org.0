Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8A71274E7
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Dec 2019 06:10:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VAX597qshRWfXs23/MI34iBJzDSVQr739SzmL8m4yUM=; b=rypVtXj3TASpKZ
	8Ke5GSxDzky7cnoxHlGwdxVYUX94wpOR+BvxlYNxla7AFDQEA0NThUnxfbtZE1D0AH+VYxOJnMgam
	qt4T1RWeFd1UK5EywVy95xSQ+jbm3axYqDlBqQbTfujQ2u2KsH8SZN9UYszvUBgfjhrTiFgAjdYcs
	jFFiA1171akbJPCd4VgL7ReI4UbrtlTRGIBP3JmamuDgDkjbQUJ5yjwAnbethjhQZC4OXVTNfTJzX
	/btycHmzZXqSJu1bz67Pnjj8aa3FhMU48hyh6po6jRwJDjWPVOHqNV6y+vW40A5/uhrviQ1imTffv
	YQhIT+dysNSuMAOURS3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiAYJ-0002Jf-Ij; Fri, 20 Dec 2019 05:10:15 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiAYF-0002It-QL
 for linux-mediatek@lists.infradead.org; Fri, 20 Dec 2019 05:10:13 +0000
Received: by mail-qk1-x741.google.com with SMTP id 21so6686051qky.4
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Dec 2019 21:10:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ntKHp8be8MgVI2s2eVNC29AikwQBJmgjfDyjOV2J6Js=;
 b=nxZX0SaYLy6siw1Z52AO6P4CNlGoN0ffJHzMUraIHho1PAnjU0gEVBEjkXNvFEM6pO
 hifzQSpk5jZgVhsXTX/VW0ByEzO/cp1gJ9sx2meyCukivk/DH+113v1ijYjGAmOKJZ/4
 nKaWnQzkhuW1MUQig+cFfWWz+eiVgpn0Gu+Uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ntKHp8be8MgVI2s2eVNC29AikwQBJmgjfDyjOV2J6Js=;
 b=i5S7lphHultt36TcMBJvspRcrVvZQ3EigXhGoINdIlL+PP1TDjPmT7xet86PLK5tAh
 jv810ZQ6PcKOXQolKEYMzrfT2jwWVM1e56TJv1kT9FHtZpUBRBh1GHpac5pdv7ckuf+B
 RU9wQ7V9Zd8JcX263YW6VZe8mfQXaih143QriduxjA9K5hnXKLKMEbIhn0+aUfHp+h+W
 xBcXcFFif9iX/VAJN8L5fqh3b3OuxABnas+peU1bjkdWitiJWtyX8x4PlRQLaByLVe7F
 CWW6fZLcOivvR9QfpaJtSfihmNjeGIswUdz5xYgfg1emxNjKDVwlHii31QOfr4rMNJrt
 78mA==
X-Gm-Message-State: APjAAAW/PxnsIwa9Y68afSwn3FUZTs5uEiLYj0tRMsZTckNz9DCCsmEG
 PVCApVp49o0VufzldORunUY9TkciMEGQj+/0ol38aQ==
X-Google-Smtp-Source: APXvYqxtXszs5D+1NIYItqKHVvomxV2wPLGpnwbnDvZpCUBW2GIgLh+zNpJJA+SZgpRhZ5uZoGVLqRge9+ZD1bw8olY=
X-Received: by 2002:a37:4bc6:: with SMTP id y189mr11718397qka.18.1576818610250; 
 Thu, 19 Dec 2019 21:10:10 -0800 (PST)
MIME-Version: 1.0
References: <1576813564-23927-1-git-send-email-weiyi.lu@mediatek.com>
 <1576813564-23927-6-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KBLuugcoWb1o=rUkBR7oY5Cf5rX=DCvpVP5D_6FJ8jipw@mail.gmail.com>
 <1576818001.8410.16.camel@mtksdaap41>
In-Reply-To: <1576818001.8410.16.camel@mtksdaap41>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 20 Dec 2019 13:09:59 +0800
Message-ID: <CANMq1KBUbUHZdZz6qWOyJvdWAi+YVOPgRY0gjsPLN9YCgYMh=A@mail.gmail.com>
Subject: Re: [PATCH v11 05/10] soc: mediatek: Remove infracfg misc driver
 support
To: Weiyi Lu <weiyi.lu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_211011_886423_0F2364D7 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Dec 20, 2019 at 1:00 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
>
> On Fri, 2019-12-20 at 12:11 +0800, Nicolas Boichat wrote:
> > On Fri, Dec 20, 2019 at 11:46 AM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> > >
> > > In previous patches, we introduce scpsys-ext driver that covers
> > > the functions which infracfg misc driver provided.
> > > And then replace bus_prot_mask with bp_table of all compatibles.
> > > Now, we're going to remove infracfg misc drvier which is no longer
> > > being used.
> > >
> > > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > > ---
> > >  drivers/soc/mediatek/Kconfig          | 10 -----
> > >  drivers/soc/mediatek/Makefile         |  3 +-
> > >  drivers/soc/mediatek/mtk-infracfg.c   | 79 -----------------------------------
> > >  include/linux/soc/mediatek/infracfg.h | 39 -----------------
> > >  4 files changed, 1 insertion(+), 130 deletions(-)
> > >  delete mode 100644 drivers/soc/mediatek/mtk-infracfg.c
> > >  delete mode 100644 include/linux/soc/mediatek/infracfg.h
> > > [snip]
> > > diff --git a/include/linux/soc/mediatek/infracfg.h b/include/linux/soc/mediatek/infracfg.h
> > > deleted file mode 100644
> > > index fd25f01..0000000
> > > --- a/include/linux/soc/mediatek/infracfg.h
> > > +++ /dev/null
> > > @@ -1,39 +0,0 @@
> > > -/* SPDX-License-Identifier: GPL-2.0 */
> > > -#ifndef __SOC_MEDIATEK_INFRACFG_H
> > > -#define __SOC_MEDIATEK_INFRACFG_H
> > > -
> > > -#define MT8173_TOP_AXI_PROT_EN_MCI_M2          BIT(0)
> > > -#define MT8173_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> > > -#define MT8173_TOP_AXI_PROT_EN_MM_M1           BIT(2)
> > > -#define MT8173_TOP_AXI_PROT_EN_MMAPB_S         BIT(6)
> > > -#define MT8173_TOP_AXI_PROT_EN_L2C_M2          BIT(9)
> > > -#define MT8173_TOP_AXI_PROT_EN_L2SS_SMI                BIT(11)
> > > -#define MT8173_TOP_AXI_PROT_EN_L2SS_ADD                BIT(12)
> > > -#define MT8173_TOP_AXI_PROT_EN_CCI_M2          BIT(13)
> > > -#define MT8173_TOP_AXI_PROT_EN_MFG_S           BIT(14)
> > > -#define MT8173_TOP_AXI_PROT_EN_PERI_M0         BIT(15)
> > > -#define MT8173_TOP_AXI_PROT_EN_PERI_M1         BIT(16)
> > > -#define MT8173_TOP_AXI_PROT_EN_DEBUGSYS                BIT(17)
> > > -#define MT8173_TOP_AXI_PROT_EN_CQ_DMA          BIT(18)
> > > -#define MT8173_TOP_AXI_PROT_EN_GCPU            BIT(19)
> > > -#define MT8173_TOP_AXI_PROT_EN_IOMMU           BIT(20)
> > > -#define MT8173_TOP_AXI_PROT_EN_MFG_M0          BIT(21)
> > > -#define MT8173_TOP_AXI_PROT_EN_MFG_M1          BIT(22)
> > > -#define MT8173_TOP_AXI_PROT_EN_MFG_SNOOP_OUT   BIT(23)
> > > -
> > > -#define MT2701_TOP_AXI_PROT_EN_MM_M0           BIT(1)
> > > -#define MT2701_TOP_AXI_PROT_EN_CONN_M          BIT(2)
> > > -#define MT2701_TOP_AXI_PROT_EN_CONN_S          BIT(8)
> > > -
> > > -#define MT7622_TOP_AXI_PROT_EN_ETHSYS          (BIT(3) | BIT(17))
> > > -#define MT7622_TOP_AXI_PROT_EN_HIF0            (BIT(24) | BIT(25))
> > > -#define MT7622_TOP_AXI_PROT_EN_HIF1            (BIT(26) | BIT(27) | \
> > > -                                                BIT(28))
> > > -#define MT7622_TOP_AXI_PROT_EN_WB              (BIT(2) | BIT(6) | \
> > > -                                                BIT(7) | BIT(8))
> >
> > Err wait, don't you need these values in patch 04/10?
> >
>
> Actually I already duplicated those being used into scpsys-ext.h and
> then replace the header file in patch 04/10

Oh, missed that, SGTM then.

Reviewed-by: Nicolas Boichat <drinkcat@chromium.org>

> --- a/drivers/soc/mediatek/mtk-scpsys.c
> +++ b/drivers/soc/mediatek/mtk-scpsys.c
> @@ -11,7 +11,7 @@
> -#include <linux/soc/mediatek/infracfg.h>
> +#include "scpsys-ext.h"
>
> so I remove the infracfg.h directly in this patch and add those new for
> MT8183 in scpsys-ext.h
>
> > > -
> > > -int mtk_infracfg_set_bus_protection(struct regmap *infracfg, u32 mask,
> > > -               bool reg_update);
> > > -int mtk_infracfg_clear_bus_protection(struct regmap *infracfg, u32 mask,
> > > -               bool reg_update);
> > > -#endif /* __SOC_MEDIATEK_INFRACFG_H */
> > > --
> > > 1.8.1.1.dirty
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
