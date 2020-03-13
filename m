Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F1B1842D4
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Mar 2020 09:41:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARq7B8GQvIeUxpaXJiNdei2sDOJWqeiHAniiPt6IDw4=; b=h+Ows0RdNfzVby
	bIG28+mNYGUznrtX5i8NeWqMJhxvXQab0rBxmWYL5063BwpeDjjW5VoDope2pVs3p399xQzoG/g1q
	PRkm3D0VXPbU7APRjciFYFlDcDXUx1ASZH/ALFcQ4AZ3Xa2ILYzy56uuoEC1xPVpUAfJsYLlIkhK2
	gktEK9R6sWUGGqoY1gY64yHPpkQ4ghcjcCRilMzWPFIxGtM06bj5B9fVSpgbFTOZeAk+RanB6RI8J
	yGCzotmTtJU7mIeTU+3tHj3ROGoxleJwljhbaGG9WapFBHvhhhcj7F1ZowP7+nZwdXr007ryYknZD
	p4FaE+1MKmSeYy0C1T+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfsn-00073X-5A; Fri, 13 Mar 2020 08:41:29 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfsc-0006wD-Bq; Fri, 13 Mar 2020 08:41:19 +0000
X-UUID: 8c8c2c915a5e4c7595b7e9d8f8761ed0-20200313
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=uadq0m8B7fzPLQ9yivfxpszXKt2Y0MnLJJvhYfcT86c=; 
 b=H6f3tWTGxFfR+wQJ6LtLwLQolZigY1Fi9BcX6RfgwjCoCzkoFBql6frtlez8xKsOwEQuc5qq+045ajUjgNRiNf2dHBIvS3yAlRArWrMrcNNe247a11IE9VUfuhWGY5/0y268bg/mUJnZr26zvFigCDJISH4wivP2UG3qJgfIyGE=;
X-UUID: 8c8c2c915a5e4c7595b7e9d8f8761ed0-20200313
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 135607428; Fri, 13 Mar 2020 00:41:13 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 13 Mar 2020 01:31:11 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs05n2.mediatek.inc
 (172.21.101.140) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 13 Mar 2020 16:30:04 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 13 Mar 2020 16:31:01 +0800
Message-ID: <1584088256.16960.9.camel@mhfsdcap03>
Subject: Re: [PATCH v10 4/5] rtc: mt6397: Add support for the MediaTek
 MT6358 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Fri, 13 Mar 2020 16:30:56 +0800
In-Reply-To: <20200313072230.GC3142@dell>
References: <1583918223-22506-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1583918223-22506-5-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20200312074407.GA3142@dell> <1584003477.6269.8.camel@mhfsdcap03>
 <20200313072230.GC3142@dell>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_014118_415752_C3B9A484 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Frank Wunderlich <frank-w@public-files.de>,
 Josef Friedl <josef.friedl@speed.at>, linux-pm@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Sebastian
 Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-03-13 at 07:22 +0000, Lee Jones wrote:
> On Thu, 12 Mar 2020, Ran Bi wrote:
> 
> > On Thu, 2020-03-12 at 07:44 +0000, Lee Jones wrote:
> > > On Wed, 11 Mar 2020, Hsin-Hsiung Wang wrote:
> > > 
> > > > From: Ran Bi <ran.bi@mediatek.com>
> > > > 
> > > > This add support for the MediaTek MT6358 RTC. Driver using
> > > > compatible data to store different RTC_WRTGR address offset.
> > > > This replace RTC_WRTGR to RTC_WRTGR_MT6323 in mt6323-poweroff
> > > > driver which only needed by armv7 CPU without ATF.
> > > > 
> > > > Signed-off-by: Ran Bi <ran.bi@mediatek.com>
> > > > Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
> > > > ---
> > > >  drivers/power/reset/mt6323-poweroff.c |  2 +-
> > > >  drivers/rtc/rtc-mt6397.c              | 32 ++++++++++++++++++++++++--------
> > > >  include/linux/mfd/mt6397/rtc.h        |  9 ++++++++-
> > > >  3 files changed, 33 insertions(+), 10 deletions(-)
> > > > 
> > 
> > <...>
> > 
> > > >  
> > > >  #define RTC_IRQ_STA            0x0002
> > > >  #define RTC_IRQ_STA_AL         BIT(0)
> > > > @@ -65,6 +67,10 @@
> > > >  #define MTK_RTC_POLL_DELAY_US  10
> > > >  #define MTK_RTC_POLL_TIMEOUT   (jiffies_to_usecs(HZ))
> > > >  
> > > > +struct mtk_rtc_data {
> > > > +	u32			wrtgr;
> > > > +};
> > > 
> > > Do you expect to add more properties to this struct?
> > > 
> > > If not, it seems a bit overkill.
> > > 
> > 
> > Yes, we would add more properties here in future patches.
> > 
> > > >  struct mt6397_rtc {
> > > >  	struct device           *dev;
> > > >  	struct rtc_device       *rtc_dev;
> > > > @@ -74,6 +80,7 @@ struct mt6397_rtc {
> > > >  	struct regmap           *regmap;
> > > >  	int                     irq;
> > > >  	u32                     addr_base;
> > > > +	const struct mtk_rtc_data *data;
> > > 
> > > 'data' is a terrible variable name.
> > > 
> > > Why do you need to store this?
> > > 
> > > It's one variable which is used once AFAICT.
> > 
> > I would rename 'data' to 'config'.
> > 
> > This struct will be extended in future patches to achieve more PMIC chip
> > compatibility.
> 
> On closer inspection, it looks like wrtgr (also not a great name for a
> variable by the way) is a register address.  Is that correct?
> Initially I thought it was a model number, which would have been a
> suitable candidate for entry into OF .data.
> 
> However, describing register addresses in OF .data does not sound like
> good practice.  It is usually used to identify a platform in the cases
> where platforms cannot be otherwise dynamically interrogated for model
> number via a register read.
> 
> Describing register maps via 'config' data is a slippery slope.
> 

wrtgr is a special register called "write trigger" which could apply RTC
register change after write 1 to this register. I suppose I could rename
it to "trigger".

Most RTC register offset was same between 6397 and 6358 PMIC chip except
this trigger register. So I would like to store this difference into OF
data. Otherwise, I need a long if-else condition based on model number
or register read.
 
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
