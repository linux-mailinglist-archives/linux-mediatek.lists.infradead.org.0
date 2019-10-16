Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D67BDA23B
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 01:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9UYCHJ3vcjRgczoB/pQbof2eMIt9Qp53L814XGkpLok=; b=OdcMVRRNZG0RlQ
	yStbG9310O3EdXJJDfmAYJkMHlhRsi/tBqsH5u0T8mg4MAITvk320Y2mMnysdHA1ucdyjhe70jAjv
	GV3ErFKl8AqKij8rGsB2baa3z+25qZqYtvM6p1sKiv0PNzW/ogME/812adEb3jaUIq8Zl9AIU44pu
	h25ilciuEn9fIY5KDL964MheQ41qI7FcbFIUaCX2hQD9pmAZsaqe+NfjndxzoodU8DmxvUxPFZXe2
	K96jf68xP/qowjclq+4iIoLviViC0W1oQ9Xeq7RFXMHM8iTD2oRDJLPsnYTpMi4qGrGgYRJHsn5UN
	lrsEJ0kHWWB6qzt/Hfog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKsn9-0008Sb-Pm; Wed, 16 Oct 2019 23:33:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsmu-0008JK-T2; Wed, 16 Oct 2019 23:33:06 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6412021848;
 Wed, 16 Oct 2019 23:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571268784;
 bh=yKZA28VupFXGJGczBrHMfsO5Qz+1b9EGWTi5JKgy5OI=;
 h=In-Reply-To:References:From:To:Cc:Subject:Date:From;
 b=gF4CxFs/YB1FdPLWmk8bjHqmeiuu+bFSHOg/aVaSF+XhFt3yuePlTCMN6mCuggo54
 5maUYv3LAJRfTukWboxjp8bxFRWd0w7l67IQQmWNcyHQEiDd7aXpCzuclqMcZM8/cq
 kmJPObeDdcTH4XAKqvZbRjEskSZ9U5heCss/Weds=
MIME-Version: 1.0
In-Reply-To: <20191015112644.19816-1-yuehaibing@huawei.com>
References: <20191015112644.19816-1-yuehaibing@huawei.com>
From: Stephen Boyd <sboyd@kernel.org>
To: allison@lohutok.net, kstewart@linuxfoundation.org, matthias.bgg@gmail.com,
 mturquette@baylibre.com, tglx@linutronix.de, weiyi.lu@mediatek.com,
 yuehaibing@huawei.com
Subject: Re: [PATCH -next] clk: mediatek: mt2712: use
 devm_platform_ioremap_resource() to simplify code
User-Agent: alot/0.8.1
Date: Wed, 16 Oct 2019 16:33:03 -0700
Message-Id: <20191016233304.6412021848@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_163304_958910_B24E2763 
X-CRM114-Status: UNSURE (   5.81  )
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
Cc: linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting YueHaibing (2019-10-15 04:26:44)
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
