Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA4D34728
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 14:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ea3x/AwoJQ+7iwlfi0JPWx8+szFLUgm+mLI506d20L4=; b=NNc8rVtaABeCA5
	9oIeA6U9LkMAN+WWbik2f8DZPVwIfcAram2FgzgPxJV34V8i9YpqNF3FHlyYIqVdcoR4s1kajdEWs
	2O2wEYHmMQp87QEsSqzxo70hhfjrdKaIcFUJYwPyEDOLnCu7Nhos61GoC2BQ3dkY9t4UXx/TOS91s
	1wW4MkowXW2cWfOd4AbQCxAK+DqzgeoyFtcIomizKeErSj5ZRGERYmR3hz9YM3oikfIj1/JF4C1VJ
	KdvRAiD/hFvnaaj2JuAl6QPQYmZCJBMrhCQNtaMwtDsfOEbhYgaAOqEDh2xt/Sq9zJhd9i4TftGpX
	7v24VtViZOXh6NmZ0L+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8nN-00050K-S1; Tue, 04 Jun 2019 12:44:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8nG-0004tr-B7; Tue, 04 Jun 2019 12:43:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A13B24C04;
 Tue,  4 Jun 2019 12:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559652238;
 bh=nPRw0HfETQMVcRD5ybRNmzTgeO8OxtSmoQqELkBM3uo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z9hbEB1IUVetlT27vitYUzRjwW/0AcgjeKWtZ8vrtzZa9RkfdAyq8RjoarqxM06og
 XJzP21fmq9Siqce4ULswG2d3mXAha3TKIt0fkw4fqbs5yGzNp3jkKo5/QoCYuNkKQ9
 rfqP07Ih5LBpto9QA/EvKL/xDyeqG1EV3i0DwXys=
Date: Tue, 4 Jun 2019 14:43:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190604124349.GA10203@kroah.com>
References: <20190604093258.GB30054@kroah.com> <87tvd5illh.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tvd5illh.fsf@linux.intel.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_054358_397920_35E48806 
X-CRM114-Status: GOOD (  11.40  )
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 03:25:14PM +0300, Felipe Balbi wrote:
> 
> Hi,
> 
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> > index 7fcb9f782931..f3d6b1ab80cb 100644
> > --- a/drivers/usb/core/usb.c
> > +++ b/drivers/usb/core/usb.c
> > @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
> >  	.notifier_call = usb_bus_notify,
> >  };
> >  
> > -struct dentry *usb_debug_root;
> > -EXPORT_SYMBOL_GPL(usb_debug_root);
> > +static struct dentry *usb_devices_root;
> >  
> >  static void usb_debugfs_init(void)
> >  {
> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
> > -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> > -			    &usbfs_devices_fops);
> > +	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
> 
> don't we have a race now? Can usbcore ever probe before usb common?

How can that happen if usb_debug_root is in usb common?  The module
loader will not let that happen.  Or it shouldn't :)

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
