Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4C2A13CED
	for <lists+linux-mediatek@lfdr.de>; Sun,  5 May 2019 05:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UC79CYTlTuJRoPHBipqxjcQ4YmDDeS0NqsYptScYpcs=; b=tiTevia7mISOwN
	xc5Kp0oSnUNvGs6XpBLDsB7aPoMZTpAixLieBASXRFwjjo529IMSj3ogJnlQs01ubNxYfy9n42fdl
	NiDCDZFP6MchN9iAQZAzbNf/cEM3NiNe4A996BKzYkjYD494nIWnmg+nH8UOu7UZ0eojdVdmvPiy/
	p7DU2hCUDsO1t6H9mlEHbS7w1VOQP4bhpVVl0qU8KZ45QoO786tHU38McXntUaBnLFCUJRcW8sDUk
	bdvLpD0nZW87tVBWyHY6YKTK+FM4ZYpot0mFTIETqIv+X4x7oTm+Ybumzma2y+zPfO4m33RXAyziM
	FL0iGb5dX2RKqVVQ2GOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hN7iC-0003hp-QD; Sun, 05 May 2019 03:21:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hN7i9-0003hS-2k
 for linux-mediatek@lists.infradead.org; Sun, 05 May 2019 03:21:10 +0000
X-UUID: 9565760b15fc439fbdece744db81cd3a-20190504
X-UUID: 9565760b15fc439fbdece744db81cd3a-20190504
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1897125114; Sat, 04 May 2019 19:21:03 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 4 May 2019 20:21:01 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 5 May 2019 11:20:56 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 May 2019 11:20:56 +0800
Message-ID: <1557026456.10179.261.camel@mhfsdcap03>
Subject: Re: linux-next: Tree for May 2 (drivers/usb/mtu3/mtu3_debugfs.o)
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Randy Dunlap <rdunlap@infradead.org>
Date: Sun, 5 May 2019 11:20:56 +0800
In-Reply-To: <3e56059c-e024-324f-f584-75a806d9b0e0@infradead.org>
References: <20190502201028.707453d8@canb.auug.org.au>
 <3e56059c-e024-324f-f584-75a806d9b0e0@infradead.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: C34135B66CD1248BC920FDFC08C2E130B3749552C9C5D14BFBA1722239135E9A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_202109_130011_86C9AFF8 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 linux-mediatek@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 USB list <linux-usb@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Randy,
On Thu, 2019-05-02 at 08:17 -0700, Randy Dunlap wrote:
> On 5/2/19 3:10 AM, Stephen Rothwell wrote:
> > Hi all,
> > 
> > Changes since 20190501:
> > 
> 
> on i386:
> 
> ld: drivers/usb/mtu3/mtu3_debugfs.o: in function `ssusb_debugfs_create_root':
> mtu3_debugfs.c:(.text+0xba3): undefined reference to `usb_debug_root'
> 
> CONFIG_USB_SUPPORT=y
> CONFIG_USB_COMMON=y
> CONFIG_USB_ARCH_HAS_HCD=y
> # CONFIG_USB is not set     <<<<< no host-side USB
> # CONFIG_USB_PCI is not set
> CONFIG_USB_MTU3=y
> CONFIG_USB_MTU3_GADGET=y     <<<<< gadget-only mode
> # CONFIG_USB_MTU3_DEBUG is not set
> CONFIG_USB_MUSB_HDRC=m
> CONFIG_USB_MUSB_GADGET=y
> 
> usb_debug_root is in drivers/usb/core/usb.c, which is only built
> when CONFIG_USB is set/enabled.
> 
I'll fix it ASAP.

Thanks a lot

> 
> 
> Full randconfig file is attached.
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
