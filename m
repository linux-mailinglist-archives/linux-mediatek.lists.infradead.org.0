Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13AE35902
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 10:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4dQmeJp7Lcc2mm6HvsQVCp7Zp+yAoMFYVnEiOLV4iM=; b=nGXvxXwJZtoJxY
	g0x81k3mFzM4Jg+8gdIzPQNa7Kt5OI2qLnv7PfE1ngN7kL9wdcOhgnB95BotxeLSUmUaCs35lac64
	MfTf9APx7yWfLtOS53GGDIAoPLxXawRNqn9WUSjbXj5QYB45Yt65/b2y8HqKi8Jaaq3hgI4Po8OYd
	NcDvUvfWHp7XSeuClE0AFhZLJ5J9VH2lRjrijhxNxjhcvwNxDoPARD908Abr58ob0m+fcTzeLG61x
	/skYwcK5sVUtrzXC9do+qwR8v/N/mQ7t2Rp5BmdL+3rYrp6hQwczQVVABhAdHTKcUfxo0ECoURTZM
	947ToYZI09NbObnza4zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRem-0001F5-EP; Wed, 05 Jun 2019 08:52:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRed-00018w-8X; Wed, 05 Jun 2019 08:52:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 01A322075C;
 Wed,  5 Jun 2019 08:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559724738;
 bh=33U2EKfjRS7h+XMGkmD3adAxfr6fGPYO5U7ZjaS/GaY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jg8LNDdI0PoUYPg/zVrHza4ANwwsNV4xpyvG90wnOrXz6LjtnDwRiaa5W+ti7SflB
 7ATBvjKJU2WdvbuNwRTWRQPx0hbf1OrcQiHrmNoWTdDl+jVvYwWMzvNGvfBN/4HMx2
 44ObQkLWTyjt8JccrcHrk/wdy3CfHRaHp+UMDTTo=
Date: Wed, 5 Jun 2019 10:52:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190605085216.GB26984@kroah.com>
References: <20190604093258.GB30054@kroah.com>
 <20190604115919.GA24346@kroah.com>
 <1559721031.8487.99.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559721031.8487.99.camel@mhfsdcap03>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_015219_338348_3963C994 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 03:50:31PM +0800, Chunfeng Yun wrote:
> On Tue, 2019-06-04 at 13:59 +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jun 04, 2019 at 11:32:58AM +0200, Greg Kroah-Hartman wrote:
> > > The USB gadget subsystem wants to use the USB debugfs root directory, so
> > > move it to the common "core" USB code so that it is properly initialized
> > > and removed as needed.
> > > 
> > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > 
> > > ---
> > > 
> > > This should be the "correct" version of this, Chunfeng, can you test
> > > this to verify it works for you?
> > > 
> > > 
> > > diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > > index 18f5dcf58b0d..3b5e4263ffef 100644
> > > --- a/drivers/usb/common/common.c
> > > +++ b/drivers/usb/common/common.c
> > > @@ -15,6 +15,7 @@
> > >  #include <linux/usb/of.h>
> > >  #include <linux/usb/otg.h>
> > >  #include <linux/of_platform.h>
> > > +#include <linux/debugfs.h>
> > >  
> > >  static const char *const ep_type_names[] = {
> > >  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> > > @@ -291,4 +292,21 @@ struct device *usb_of_get_companion_dev(struct device *dev)
> > >  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
> > >  #endif
> > >  
> > > +struct dentry *usb_debug_root;
> > > +EXPORT_SYMBOL_GPL(usb_debug_root);
> > > +
> > > +static int usb_common_init(void)
> > > +{
> > > +	usb_debug_root = debugfs_create_dir("usb", NULL);
> > > +	return 0;
> > > +}
> > > +
> > > +static void usb_common_exit(void)
> > > +{
> > > +	debugfs_remove_recursive(usb_debug_root);
> > > +}
> > > +
> > > +module_init(usb_common_init);
> I tested this patch.
> 
> Here use module_init() indeed have a race as Felipe said before.
> usbcore uses subsys_initcall(), and have a higher priority than
> module_init(), so when usbcore tries to create "devices" file,
> usb_debug_root is not created.

Ah, let me fix that, it should have the same init level and I'll ensure
it comes first in the linking.

> after I replace it by postcore_initcall() (debugfs uses
> core_initcall()), test two cases:
> 
> 1. buildin usbcore/udc-core
> 
>     "usb" directory is created, and usb/devices file is also created by
> usbcore
> 
> 2. build both usbcore and gadget as ko
> 
>     usbcore.ko, udc-core.ko and usb-common.ko are created. 
> 
>    2.1 
>        insmod usb-common.ko   // "usb" directory is created
>        insmod usb-core.ko   // usb/devices file is created
> 
>    2.2
>        rmmod usb-common.ko  // failed, usb_common is in use by usb-core
> 
>    2.3 
>        rmmod usb-core.ko   // usb/devices file is destroyed
>        rmmod usb-common.ko  // usb directory is destroyed
> 
>    2.4 
>        insmod usb-common.ko   // "usb" directory is created
>        insmod udc-core.ko
> 
>    2.5
>        rmmod usb-common.ko  // failed, usb_common is in use by udc-core
> 
>    2.6 
>        rmmod udc-core.ko
>        rmmod usb-common.ko  // usb directory is destroyed
> 
> they are all in line with expectations

Wonderful!

Let me fix up the init level, and the build issue tha kbuild found, and
post a v2 patch.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
