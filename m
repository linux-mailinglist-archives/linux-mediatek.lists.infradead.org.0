Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121C2187C08
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 10:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhQUk3x/GnBojKlkYaT9UaZz0XCfXBtZVaMLkhykS0Q=; b=oEU0IwG4SJtk+r
	gdp164Fg1d+h4e2E+sQL4QR8701cp2jjyxjNje6NlB591SDWEj6XEosIOojc7iWFRQ0tkx0uOya8n
	46GyNomJHZB73pNMdTC6XLiKbE+Fp1yhKtK0VNMTUkqzMXsBQEF9wNzbwG8vI/0RQCzoToAntTbK6
	eScfHi86xLFKJ3xldrbOGRwMFF2bUWf8sO2SpKyyRBpZOVEow8b7CpgwdByPi9T113xke043jL/eZ
	apPL234dEGEF6D+NsnybFn2ZlQZ9f37UniY5vfXYKbGfFl1kQ5Rrwy+SRdt9MQXDsVCiCrLdyzjej
	DTkH3CcG4uZxb9Xolnpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jE8Wy-00005A-S0; Tue, 17 Mar 2020 09:29:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jE8Wu-0008VC-LB
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 09:28:58 +0000
X-UUID: c8d7eeeea74d4641b4eb6677621ae7af-20200317
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=caBY5KaLBvbbFihcSr1PWRfxvxROOG5oXS91E6JZO7o=; 
 b=fmVRythI/bDR5VQc/ca29cvuySrkeEeuriLbKZxgqgx8kvdCOcJSOioufGDXm7O5J6S0QhgAH4dF2RfAGOMucnzOyWG69EoJAhB/8E9TLc5k/AjYVqPVPa0X3eIsQoNAmgyh0bELQpexrAI3n8sjUwKe3h4tSEcrK1q1doCUOPw=;
X-UUID: c8d7eeeea74d4641b4eb6677621ae7af-20200317
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 518559484; Tue, 17 Mar 2020 01:28:47 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 02:29:05 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Mar 2020 17:26:28 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 17 Mar 2020 17:28:02 +0800
Message-ID: <1584437324.12211.10.camel@mtkswgap22>
Subject: Re: [PATCH v4 2/2] pinctrl: make MediaTek MT6765 pinctrl ready for
 buidling loadable module
From: Light Hsieh <light.hsieh@mediatek.com>
To: Sean Wang <sean.wang@kernel.org>
Date: Tue, 17 Mar 2020 17:28:44 +0800
In-Reply-To: <CAGp9Lzo-HkmiitBBJF9Mybbrdgy-Kphfyi2wf0SwMGXTeuWGVA@mail.gmail.com>
References: <1583825986-8189-1-git-send-email-light.hsieh@mediatek.com>
 <1583825986-8189-3-git-send-email-light.hsieh@mediatek.com>
 <CAGp9Lzo-HkmiitBBJF9Mybbrdgy-Kphfyi2wf0SwMGXTeuWGVA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_022856_695703_6D67B52E 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, kuohong.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 2020-03-15 at 14:15 -0700, Sean Wang wrote:
> Hi, Light
> 
> On Tue, Mar 10, 2020 at 12:39 AM <light.hsieh@mediatek.com> wrote:
> >
> > From: Light Hsieh <light.hsieh@mediatek.com>
> >
> > This patch make pinctrl-mt6765 ready for building as loadable module.
> s/building/building/
> 
> I got build error after when those two patches are being applied
> ../drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c:529:1: error:
> 'mtk_pinconf_bias_set_gev1' undeclared here (not in a function)
> 

OK. I will fix it.

> >
> > Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > ---
> >  drivers/pinctrl/mediatek/Kconfig          | 2 +-
> >  drivers/pinctrl/mediatek/pinctrl-mt6765.c | 4 ++++
> >  2 files changed, 5 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/pinctrl/mediatek/Kconfig b/drivers/pinctrl/mediatek/Kconfig
> > index 4cd1109..c645fdb 100644
> > --- a/drivers/pinctrl/mediatek/Kconfig
> > +++ b/drivers/pinctrl/mediatek/Kconfig
> > @@ -89,7 +89,7 @@ config PINCTRL_MT2712
> >         select PINCTRL_MTK
> >
> >  config PINCTRL_MT6765
> > -       bool "Mediatek MT6765 pin control"
> > +       tristate "Mediatek MT6765 pin control"
> >         depends on OF
> >         depends on ARM64 || COMPILE_TEST
> >         default ARM64 && ARCH_MEDIATEK
> > diff --git a/drivers/pinctrl/mediatek/pinctrl-mt6765.c b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> > index 905dae8c..2c59d39 100644
> > --- a/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> > +++ b/drivers/pinctrl/mediatek/pinctrl-mt6765.c
> > @@ -6,6 +6,7 @@
> >   *
> >   */
> >
> > +#include <linux/module.h>
> >  #include "pinctrl-mtk-mt6765.h"
> >  #include "pinctrl-paris.h"
> >
> > @@ -1103,3 +1104,6 @@ static int __init mt6765_pinctrl_init(void)
> >         return platform_driver_register(&mt6765_pinctrl_driver);
> >  }
> >  arch_initcall(mt6765_pinctrl_init);
> > +
> > +MODULE_LICENSE("GPL v2");
> > +MODULE_DESCRIPTION("MediaTek MT6765 Pinctrl Driver");
> > --
> > 1.8.1.1.dirty

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
