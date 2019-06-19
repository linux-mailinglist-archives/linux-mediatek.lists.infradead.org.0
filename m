Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 520314B4B4
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Jun 2019 11:12:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjD9PDNNCEXoJ3b2tHaIM/5u/hOCynXN3LItA5Ii0Yo=; b=IiwT8esKaDC2i1
	X5ib02c/wyMJM0uapo7wZtcNoMo19qlJgMaOCrDg+YBN97V9zV3gw2qv2SjCzQpDCzXVkY6R798ID
	lga1L8SI11i96+9lkEdczSEp7FkG9tTMzIKkvkLKQtoyVOaN3SoXtTsGY1olfzJqy3aHju5vk7NzZ
	AdwCaO1zCvNdQuiv4O8lRZr56RPodGhMkPuuicbYf5W2I+5wvWk/umJgGHNzFCngZWdWmx/L8OxGX
	Usaa0mKcG2I9byY45I9aGSUwty7Wu5CvmValNuyPgRMZlEyn7CrSdhlw28peEKKfOma3bfeZP7y+4
	qcT9aNx51Ou1jVA0xbEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdWdh-0005An-9Q; Wed, 19 Jun 2019 09:12:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdWdc-00059s-Hg; Wed, 19 Jun 2019 09:12:18 +0000
X-UUID: bdb7ec5cbab64320a822b8d066555a56-20190619
X-UUID: bdb7ec5cbab64320a822b8d066555a56-20190619
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 212289159; Wed, 19 Jun 2019 01:12:06 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 02:12:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Jun 2019 17:11:55 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Jun 2019 17:11:55 +0800
Message-ID: <1560935516.2158.2.camel@mtksdaap41>
Subject: Re: [PATCH v5 04/14] soc: mediatek: Refactor polling timeout and
 documentation
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 19 Jun 2019 17:11:56 +0800
In-Reply-To: <CANMq1KCLQaFg3bOrHnXzbjU9KM5Ny2rRX9bP4xg17jOYirxxig@mail.gmail.com>
References: <20190319080140.24055-1-weiyi.lu@mediatek.com>
 <20190319080140.24055-5-weiyi.lu@mediatek.com>
 <CANMq1KCLQaFg3bOrHnXzbjU9KM5Ny2rRX9bP4xg17jOYirxxig@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FEF713524511270A67FE0C1B2152E937E6EDF13A65FACB2F23DD324F98A8FFCE2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_021216_595410_3DD13DE0 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, srv_heupstream <srv_heupstream@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 Fan Chen <fan.chen@mediatek.com>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-03-19 at 19:45 +0800, Nicolas Boichat wrote:
> On Tue, Mar 19, 2019 at 4:02 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > Use USEC_PER_SEC to indicate the polling timeout directly.
> > And add documentation of scp_domain_data.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 9f52f501178b..2855111b221a 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > @@ -21,7 +21,7 @@
> >  #include <dt-bindings/power/mt8173-power.h>
> >
> >  #define MTK_POLL_DELAY_US   10
> > -#define MTK_POLL_TIMEOUT    (jiffies_to_usecs(HZ))
> > +#define MTK_POLL_TIMEOUT    USEC_PER_SEC
> >
> >  #define MTK_SCPD_ACTIVE_WAKEUP         BIT(0)
> >  #define MTK_SCPD_FWAIT_SRAM            BIT(1)
> > @@ -108,6 +108,18 @@ static const char * const clk_names[] = {
> >
> >  #define MAX_CLKS       3
> >
> > +/**
> > + * struct scp_domain_data - scp domain data for power on/off flow
> > + * @name: The domain name.
> > + * @sta_mask: The mask for power on/off status bit.
> > + * @ctl_offs: The offset for main power control register.
> > + * @sram_pdn_bits: The mask for sram power control bits.
> > + * @sram_pdn_ack_bits: The mask for sram power control acked bits.
> > + * @bus_prot_mask: The mask for single step bus protection.
> > + * @clk_id: The basic clock needs to be enabled before enabling certain
> > + *          power domains.
> 
> I assume these are the clock*s* that *this* scp_domain requires?
> 
> So maybe just: "The basic clocks required by this power domain." ?
> 
Thanks for revision. I'll update in next version.
> > + * @caps: The flag for active wake-up action.
> > + */
> >  struct scp_domain_data {
> >         const char *name;
> >         u32 sta_mask;
> > --
> > 2.18.0
> >
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
