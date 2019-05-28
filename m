Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD88A2C0F5
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 10:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+j1YA9SnQy3/AFtZu5NfHFZdcQpr0Uqt2yKIQMcKcc=; b=CdtFl1CuuOsOxX
	uU3AQp+6atnhsHnVDfNZSddwDNGX4adEpgVb3FlU0qllD1trPfZwtLsaO9AlKQe5mwrQcHpV9XiDg
	XuFshlx5zWRI/Cjmt4tDRgx2wn6YXLBBtRASZ9PitTqHfPktSOf/9zf3DinCjspylTZm5kOtcqap0
	oej5SWrpH1COvqdh9ZGIoWzrm7XqoMTa8i6GPHksKspPxZKBbQrtF5jQRfaomlaZLsS0w/PA0Lj+k
	DcdUE5ahaxJvCyG9b0GBncBICQGvNfbeRqlr9wJ58oDaWsi3BuI3e+ZlKksyh4x1SIHMXmJ5K3DU7
	QwwLjKjxG1wsDTxhv/5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXDK-0005qf-8o; Tue, 28 May 2019 08:12:06 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXDB-0005ic-FQ; Tue, 28 May 2019 08:11:58 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 01:11:53 -0700
X-ExtLoop1: 1
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by fmsmga001.fm.intel.com with ESMTP; 28 May 2019 01:11:51 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [v3 PATCH] usb: create usb_debug_root for gadget only
In-Reply-To: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
References: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
Date: Tue, 28 May 2019 11:11:50 +0300
Message-ID: <87k1ebj8vt.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_011157_562871_B4821AEB 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Hi,

Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7fcb9f782931..88b3ee03a12d 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_GPL(usb_debug_root);
>  
>  static void usb_debugfs_init(void)
>  {
> -	usb_debug_root = debugfs_create_dir("usb", NULL);
> +	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
>  	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
>  			    &usbfs_devices_fops);
>  }

might be a better idea to move this to usb common. Then have a function
which can be called by both host and gadget to maybe create the
directory:

static struct dentry *usb_debug_root;

struct dentry *usb_debugfs_init(void)
{
	if (!usb_debug_root)
        	usb_debug_root = debugfs_create_dir("usb", NULL);

	return usb_debug_root;
}


Then usb core would be updated to something like:

static void usb_core_debugfs_init(void)
{
	struct dentry *root = usb_debugfs_init();

	debugfs_create_file("devices", 0444, root, NULL, &usbfs_devices_fops);
}

-- 
balbi

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
