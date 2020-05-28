Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB8D1E60F6
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 14:34:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvrvIvkFDM4kvQg3OyG/jEdCAxyFttYY+Sdldq7Z2Vo=; b=PfbYD90sCdVfWs
	siMSW66iAL3oTAZfArbuNPn9YVBu5HZTV6I+4iPOQBJjAYoUFxB3Czbr8eDwJGZzOdGO0CrDmAEGw
	fHmNM4vR5mwb6RcPLFles8VRmswwyMfxXrXSsNQBEfGXxZDKLy+ZfNoZ3jtd9WyjXA4rA95QeA59T
	HOOerrClzDFrrSj1krs4LzBGWU4hPxrDzIhL0U6Y0LJamnNKF+WCCdBoOZh9Y5CEOg/e1e52qQ8f+
	/45z+mIDEKzwowoe0GVGqPE3Xa56X+Tyb+Ev8Qx74ttbFy8UiFBLaYLxHgpp455jfCxXsmIVNSDSI
	DcIQy2+cfZLKmSRsG/Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHkF-0005AK-ES; Thu, 28 May 2020 12:34:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHkB-00059t-Ns
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 12:34:45 +0000
X-UUID: 648472c1cba849edacd7ae6e183d5221-20200528
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fKh8D1t1OVVDs+JciXz04pHTnlmXfwWrSIaEhxD3uRw=; 
 b=oNajzKiEN6yCxtUUXWtoje9sKMPO5sD0uk36VuaEqR/pSQUj8ecfLorT5EDowp4y2EDevkhLiHxCV8w25GhdEzSwARh6Hgm3j7LScHy6MiJldvIR8jG8ZJ1Qgvk+vItKZ5dp3hLqgki7Q7A5MCho0t7dRnISbv8WIIeDvGTyols=;
X-UUID: 648472c1cba849edacd7ae6e183d5221-20200528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1801006444; Thu, 28 May 2020 04:34:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 05:34:36 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 28 May 2020 20:34:34 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 28 May 2020 20:34:33 +0800
Message-ID: <1590669276.4266.8.camel@mtkswgap22>
Subject: Re: [PATCH v5 4/6] pinctrl: mediatek: add pinctrl support for
 MT6779 SoC
From: Hanks Chen <hanks.chen@mediatek.com>
To: Sean Wang <sean.wang@kernel.org>
Date: Thu, 28 May 2020 20:34:36 +0800
In-Reply-To: <CAGp9Lzrci=qhU6QXPfGg=-dGtKNq1Xn-rhYWvPp-8Wj6v6oJwA@mail.gmail.com>
References: <1585128694-13881-1-git-send-email-hanks.chen@mediatek.com>
 <1585128694-13881-5-git-send-email-hanks.chen@mediatek.com>
 <CAGp9Lzrci=qhU6QXPfGg=-dGtKNq1Xn-rhYWvPp-8Wj6v6oJwA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053443_786284_026A6C12 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 wsd_upstream@mediatek.com, Andy Teng <andy.teng@mediatek.com>, Linus
 Walleij <linus.walleij@linaro.org>, lkml <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mars Cheng <mars.cheng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2020-04-02 at 14:46 -0700, Sean Wang wrote:
> Hi Hanks,
> 
> On Wed, Mar 25, 2020 at 2:31 AM Hanks Chen <hanks.chen@mediatek.com> wrote:
> >
> > This adds MT6779 pinctrl driver based on MediaTek pinctrl-paris core.
> >
> 
> We can add some useful help text about MT6779 pinctrl, especially
> about specific parts like virtual gpio and its attributes
> Then Acked-by: Sean Wang <sean.wang@kernel.org>
> 
Got it, I'll add it in next version.
Thanks for the advices.

> > Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Andy Teng <andy.teng@mediatek.com>
> > ---
> >  drivers/pinctrl/mediatek/Kconfig              |    7 +
> >  drivers/pinctrl/mediatek/Makefile             |    1 +
> >  drivers/pinctrl/mediatek/pinctrl-mt6779.c     |  775 +++++++++
> >  drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h | 2085 +++++++++++++++++++++++++
> >  4 files changed, 2868 insertions(+)
> >  create mode 100644 drivers/pinctrl/mediatek/pinctrl-mt6779.c
> >  create mode 100644 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
> >
> > diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> > index 701f9af..f628d01 100644
> > --- a/drivers/pinctrl/mediatek/Kconfig
> > +++ b/drivers/pinctrl/mediatek/Kconfig
> > @@ -86,6 +86,13 @@ config PINCTRL_MT6765
> >         default ARM64 && ARCH_MEDIATEK
> >         select PINCTRL_MTK_PARIS
> >
> > +config PINCTRL_MT6779
> > +       bool "Mediatek MT6779 pin control"
> > +       depends on OF
> > +       depends on ARM64 || COMPILE_TEST
> > +       default ARM64 && ARCH_MEDIATEK
> > +       select PINCTRL_MTK_PARIS
> > +
> >  config PINCTRL_MT6797
> >         bool "Mediatek MT6797 pin control"
> >         depends on OF
> > diff --git a/drivers/pinctrl/mediatek/Makefile b/drivers/pinctrl/mediatek/Makefile
> > index a74325a..59c1c60 100644
> > --- a/drivers/pinctrl/mediatek/Makefile
> > +++ b/drivers/pinctrl/mediatek/Makefile
> > @@ -11,6 +11,7 @@ obj-$(CONFIG_PINCTRL_MT2712)  += pinctrl-mt2712.o
> >  obj-$(CONFIG_PINCTRL_MT8135)   += pinctrl-mt8135.o
> >  obj-$(CONFIG_PINCTRL_MT8127)   += pinctrl-mt8127.o
> >  obj-$(CONFIG_PINCTRL_MT6765)   += pinctrl-mt6765.o
> > +obj-$(CONFIG_PINCTRL_MT6779)   += pinctrl-mt6779.o
> >  obj-$(CONFIG_PINCTRL_MT6797)   += pinctrl-mt6797.o
> >  obj-$(CONFIG_PINCTRL_MT7622)   += pinctrl-mt7622.o
> >  obj-$(CONFIG_PINCTRL_MT7623)   += pinctrl-mt7623.o
> > diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6779.c b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
> > new file mode 100644
> > index 0000000..145bf22
> > --- /dev/null
> > +++ b/drivers/pinctrl/mediatek/pinctrl-mt6779.c
> > @@ -0,0 +1,775 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2019 MediaTek Inc.
> > + * Author: Andy Teng <andy.teng@mediatek.com>
> > + *
> > + */
> > +
> > +#include "pinctrl-mtk-mt6779.h"
> > +#include "pinctrl-paris.h"
> > +
> > +/* MT6779 have multiple bases to program pin configuration listed as the below:
> > + * gpio:0x10005000,     iocfg_rm:0x11C20000, iocfg_br:0x11D10000,
> > + * iocfg_lm:0x11E20000, iocfg_lb:0x11E70000, iocfg_rt:0x11EA0000,
> > + * iocfg_lt:0x11F20000, iocfg_tl:0x11F30000
> > + * _i_based could be used to indicate what base the pin should be mapped into.
> > + */
> > +
> > +#define PIN_FIELD_BASE(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits) \
> > +       PIN_FIELD_CALC(s_pin, e_pin, i_base, s_addr, x_addrs, s_bit, x_bits, \
> > +                      32, 0)
> > +
> 
> <snip>
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
