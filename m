Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FC81FED7E
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 10:21:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1QBtqCAG/ZOdL8UT24ylc2mtXMvr2cmBJqNuc8yxLk=; b=hWbikGWIKIbXnO
	JxImuvAKvKJpmkDw+/ZSXUgiiCDcdj963ymHgRIX/rMETRsLlSJdfVw2gX2H+P3PNA/62KTkJxoDM
	xOBdpJ/oo1su2J6xQ6A9mwtuSa0t2HbPI/9FuFdyntrpfvl13F/8e8WUQQrrWy9gFFodFm5WPTF9E
	D8o29rrqqm32JoaODn+3LHQ9LjWTYQkedNTFwy+Ete1jLBfyqH8YVVMv36wYZlgVu5yPFSPwRp8nY
	zrXgj/69P1Icnbvb5XMLqGNpiuJdjemcgpkytcBaq40i1Xrn+p0C9W0KxjpTZCvIhZm5ETrdpviC0
	kMH8NS7U7V+6827Gb0CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlpnU-0000ij-5p; Thu, 18 Jun 2020 08:21:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlpnE-0000XC-22; Thu, 18 Jun 2020 08:21:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D58652166E;
 Thu, 18 Jun 2020 08:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592468462;
 bh=i7/azv2TIyitmWBxI8oESfdLcS5YpjhAKYG10IPi8qM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MwaAHevJxbmGhQOPCng+twAill0hon0Zl/MAunJDD+uOpVJiSgR1DakpD/8Rk/gdA
 +zNVGnTdTaJ3krZC+P0UcO7vSvxwDNyuP3nbD1eyiNmbPuKIoEqXKP0lt86Hp8dVVn
 SJIQd+0mvrThE5z2GK0Vra+yPesqHuK57QAOEEsk=
Date: Thu, 18 Jun 2020 10:20:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH v2] usb: replace hardcode maximum usb string length by
 definition
Message-ID: <20200618082055.GA1049665@kroah.com>
References: <1591939967-29943-1-git-send-email-macpaul.lin@mediatek.com>
 <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592201855-8218-1-git-send-email-macpaul.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_012105_842513_A62F5625 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>, linux-usb@vger.kernel.org,
 Jim Lin <jilin@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Macpaul Lin <macpaul.lin@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Siqi Lin <siqilin@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 02:17:35PM +0800, Macpaul Lin wrote:
> Replace hardcode maximum usb string length (126 bytes) by definition
> "MAX_USB_STRING_LEN".
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
> Changes for v2:
>   - Add definition "MAX_USB_STRING_LEN" in ch9.h instead of in usb.h.
>     Thanks for Alan's suggestion.
> 
>  drivers/usb/gadget/composite.c |    4 ++--
>  drivers/usb/gadget/configfs.c  |    2 +-
>  drivers/usb/gadget/usbstring.c |    4 ++--
>  include/uapi/linux/usb/ch9.h   |    3 +++
>  4 files changed, 8 insertions(+), 5 deletions(-)

This patch fails to apply to my tree (or to 5.8-rc1).  Please rebase it
and resend.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
