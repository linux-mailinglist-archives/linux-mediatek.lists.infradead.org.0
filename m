Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF092920C
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 09:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEACM3CJW06Rsw/4SgO9d/OZ2GB80ADA8fAPqY1Y6+I=; b=AXsu/1PqgohLEO
	TqBHGAq9lbm3yclDzH1z7gypBxS97ETUHXJ1j77Bdqr+uKOdQuxhvH8ra6wglV2v9MiNALdcEfVnc
	Q+mmJm9JUCETFYiYWwFwrt/pNiMZSMlpsC1y1yx0dP9QjH6aIeMGza/00gGznad8ECvICHU7XCbIL
	f2rULeJ4EnI+pRbSbnhDHqntCfj0R7k8fVVP2to6pIMTi1F0MFG7G82TCHaKhRl/hzbIBKxnNmWdg
	RVJpAYMOk67DAi6dJombfSUEqHyWfRtL3/k8KE3EkQ3uwITVYZgt3G9ed3S+4pnZcDyPBITFOi6B9
	Pbzuu7RS14tTfh6MVxDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4tw-0006uO-As; Fri, 24 May 2019 07:46:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4tn-0006kn-7m; Fri, 24 May 2019 07:45:56 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F2B0D217F9;
 Fri, 24 May 2019 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558683954;
 bh=ObrvGpPLiHEvyPviS1L6MjtoBDnP+praLC5ukqMFU0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EUN9fDVX77IBJUkCIzY9sNbVP5n/uaDGltIbrw7RwF72ifujn+NUZ3fD5lGSp2vF3
 ES8/uxnuMieLrmdE953JA4Aznd29rvq5GXNIemu2kQtvCEi6Rilck3U7Ab+62zbQ+W
 6H23cbY3lGz9eJcBK+CbpAf6HrBR8eMoOGFxBtfs=
Date: Fri, 24 May 2019 09:45:52 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [RESEND PATCH] usb: mtu3: fix up undefined reference to
 usb_debug_root
Message-ID: <20190524074552.GA1080@kroah.com>
References: <ee71197a681165aa72cb73c7f6cb402953351805.1558678075.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ee71197a681165aa72cb73c7f6cb402953351805.1558678075.git.chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_004555_294234_402C2192 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: linux-usb@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 02:11:33PM +0800, Chunfeng Yun wrote:
> When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> there is an issue:
> 
> ld:
> drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> 
> usb_debug_root is only built when CONFIG_USB is enabled, so here drop it
> and use NULL instead.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Acked-by: Randy Dunlap <rdunlap@infradead.org>
> ---
>  drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Why resend?

> diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
> index 62c57ddc554e..b7c86ccd50b4 100644
> --- a/drivers/usb/mtu3/mtu3_debugfs.c
> +++ b/drivers/usb/mtu3/mtu3_debugfs.c
> @@ -528,8 +528,7 @@ void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
>  
>  void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
>  {
> -	ssusb->dbgfs_root =
> -		debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
> +	ssusb->dbgfs_root = debugfs_create_dir(dev_name(ssusb->dev), NULL);

This moves the directory to a new location no matter what the
configuration is. What's wrong with where it is today?  And shoudn't we
create the usb root directory if only gadget is enabled?

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
