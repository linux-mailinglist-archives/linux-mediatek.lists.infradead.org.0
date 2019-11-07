Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0DFF2A60
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 Nov 2019 10:16:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXb1Cd2p4e33tT24uOQYNaD1nRaohJSn2skf/qpmUzM=; b=fZ5nOarxuVQxP2
	2R435n8dbtVT11S+seYsl2nCAN3lkauU/koIXITYJq81gpok2zig5t+9nkXIPX3Z/YVqNfXSXhf2v
	I79XNK0KY6aWmeu1eSwMfb9xxX2Rc9cOG3I4hYsVr/kRHQslptfa0uJrRZ1mRlV4ONLLH6Z4GOnrf
	w3Kh2FPb2BLWKZsOzvTxVmKoctKYN8W8emweoeJHolULMXvmFsTHp1/zrH3JtMc/0GKFrt6hX8bj4
	KoQgBY8gPkR3rfi33JQgIZ6kpDozpQS8VkyROQqZuxVcRD1vWKwufCj80XVzi7i+verkawxhRDvBn
	8A3OmCF1Orf8FAI1k3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdu3-00026O-6a; Thu, 07 Nov 2019 09:16:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdtz-00025m-IS; Thu, 07 Nov 2019 09:16:28 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 689F32166E;
 Thu,  7 Nov 2019 09:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573118187;
 bh=TM7UP3cWbiGJEghjGH72vosIqE/f6U3eHuTpEBJUzB0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CHrZk6eeNGL4z9nRRQYjNVJWuVYJi9msnRuyWAcY62tsE4SsEefl2qKhZ6gEVdo0h
 Ec2Pg37dZUXAFmkabt9kYbD9qxDrqXdcGGVshQPFlhI+VdGzIc3JFQB2VIbSaKdcc7
 oaKYp/keyy+cIJBTWXQp5zI/dEBY6G/kGzcdh6cM=
Date: Thu, 7 Nov 2019 10:16:24 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 01/28] usb: common: change usb_debug_root as static
 variable
Message-ID: <20191107091624.GB1328892@kroah.com>
References: <8cb137d5376b4e317dc22dcb9e81a1125b781f8f.1573008519.git.chunfeng.yun@mediatek.com>
 <79fd2ebd-b8c6-ee00-c71e-782475a20de6@roeck-us.net>
 <1573031491.18464.70.camel@mhfsdcap03>
 <2e793636-04a6-8589-b4a5-259f79a5ea02@roeck-us.net>
 <1573117594.18464.87.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573117594.18464.87.camel@mhfsdcap03>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_011627_651225_92D97AB4 
X-CRM114-Status: GOOD (  26.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peter Chen <Peter.Chen@nxp.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Wolfram Sang <wsa@the-dreams.de>, Yangtao Li <tiny.windzz@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mans Rullgard <mans@mansr.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Fabio Estevam <festevam@gmail.com>, Florian Fainelli <f.fainelli@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Kevin Cernekee <cernekee@gmail.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Alan Stern <stern@rowland.harvard.edu>, NXP Linux Team <linux-imx@nxp.com>,
 bcm-kernel-feedback-list@broadcom.com,
 David Kershner <david.kershner@unisys.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Cristian Birsan <cristian.birsan@microchip.com>, linux-media@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Mathias Payer <mathias.payer@nebelwelt.net>,
 Mathias Nyman <mathias.nyman@intel.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-mediatek@lists.infradead.org, Minas Harutyunyan <hminas@synopsys.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Bin Liu <b-liu@ti.com>,
 linux-arm-kernel@lists.infradead.org, Biju Das <biju.das@bp.renesas.com>,
 Felipe Balbi <balbi@kernel.org>, Laurentiu Tudor <laurentiu.tudor@nxp.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 linux-usb@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Dmitry Torokhov <dtor@chromium.org>, Guenter Roeck <linux@roeck-us.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Colin Ian King <colin.king@canonical.com>, Shawn Guo <shawnguo@kernel.org>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 05:06:34PM +0800, Chunfeng Yun wrote:
> Hi Greg,
> 
> On Wed, 2019-11-06 at 06:00 -0800, Guenter Roeck wrote:
> > On 11/6/19 1:11 AM, Chunfeng Yun wrote:
> > > On Tue, 2019-11-05 at 20:03 -0800, Guenter Roeck wrote:
> > >> On 11/5/19 7:15 PM, Chunfeng Yun wrote:
> > >>> Try to avoid using extern global variable, and provide two
> > >>> functions for the usage cases
> > >>>
> > >>> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > >>> ---
> > >>>    drivers/usb/common/common.c | 16 ++++++++++++++--
> > >>>    include/linux/usb.h         |  5 ++++-
> > >>>    2 files changed, 18 insertions(+), 3 deletions(-)
> > >>>
> > >>> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > >>> index 1433260d99b4..639ee6d243a2 100644
> > >>> --- a/drivers/usb/common/common.c
> > >>> +++ b/drivers/usb/common/common.c
> > >>> @@ -293,8 +293,20 @@ struct device *usb_of_get_companion_dev(struct device *dev)
> > >>>    EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
> > >>>    #endif
> > >>>    
> > >>> -struct dentry *usb_debug_root;
> > >>> -EXPORT_SYMBOL_GPL(usb_debug_root);
> > >>> +static struct dentry *usb_debug_root;
> > >>> +
> > >>
> > >> I don't think it is a good idea to declare this variable static
> > >> before all its uses are removed. This patch will leave the system
> > >> in a non-compileable state until all patches of the series have
> > >> been applied.
> > > Yes, you are right, I'll fix it, may be split into two patch
> > > 
> > >>
> > >> I am curious. What is the rationale for this change ?
> > >> Did exported variables run out of favor ?
> > > Personally, I think it's good practice to avoid global varibale,
> > > it may not a good reason.
> > 
> > Personally I don't think it is a good reason at all. When you are done,
> > someone else may come in and declare the opposite, re-introduce the global
> > variable, and drop the new functions as unnecessary.
> > 
> > This is ok for new code, but I think we should leave existing code alone
> > unless it is broken and needs to get fixed. This is not the case here.
> What do you think about this, if you also agree with Guenter's opinion,

I do.

> I'll abandon this patch.

Please do.

> BTW, how about moving udc's debug directory into usb root?

Sure, feel free to send a patch for that.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
