Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621724C951
	for <lists+linux-mediatek@lfdr.de>; Thu, 20 Jun 2019 10:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejNGdBiv1xNcCAJDchfBCMpYrJlrM4IdXQnGPZ4BK8E=; b=LJhzMtYhyZNzoa
	DuB8wTOFIpkDsHIn0N7vcwCl/OdX4UDUkW5u7xVpH3WLVj18W0mBLQQSxPDueZ95wF3Y/hX6amxQ+
	QmVQ7eVnnj02XiqkT92AZ71bF4V+TyL81Xe5rtQyGgc+Dot06maRASpRTwC3EkTcEadxEdHKjF9+d
	GqeI+C0d81A9bFeiMe4T09AkG8C7twgYZyhFBBXFH3fOUKGMg4Hgg/yAYhHcjlxzmfni+ibF9NMiP
	8q45gU2AaxUk84fAWXu9bOwDaIDKzQRc4DHB9FU3eLyDng1sBBS5YznckXVn84czVyCCH1Ko9f/3g
	SKXXN5MVKaco6yr2ZLRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdsIG-0001br-7C; Thu, 20 Jun 2019 08:19:40 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdsHx-0001Ps-Ko; Thu, 20 Jun 2019 08:19:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 01:19:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="150860357"
Received: from pipin.fi.intel.com (HELO pipin) ([10.237.72.175])
 by orsmga007.jf.intel.com with ESMTP; 20 Jun 2019 01:19:17 -0700
From: Felipe Balbi <felipe.balbi@linux.intel.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH] usb: dwc3: remove unused @lock member of dwc3_ep struct
In-Reply-To: <342af01a252a9ef9457a6a6ec653a40698058fbc.1561018149.git.chunfeng.yun@mediatek.com>
References: <342af01a252a9ef9457a6a6ec653a40698058fbc.1561018149.git.chunfeng.yun@mediatek.com>
Date: Thu, 20 Jun 2019 11:19:16 +0300
Message-ID: <87pnn8brej.fsf@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_011921_698307_6A6E9036 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Hi,

Chunfeng Yun <chunfeng.yun@mediatek.com> writes:

> The member @lock of dwc2_ep struct is only initialized,
> and not used elsewhere, so remove it.
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
>  drivers/usb/dwc3/core.h   | 2 --
>  drivers/usb/dwc3/gadget.c | 2 --
>  2 files changed, 4 deletions(-)
>
> diff --git a/drivers/usb/dwc3/core.h b/drivers/usb/dwc3/core.h
> index f19cbeb01087..72d28cb14bdf 100644
> --- a/drivers/usb/dwc3/core.h
> +++ b/drivers/usb/dwc3/core.h
> @@ -649,7 +649,6 @@ struct dwc3_event_buffer {
>   * @cancelled_list: list of cancelled requests for this endpoint
>   * @pending_list: list of pending requests for this endpoint
>   * @started_list: list of started requests on this endpoint
> - * @lock: spinlock for endpoint request queue traversal
>   * @regs: pointer to first endpoint register
>   * @trb_pool: array of transaction buffers
>   * @trb_pool_dma: dma address of @trb_pool
> @@ -677,7 +676,6 @@ struct dwc3_ep {
>  	struct list_head	pending_list;
>  	struct list_head	started_list;
>  
> -	spinlock_t		lock;
>  	void __iomem		*regs;
>  
>  	struct dwc3_trb		*trb_pool;
> diff --git a/drivers/usb/dwc3/gadget.c b/drivers/usb/dwc3/gadget.c
> index d67655384eb2..7f75da30caba 100644
> --- a/drivers/usb/dwc3/gadget.c
> +++ b/drivers/usb/dwc3/gadget.c
> @@ -2251,8 +2251,6 @@ static int dwc3_gadget_init_endpoint(struct dwc3 *dwc, u8 epnum)
>  		dep->endpoint.comp_desc = NULL;
>  	}
>  
> -	spin_lock_init(&dep->lock);

heh, thanks. This is left-over from when I playing with further
paralelizing the driver. Turned out that there are not enough gains to
justify that work. I'll apply this patch.

-- 
balbi

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
