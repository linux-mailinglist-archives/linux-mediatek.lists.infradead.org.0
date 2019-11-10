Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A47F68EA
	for <lists+linux-mediatek@lfdr.de>; Sun, 10 Nov 2019 13:22:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sly8J3nV5cPm2W+Nh6jU6Y3nuR+XI6mNPiMNDaHMsYM=; b=B1jIEcZtcllg/+
	5sAJ5u0uSgvCeFw/TNBXoa4GNUzxZKeKbzGnT8zqndJ+pBerT2G/ZI25uI7iG0cgalMyG5B09bWIe
	9YcUqB02UUXDpRJC6I6BQAaaLzIRdLAz9LeT2PRqXUL9+K8dxDoPblWdmAgkubg9T+ouTM2Hv48qy
	EaoeAMXh9q3UuXjcfVS/GytpMkfBM99hRmCsmLwTtoq5Pvanzn6lnrKy4yj02vPE7ftM+uPIXHYSl
	s84FZKX7jARSSAEBXHGmr5KlyFB+IwH58WB26/ZUHnFCfT2l6Z5rXZlYtHadEBamvw+7F7jG3Lb2D
	SR22ZeqpRXe6nP1Aqi5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTmEq-00036x-LH; Sun, 10 Nov 2019 12:22:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTmEn-00035W-1I; Sun, 10 Nov 2019 12:22:38 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id AF26428A46F;
 Sun, 10 Nov 2019 12:22:34 +0000 (GMT)
Date: Sun, 10 Nov 2019 13:22:32 +0100
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] mtd: rawnand: driver for Mediatek MT7621 SoC NAND flash
 controller
Message-ID: <20191110132232.3815f1af@collabora.com>
In-Reply-To: <20191110123919.5c998839@collabora.com>
References: <20191107073521.11413-1-gerg@kernel.org>
 <20191107084007.GA1203521@kroah.com>
 <20191110123919.5c998839@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_042237_210538_9E1CE966 
X-CRM114-Status: GOOD (  24.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, gerg@kernel.org,
 linux-mtd@lists.infradead.org, neil@brown.name,
 linux-mediatek@lists.infradead.org, blogic@openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 10 Nov 2019 12:39:19 +0100
Boris Brezillon <boris.brezillon@collabora.com> wrote:

> On Thu, 7 Nov 2019 09:40:07 +0100
> Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Thu, Nov 07, 2019 at 05:35:21PM +1000, gerg@kernel.org wrote:  
> > > From: Greg Ungerer <gerg@kernel.org>
> > > 
> > > Add a driver to support the NAND flash controller of the MediaTek MT7621
> > > System-on-Chip device. (This one is the MIPS based parts from Mediatek).
> > > 
> > > This code is a re-working of the earlier patches for this hardware that
> > > have been floating around the internet for years:
> > > 
> > > https://github.com/ReclaimYourPrivacy/cloak/blob/master/target/linux/ramips/patches-3.18/0045-mtd-add-mt7621-nand-support.patch
> > > 
> > > This is a much cleaned up version, put in staging to start with.
> > > It does still have some problems, mainly that it still uses a lot of the
> > > mtd raw nand legacy support.    
> > 
> > Is that an issue?  
> 
> Well, yes that's an issue since we decided that all new drivers should
> implement ->exec_op() instead of the legacy hooks. But that would be an
> issue even if we were merging the driver in staging.
> 
> > Why not just put it in the "real" part of the kernel
> > then, if those apis are still in use?
> >   
> > > The driver not only compiles, but it works well on the small range of
> > > hardware platforms that it has been used on so far. I have been using
> > > for quite a while now, cleaning up as I get time.
> > > 
> > > So... I am looking for comments on the best approach forward with this.
> > > At least in staging it can get some more eyeballs going over it.    
> > 
> > staging will just nit-pick it to death for coding style issues, it's not
> > going to be get any major api changes/cleanups there usually.  I'd
> > recommend just merging this to the "real" part of the kernel now if it's
> > working for you.  
> 
> I agree on that point: we should merge this driver directly in the NAND
> framework after it's been reworked to implement ->exec_op() instead of

  s/framework/subsystem/

> the legacy hooks.
> 
> ______________________________________________________
> Linux MTD discussion mailing list
> http://lists.infradead.org/mailman/listinfo/linux-mtd/


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
