Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585721B0C44
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 Apr 2020 15:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WGuuUfE8s84GQYYa/3x/5CofZwgXw/r6ChJ6bTaAziw=; b=up8P/ktkxCSjNg
	YhaPsOkWzlJkd2qk9hQxYH5HOIdtmog+UEXjy+fBReg1nkPUWBvzBIz7ShOjFKlgxdz5whe70eLWd
	Y9TrKwylhltggvQrnA6Mh1WubmY6rCPCGk1m/aej+kbagHTY7XxnSX9hD6KU5xZ/V8KCJm87cYQ+2
	O+O8Po3EIhzXIC1zIf8mPGxC3IXvZIjBcVXykiVEKd8HLdfDQXcuW3nuRZlK5O7sUGh/FY3414R88
	NbPShmE1fn8rvV/7LhviOmah+/uZFoWXehw+mDGI47XFuAaQBvJH75bNUbMuQq5XqOIu66x17EXua
	lVTjp9Qckfsw0zmRfY7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQW92-0000PV-DB; Mon, 20 Apr 2020 13:07:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQW8s-0000Ho-Qx; Mon, 20 Apr 2020 13:07:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C77E2072B;
 Mon, 20 Apr 2020 13:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587388037;
 bh=V75EOkXxVvNKIKgafA+kN9m13NmYbnNqGbRSfqMMzxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m6VCfRs0mzgqJbFAus3P7cNMyRgXyNL66AXmcualloYQ1c2SumxOvsirbPz9NS9DQ
 0bRBVBHOjM+3ulRnV701hxX7zlWgy0RIZtHk9+OVAnG0gzwN7t3mGIz7ZOE73E2f33
 6ik8JoGMO4/6KsyzM9SGnuYXNvZ7oislsAvr8z9k=
Date: Mon, 20 Apr 2020 15:07:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH v2] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
Message-ID: <20200420130715.GA4040736@kroah.com>
References: <20200420124151.4356-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420124151.4356-1-yanaijie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_060718_890112_3C9BDD16 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, nishkadg.linux@gmail.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 08:41:51PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c:223:14-36: WARNING: Use
> correct pointer type argument for sizeof
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

What changed from v1?  Always put that below the --- line.

Please fix up and send a v3.

thanks,

greg k-h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
