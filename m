Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B07F1709AD
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 21:30:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=47P0yrhXyhJFIhbsnK0JpajusfgdSmKpHeuSnfCiYd8=; b=VULvxOsDvWsUJH
	uwnoUY7wUsEVz0mlc3NUwW/dNfOqUqkqhNXquxgTaoucoztpSJeNxpKzu+dtJUmwdHEG9GnK3s070
	3IsCHXtsbbMVaBRQHN+gx0dG/uq0wMXPXILBefAxLljmazBLsN8SuXKeHqUrbCdYYob23IsZ3wv6z
	rNkc0uoRTScYxeUtMI5w1KImXNtyes9Pb3CB3cq/MqxfNT30Pl7Cy1jkVHed1tCWYHINV1dfe7W6Q
	q66HSTcw1rwXSMVjTCScFFSR0IvWfJhY1FSlS7nx58lSnnjUgYUKOs8JgT2xvrNWJWpY7Z+1/Fiyu
	ofCBpZgfDEJtR6M1Ze1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73Ju-0003hS-BB; Wed, 26 Feb 2020 20:30:14 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73JY-0002I0-8G; Wed, 26 Feb 2020 20:29:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0912129576D
Message-ID: <da1b0908ddac65d370609f35c78d4a618ac70268.camel@collabora.com>
Subject: Re: [PATCH v9 3/4] soc: mediatek: Move mt8173 MMSYS to platform driver
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Randy Dunlap <rdunlap@infradead.org>, Enric Balletbo i Serra
 <enric.balletbo@collabora.com>, robh+dt@kernel.org, mark.rutland@arm.com, 
 ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie, 
 mturquette@baylibre.com, sboyd@kernel.org, ulrich.hecht+renesas@gmail.com, 
 laurent.pinchart@ideasonboard.com
Date: Wed, 26 Feb 2020 17:29:35 -0300
In-Reply-To: <54b3cfed-92f3-54c8-05a1-90ef4c057e4c@infradead.org>
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
 <20200226105419.632771-4-enric.balletbo@collabora.com>
 <54b3cfed-92f3-54c8-05a1-90ef4c057e4c@infradead.org>
Organization: Collabora
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_122952_425014_C592F677 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 07:40 -0800, Randy Dunlap wrote:
> On 2/26/20 2:54 AM, Enric Balletbo i Serra wrote:
> > diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> > index 2114b563478c..dcd6481a14d0 100644
> > --- a/drivers/soc/mediatek/Kconfig
> > +++ b/drivers/soc/mediatek/Kconfig
> > @@ -44,4 +44,11 @@ config MTK_SCPSYS
> >  	  Say yes here to add support for the MediaTek SCPSYS power domain
> >  	  driver.
> >  
> > +config MT8173_MMSYS
> > +	bool "MediaTek MT8173 MMSYS Support"
> 
> Hi,
> Can this be tristate instead of bool?
> 

Wouldn't that conflict with
the driver being a builtin_platform_driver,
or am I just confusing things badly?

Thanks,
Ezequiel

> +	depends on COMMON_CLK_MT8173
> > +	help
> > +	  Say yes here to add support for the MediaTek MT8173 Multimedia
> > +	  Subsystem (MMSYS).
> > +
> >  endmenu
> 
> thanks.
> -- 
> ~Randy
> 
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
