Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A021FC667
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jun 2020 08:49:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8zELSB+LIY1/giROLx61c6fqHP0vxkIcJe+geDGwjKY=; b=IuPuKioXWiU4Jl
	5yLwJE9nW+CtcbEQ1VFZkS4UtSQvi9zoww5AzViZsxmQB+VUO63GfjsH8wgdOmGH6Ch4lWtLpJasb
	ogi0yboUDOQn5l/kX65H660qYUint0X12VCYSfFvmOnMXz32zmedzVJTF5eOX6ie9ZuJVJ+5O1QWG
	bO6jsvOZxzVhbXvN5EdeGQQX8R9D+/+OaoHX0/tDimC7Z9LkAgiENIqhe6cZU8Bv/W3wnr7aw5saV
	8bApLACIyrQkE+ETt54NY22ZNcXE+NJY9GbJZXMpI5SvogshJhn8hnnYkStt4mPuc6M4rfILyQa19
	01sB2wp7MKCu2yuVt12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRt6-0006TB-Jy; Wed, 17 Jun 2020 06:49:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRsv-0006L5-VF; Wed, 17 Jun 2020 06:49:23 +0000
X-UUID: f6286da125d84b9a893e0c49e80b685a-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Yi8qckVCoc/BpINGsirl4HLvfSQpKF4ywGxOTUuDyXs=; 
 b=SEgxChRfS3LDVMAH8o9E5uWCg9fLjKKTSOErgn2Nj2djudDtMkh4zDkU8uJX0nPmQS6NEBwXHv2ChHZbeOUu8K7LK0FFvc6fOeMThRxRH/QQIjZ4/aeuPNQz/jC/uFUPYP2YcpGAaQnH/e2DRLpCjC9Ob3Dk6t6bo9lEd/5Rvek=;
X-UUID: f6286da125d84b9a893e0c49e80b685a-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1132842642; Tue, 16 Jun 2020 22:49:05 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 23:39:10 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 14:39:10 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 14:39:09 +0800
Message-ID: <1592375950.27894.0.camel@mtksdaap41>
Subject: Re: [PATCH v15 06/11] soc: mediatek: Add subsys clock control for
 bus protection
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 17 Jun 2020 14:39:10 +0800
In-Reply-To: <CANMq1KBRe81Sa4A6sCM2egOVRWCJbUNPsXHpfzkT33XGVZXBhg@mail.gmail.com>
References: <1590051985-29149-1-git-send-email-weiyi.lu@mediatek.com>
 <1590051985-29149-7-git-send-email-weiyi.lu@mediatek.com>
 <CANMq1KBRe81Sa4A6sCM2egOVRWCJbUNPsXHpfzkT33XGVZXBhg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: FDDAF576199A3C79306B7E064DC94874A65BB2656A13F2F45D65F88AF7F8449F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_234922_010043_2C989E46 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Liao <jamesjj.liao@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 lkml <linux-kernel@vger.kernel.org>, Fan Chen <fan.chen@mediatek.com>,
 Devicetree List <devicetree@vger.kernel.org>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2020-06-04 at 10:29 +0800, Nicolas Boichat wrote:
> On Thu, May 21, 2020 at 5:06 PM Weiyi Lu <weiyi.lu@mediatek.com> wrote:
> >
> > For the bus protection operations, some subsys clocks need to be enabled
> > before releasing the protection, and vice versa.
> > But those subsys clocks could only be controlled once its corresponding
> > power domain is turned on first.
> > In this patch, we add the subsys clock control into its relevant steps.
> >
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> > ---
> >  drivers/soc/mediatek/mtk-scpsys.c | 62 +++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 60 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
> > index 59a525a..ef2c668 100644
> > --- a/drivers/soc/mediatek/mtk-scpsys.c
> > +++ b/drivers/soc/mediatek/mtk-scpsys.c
> > [snip]
> >         val |= PWR_ISO_BIT;
> > @@ -498,6 +511,39 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
> >         return ret;
> >  }
> >
> > +static int init_subsys_clks(struct platform_device *pdev,
> > +               const char *prefix, struct clk **clk)
> > +{
> > +       struct device_node *node = pdev->dev.of_node;
> > +       u32 prefix_len, sub_clk_cnt = 0;
> > +       struct property *prop;
> > +       const char *clk_name;
> > +
> > +       prefix_len = strlen(prefix);
> > +
> > +       of_property_for_each_string(node, "clock-names", prop, clk_name) {
> > +               if (!strncmp(clk_name, prefix, prefix_len) &&
> > +                               (clk_name[prefix_len] == '-')) {
> > +                       if (sub_clk_cnt >= MAX_SUBSYS_CLKS) {
> > +                               dev_err(&pdev->dev,
> > +                                       "subsys clk out of range %d\n",
> > +                                       sub_clk_cnt);
> > +                               return -EINVAL;
> > +                       }
> > +
> > +                       clk[sub_clk_cnt] = devm_clk_get(&pdev->dev,
> > +                                               clk_name);
> > +
> > +                       if (IS_ERR(clk[sub_clk_cnt]))
> > +                               return PTR_ERR(clk[sub_clk_cnt]);
> > +
> > +                       sub_clk_cnt++;
> > +               }
> > +       }
> > +
> > +       return sub_clk_cnt;
> > +}
> > +
> >  static int init_basic_clks(struct platform_device *pdev, struct clk **clk,
> >                         const char * const *name)
> >  {
> > @@ -596,6 +642,18 @@ static struct scp *init_scp(struct platform_device *pdev,
> >                 if (ret)
> >                         return ERR_PTR(ret);
> >
> > +               if (data->subsys_clk_prefix) {
> > +                       ret = init_subsys_clks(pdev,
> > +                                       data->subsys_clk_prefix,
> > +                                       scpd->subsys_clk);
> > +                       if (ret < 0) {
> > +                               dev_err(&pdev->dev,
> > +                                       "%s: subsys clk unavailable\n",
> > +                                       data->name);
> 
> init_subsys_clks should already have printed an error (directly or
> indirectly), so this is not needed.
> 

You're right. I'll remove it in next version v16.

> > +                               return ERR_PTR(ret);
> > +                       }
> > +               }
> > +
> >                 genpd->name = data->name;
> >                 genpd->power_off = scpsys_power_off;
> >                 genpd->power_on = scpsys_power_on;
> > --
> > 1.8.1.1.dirty

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
