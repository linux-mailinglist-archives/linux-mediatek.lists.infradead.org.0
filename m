Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCE01C5405
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 13:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSEJs0V5AWEL95oonn+t7z/kKkToZ4VRy8YSTCEOHvU=; b=m3euxqcKMjPgss
	3pi+xY/GkYMghH0rl+LKGN9n1ybC28/eryX4PGSe5frs/jW7a1hy+8WVzldG0tFuAui0I4fVnznkj
	TYNCuZDIJe0vIpwm8ca+eJJUO3w9O5I+DgN6aD161jSOcF8kvlznl8ohroTLEfmy3R7BsfWn5zfQS
	THawL3YYMQxbFVf7tnE8fNouhAyH07bzFhGTSDP7rV7nbX0W514QK/dx11+k8fR3cyXziOABWaPRO
	E6+Y311zcuCmkqtPXdtGj3dKgW3EwNVh9tmUt9oMaMWzeRUZjwSYSdU9ghhkZ4pFSs5uODMQy9DIF
	SKQwXiJIZ6W06v38c8+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVvTG-0004SK-TE; Tue, 05 May 2020 11:10:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVvT5-0004JK-V0; Tue, 05 May 2020 11:10:33 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E3C0206D7;
 Tue,  5 May 2020 11:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588677030;
 bh=GczSjg2mY+zVUBwyK+x5JROwfYQz7w+f1HqDD4SgsRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OCwki1USRAmdS8aGyCPfJLL9E0Xi+2JLTACEEI3+u+VJjiE0S1JA2cFDtoV+JBCFM
 6aaBfjDN/9N1JrYxckDC1PQ9cxInamd/QsLMvCTI4Dp4PZTOy+JUXzMkDjcroWR8PE
 F/61FnIJ3qm1kmp5PKmLOZtQccMbeD6Mk8Pxi2X4=
Date: Tue, 5 May 2020 13:10:28 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: sean.wang@mediatek.com
Subject: Re: [PATCH v3] tty: serial: don't do termios for BTIF
Message-ID: <20200505111028.GA114206@kroah.com>
References: <cc41ea10be9ab96568f0371784e3b9f8d9f434b9.1587577548.git.sean.wang@mediatek.com>
 <20200422180900.GA3454664@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422180900.GA3454664@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_041032_021323_1C57F9B8 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andriy.shevchenko@linux.intel.com, Steven Liu <steven.liu@mediatek.com>,
 arnd@arndb.de, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, linux-mediatek@lists.infradead.org,
 tthayer@opensource.altera.com, linux-serial@vger.kernel.org, jslaby@suse.com,
 matthias.bgg@gmail.com, sr@denx.de, mika.westerberg@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 08:09:00PM +0200, Greg KH wrote:
> On Thu, Apr 23, 2020 at 02:02:08AM +0800, sean.wang@mediatek.com wrote:
> > From: Sean Wang <sean.wang@mediatek.com>
> > 
> > Bluetooth Interface (BTIF) is designed dedicatedly for MediaTek SOC with
> > BT in order to be instead of the UART interface between BT module and Host
> > CPU, and not exported to user space to access.
> > 
> > As the UART design, BTIF will be an APB slave and can transmit or receive
> > data by MCU access, but doesn't provide termios function like baudrate and
> > flow control setup.
> 
> Why does it matter?  If the connection isn't exported to userspace, who
> would run those termios functions on the port?

Dropping from my patch queues due to a lack of response, please address
this question when you resend this.

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
