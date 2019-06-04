Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 697B0342E1
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 11:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUpJebPiHMchfESIN+zd9iOk22Z2HBRqbmY7p/t2Spw=; b=rPKb1SLXC2UWM6
	fWea3/MQUvS+dds076Uf/FpLer5dpgpRzw/sJsG37nKYCWONYYBjYDZ+ci3YbRxrQ7zl1HRt4MHGY
	fudX+f86JwBI29N2yw9Xa6maw6Gu3kbPtAQzLGzF+0bmsSSNHfWiEeEirAPBnMIqGjmyEWuxeWTcZ
	20MgkmgC4nmRchmZV1nbGNIFNVUdmX9ggPgQ03kvgNOTyio0mHOMXJLaw1jBvPfa9V7X+1zWwnDWb
	dSp5myknoTPF7gU3r4zU8h3BotMejcE4N9VjNeMF7KVj/OOhJFxzaA0Cl2Jn5CecTgWTynF1m/bFd
	/B/NzyjphEl8j7Rlf+og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5Vc-0007U4-S5; Tue, 04 Jun 2019 09:13:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Va-0007Tc-NU; Tue, 04 Jun 2019 09:13:31 +0000
X-UUID: 511ad4dd487b4036a22e72e4ac75477e-20190604
X-UUID: 511ad4dd487b4036a22e72e4ac75477e-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1342911158; Tue, 04 Jun 2019 01:13:07 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 02:13:06 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 4 Jun 2019 17:13:03 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 17:13:03 +0800
Message-ID: <1559639583.8487.76.camel@mhfsdcap03>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 4 Jun 2019 17:13:03 +0800
In-Reply-To: <20190604082407.GA3783@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com> <87k1e123mc.fsf@linux.intel.com>
 <20190604082407.GA3783@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_021330_764937_2C42A5C3 
X-CRM114-Status: GOOD (  14.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-04 at 10:24 +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 04, 2019 at 10:47:55AM +0300, Felipe Balbi wrote:
> > 
> > Hi,
> > 
> > Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> > >> +struct dentry *usb_debugfs_init(void)
> > >> +{
> > >> +	if (!usb_debug_root)
> > >> +		usb_debug_root = debugfs_create_dir("usb", NULL);
> > >> +
> > >> +	atomic_inc(&usb_debug_root_refcnt);
> > >> +
> > >> +	return usb_debug_root;
> > >> +}
> > >> +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> > >> +
> > >> +void usb_debugfs_cleanup(void)
> > >> +{
> > >> +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> > >> +		debugfs_remove_recursive(usb_debug_root);
> > >> +		usb_debug_root = NULL;
> > >> +	}
> > >> +}
> > >> +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
> > >
> > > Only remove the debugfs subdir if the usbcore module is removed.  Create
> > > the debugfs subdir when the usbcore module is loaded.  No need for any
> > > reference counting of any sort at all.  No need to overthink this :)
> > 
> > There is a slight need to overthink. He wants to use the same directory
> > for gadget-only builds too :-)
> 
> Again, that's fine, this file will be loaded for those builds as well,
> right?  
Yes, either usbcore or gadget will select this file.

> Otherwise, how would this code even be present?  :)
> 
> thanks,
> 
> greg k-h



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
