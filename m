Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E38698D99
	for <lists+linux-mediatek@lfdr.de>; Thu, 22 Aug 2019 10:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAYwAD1ShPvDXA3dAdfCheO5IAKrkTjBpOwblIfbqz8=; b=RyAOeZiy3HdCxA
	tcZ8hIPRHrJ+obMSgQts+U9OpN7pgiGLwSv6eJ0smd7TM2aZmCX3XEdDC+pevWc51zIczFUV6NSHz
	NZEm3vEe1IWfH34kR9w/c/faHLuXmjDvKG9IfDmMDtRJuVn6SJwnpeyrk03ICbaF2ectTqfxq2b2t
	8Tecfp+iOyV42odQK1gg/TuBy5awQ+x5YRJnBi4OwoyUch7aGuxT+qCWQIErClwNM6fvtYivMxXOO
	9vJ3orneSsDHLaPUdpsZREFKC6S0Nfak3ShyT6vYi4Od+0AJi7Xm/8Qb3A1OGH03Oy0RaFwiPVt63
	WyTgted+IPMQgVMUfi6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0iPD-0005Yj-JE; Thu, 22 Aug 2019 08:25:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0iOt-0004iX-Dw; Thu, 22 Aug 2019 08:24:56 +0000
X-UUID: db7347df3a304c60a47282cea05659bf-20190822
X-UUID: db7347df3a304c60a47282cea05659bf-20190822
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1354641855; Thu, 22 Aug 2019 00:24:41 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 01:24:38 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 16:24:35 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 16:24:35 +0800
Message-ID: <1566462278.26641.1.camel@mtksdaap41>
Subject: Re: [PATCH RESEND] i2c: mediatek: disable zero-length transfers for
 mt8183
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 22 Aug 2019 16:24:38 +0800
In-Reply-To: <20190822055737.142384-1-hsinyi@chromium.org>
References: <20190822055737.142384-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CDD14A64F1E5A4DF5E573825EDBC482C6C80C91A52820B01E0AE08A9F54881602000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_012455_566352_901D85B5 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Qii Wang <qii.wang@mediatek.com>,
 Alexandru M Stan <amstan@chromium.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jun Gao <jun.gao@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 13:57 +0800, Hsin-Yi Wang wrote:
> When doing i2cdetect quick write mode, we would get transfer
> error ENOMEM, and i2cdetect shows there's no device at the address.
> Quoting from mt8183 datasheet, the number of transfers to be
> transferred in one transaction should be set to bigger than 1,
> so we should forbid zero-length transfer and update functionality.


<...>

> @@ -933,8 +942,8 @@ static int mtk_i2c_probe(struct platform_device *pdev)
>  	i2c->dev = &pdev->dev;
>  	i2c->adap.dev.parent = &pdev->dev;
>  	i2c->adap.owner = THIS_MODULE;
> -	i2c->adap.algo = &mtk_i2c_algorithm;
>  	i2c->adap.quirks = i2c->dev_comp->quirks;
> +	i2c->adap.algo = &mtk_i2c_algorithm;
>  	i2c->adap.timeout = 2 * HZ;
>  	i2c->adap.retries = 1;
>  

Why do you need to change this part?

Joe.C




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
