Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E8D1F7941
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jun 2020 16:02:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DeMsv5dfNhii5KJrPcAa8P+N/ivbivId2breCOYoUkk=; b=r22Ut3afN5ovBI
	+6hNCHfHC4M8sYyw3Fgx2KIg5bss6qi0Y/GiyR4SYSyN/qfes6Sqb05XSdEbXu0mm7FDtXiqLMU49
	SZ6tQVRCNDYNderiueYZxZz9baTTkTEu5/l3koGeT7gYbEqRzvSKyfhy934l7Z4xFIQPt0raxZtUA
	ukUF3R4/yHEnjQW8YwNpNLJTWzgJRXyukmO0I70HK7vPdLzramX1y5zeHyqu8peNydeGtb2gKU/Yt
	c4/qZbMSlQUihUP/h8pjfAdccqY7lIoDn/bNeUdLu6rUPE2fJHMFO61N8iHGf7eRBDg5XSn4hyg89
	3JFfAV3SWegLmGe0xGWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkGN-00038w-NF; Fri, 12 Jun 2020 14:02:31 +0000
Received: from netrider.rowland.org ([192.131.102.5])
 by bombadil.infradead.org with smtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkGD-00030c-SM
 for linux-mediatek@lists.infradead.org; Fri, 12 Jun 2020 14:02:23 +0000
Received: (qmail 13466 invoked by uid 1000); 12 Jun 2020 10:02:11 -0400
Date: Fri, 12 Jun 2020 10:02:11 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH] usb: replace hardcoded maximum usb string length by
 definition
Message-ID: <20200612140211.GA12639@rowland.harvard.edu>
References: <y>
 <1591939967-29943-1-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591939967-29943-1-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_070222_056991_AA9EF78B 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.131.102.5 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Jim Lin <jilin@nvidia.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Siqi Lin <siqilin@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 01:32:47PM +0800, Macpaul Lin wrote:
> Replace hardcoded maximum usb string length (126 bytes) by definition
> "MAX_USB_STRING_LEN".
> 
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>

...

> diff --git a/include/linux/usb.h b/include/linux/usb.h
> index 9f3c721..df4a9cb 100644
> --- a/include/linux/usb.h
> +++ b/include/linux/usb.h
> @@ -1815,6 +1815,8 @@ static inline int usb_get_ptm_status(struct usb_device *dev, void *data)
>  		0, data);
>  }
>  
> +/* USB String descriptors can contain at most 126 characters. */
> +#define MAX_USB_STRING_LEN	126

This definition belongs in include/uapi/linux/usb/ch9.h (near the 
definition of struct usb_string_descriptor) because it is part of the USB 
standard rather than specific to the Linux USB stack.

Alan Stern

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
