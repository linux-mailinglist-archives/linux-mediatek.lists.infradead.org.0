Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A31118CE0
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 16:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=soYKEc2equc7pBkpnbxI/GPTNzbQaHkNAZjF446mEbw=; b=A3hrUXRjMsbZyW
	Qu3zdOgvWCnscD5JVWNbp3IHEQ/QwSBaGmHm6kCDR5qTAYxCHnqrARoBSWQTPx+/yRKoaxj61yYTH
	qV3gUXH+0rkD3o6bWQdoGG6/ffwoq1ptHZcwMEtTBuGNzk19Q2zAG/T4DcdROt9svmhBvUm8FTv49
	MorkrUdYqw43XtECBUc03LiuiiNcV3h6gHGX4j6eoL+gV4mw+Q25lpLC3YNFxVEypJENzMO+YnigG
	vMUDIkhcCNcLYW3kDNShz8jfYaolp9nxj2xkB/r2ufcr8iP9F+MSbOHTyrf5exoYPi9w9+6PnDSV4
	T5Ts5U5Eq67D1dD6UTBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehhR-0007vm-1t; Tue, 10 Dec 2019 15:45:21 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehhD-00072c-5O; Tue, 10 Dec 2019 15:45:08 +0000
Received: from localhost (136.112.broadband15.iol.cz [90.182.112.136])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 7565810000F;
 Tue, 10 Dec 2019 15:44:59 +0000 (UTC)
Date: Tue, 10 Dec 2019 16:44:56 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] rtc: mt6397: drop free_irq of devm_ allocated irq
Message-ID: <20191210154456.GQ1463890@piout.net>
References: <20191113021720.9527-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113021720.9527-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_074507_355548_431AAF43 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, Sean Wang <sean.wang@mediatek.com>,
 kernel-janitors@vger.kernel.org, Hulk Robot <hulkci@huawei.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 13/11/2019 02:17:20+0000, Wei Yongjun wrote:
> The devm_request_threaded_irq function allocates irq that is
> released when a driver detaches. Thus, there is no reason to
> explicitly call free_irq in probe function.
> 
> Fixes: 851b87148aa2 ("rtc: mt6397: improvements of rtc driver")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
Applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
