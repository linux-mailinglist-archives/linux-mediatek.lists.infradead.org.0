Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F40DA242
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 01:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8OeF4/de+zti1ZFX8rDA3U6qm4pnBEgaCXcREg2LnQ=; b=EPfgFcDcb7o/sA
	QWRKCGsWtJloDuJMlXDOuPiGcuIYgCqB1ojoFvfaSs+8GTP+xl22D+6v03R6+S2XR13kq/r39Q8/H
	qh6+5Ib/f+CygmIoK4efyKUO6WOz7lp1wzEN7Yfo/tlLa5WXezORbBOmMzriUMzFstZF+PAvjzYOR
	UHaRPv3VV2DMwzCuVO1uIlI7ckxZKBchAiXwYmJFHtpaGcBhetpN1WfRQEwHAnuBD8Vfr28SXNZ5/
	dC0AbO/HuwBuVS9zOPRZ9rUaiaF6QMb13x2vXSL6eUgP+Q2ZZbR9iVhsKX4dZpwm7w1FgyoZHVD/c
	ODB+2A11eVRnVMN2fvtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsnZ-0000Mt-S4; Wed, 16 Oct 2019 23:33:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsnE-00007X-F9; Wed, 16 Oct 2019 23:33:28 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBBE121848;
 Wed, 16 Oct 2019 23:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571268804;
 bh=e1UZeiwY2lbbfxx44BPnbP+uIIxBxoVbV2hFkhQyn80=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=GpN2mL9gAVPl8dsDafr3tS21dkA+xKvTc0mGewMa2w0JdNrt1+NZJvBD/371y1tOE
 Y6/i8NNhKYTgy/ncpy1QdZZxzsOzEkyUElDwAIFvjipMxVdiDu7npCQ7NafYpFfjQr
 uxb0qibunv+vYZlLPBYTgvmj0TSgogPi9OzTkYIE=
MIME-Version: 1.0
In-Reply-To: <20191015121035.24736-1-yuehaibing@huawei.com>
References: <20191015121035.24736-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: YueHaibing <yuehaibing@huawei.com>, matthias.bgg@gmail.com,
 mturquette@baylibre.com, wendell.lin@mediatek.com
Subject: Re: [PATCH -next] clk: mediatek: mt6779: use
 devm_platform_ioremap_resource() to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:33:23 -0700
Message-Id: <20191016233323.DBBE121848@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_163324_579288_E0DC6FB8 
X-CRM114-Status: UNSURE (   5.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-15 05:10:35)
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
