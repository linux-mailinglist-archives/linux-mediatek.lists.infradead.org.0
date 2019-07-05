Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD0360970
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jul 2019 17:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:To:
	From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z3vwy2p0+5g+3IjUNYyvGJO0JU6KqoVAY5RNb7OOH8=; b=sYkDD8I4CJCxxi
	EPg861PhqVfe467KAINHqbXypJQIvybx4JT8xMXQQrlgnWxLN96bMeId70VpUyJAT2dAAwDNk07CU
	1Y8TAQG9yamG99szGEEzxNkh48bN9exXMwuStAzoGDVpkedSE2kjjzzXiafBIoWJdfyE22qiQCa8C
	xMc3ACenevNND8BSs/RyX1HpU9JFHD1lshKx6Dd+xBKCh4GUpg0hK6a2hDEP37sNJZ1d4Z29A2p7o
	1pAQSUDQCl3/kvi9xRhg0xh54vW6BREmjzFuZi6G+jFVUYfqiLlKpqJiFPJB3HSp9QUi4BqnYPh9a
	aCg3YoDwK9vzcIaDeBww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQH2-0002vO-VC; Fri, 05 Jul 2019 15:37:20 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQGq-0002lV-RW; Fri, 05 Jul 2019 15:37:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562340946;
 bh=+xG973BWcEz2x94VZcUAPePu5GwCe5fwDn2xc5iFqo0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=N0/iBvJc6HtX2nJ4b7IPEhJQHze0yGnFVfDsrmD7ZCrkY1o/NEmt/GfIh0sEBoPZk
 pUwgP+xFM6zSWbqJykxww7GN6eLJ2skqyA7owjZiCfEOBg042cwWIgn7mjUyrBCEpv
 jE/dN7C0LP0estl9Ivtpd/Id2IV8oTVe4Tp9sxUo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [185.53.41.182] ([185.53.41.182]) by web-mail.gmx.net
 (3c-app-gmx-bs68.server.lan [172.19.170.213]) (via HTTP); Fri, 5 Jul 2019
 17:35:46 +0200
MIME-Version: 1.0
Message-ID: <trinity-7b1977bd-252b-4482-b708-cf704a9d3da1-1562340946396@3c-app-gmx-bs68>
From: "Frank Wunderlich" <frank-w@public-files.de>
To: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
Subject: Aw: Re: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Date: Fri, 5 Jul 2019 17:35:46 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20190704204336.GJ3692@piout.net>
References: <20190703164822.17924-1-frank-w@public-files.de>
 <20190703164822.17924-4-frank-w@public-files.de>
 <20190704204336.GJ3692@piout.net>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:3DQjnrcP0qQkneq0N2KGXDypFxKC70Y6B/6Wz6gG83c+zzU8tPfyJ7R1HE1HqAXh3hB2I
 tgJSbOVBlcwfm2+5WrNhSjWxrIe4AmFQkfXZmEFAprfzxqChBFn9HnyAR9YWrNvCPuG17yU7Op4d
 ugpFGrIo4Tf+JcmINzOK23uQEhN2f8orMVc5A246lEDzSCXmCflOxlZ6PHU1xgJelMk9hVPkR8fZ
 DhVDomXvArd2HR4UT+Ec00/BFdO1KKd8+sxf1crLqLghjGrqQGEuEjQemQPPAcQJzokFsPSPjEgJ
 Ok=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:U5UYnBEkf+0=:lL1CL6XEoZrqJz8T2zwkL5
 4VYvmDYvZ5WzNABcDNBejMTkwRG1c67XpMAnjTSAn1VKRZ87YyW8Fes8PHzncewehLQUqaLue
 LVS2SFGPFzRxC0khTzvlus1KUr5oZY7QijfOK9hocquUSx+iHzpI9TDlAnmWe4UaoMF/42CDH
 WGqzSesYNDhJ7QrAjfxtUFBYbMU6YGR/80HNhJeKizPb9hMhw1PNX2FTuEKhB9AhTNWDwj9jf
 iz2TYEYzFWXqIjVYcbNyIpCk5fhnRvSvMFgGnv8nXdIrk/aesBOoI1tMC5dY47eKVhwcxbF3G
 D+sXhAC/j9gEmrB19oC5cSMkvSvUHyXuG49+ftF/sz8bwRecT//qfKlBN/CWfLF+KTKQ0W48R
 xrcCxWA4aVF7JhOIHm0iuSzma7jniESyMdd9UufoYSt+hBWPgp+BB9+EF6Ufu4+PeO1WxdTxr
 CO5FuMMppqZq0zy35n31R7Y7AqTSK4X0aeIIY0rtWO4BOnrtCnxD4Kxjj93N0FpJ/y3CWdPFE
 r2AHMveJE7FwuKD4IPTmai0ubwLDHQJximoqtKtj7ibjV+W5K1jLBN8QCGyFm+7WaavnB4il9
 jtB6YIWXJrrwvYpdopClbcSNQtobLh8iTwP4OAZnwlQXtwCqyeKBff4O3dDbmq/Ihzy05qfUB
 Zrmc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_083709_223640_1BD8828A 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linus
 Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, Mauro
 Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>, Lee Jones <lee.jones@linaro.org>,
 linux-rtc@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Allison Randal <allison@lohutok.net>, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian
 Reichel <sre@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Alexander,

thank you for the Review

> Gesendet: Donnerstag, 04. Juli 2019 um 22:43 Uhr
> Von: "Alexandre Belloni" <alexandre.belloni@bootlin.com>
> > -	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
> > -	if (IS_ERR(rtc->rtc_dev))
> > -		return PTR_ERR(rtc->rtc_dev);
> > +	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
> > +					mtk_rtc_irq_handler_thread,
> > +					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> > +					"mt6397-rtc", rtc);
> >
>
> This change may lead to a crash and the allocation was intentionally
> placed before the irq request.

i got no crash till now, but i will try to move the allocation before irq-request

> > -	ret = request_threaded_irq(rtc->irq, NULL,
> > -				   mtk_rtc_irq_handler_thread,
> > -				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
> > -				   "mt6397-rtc", rtc);
> >  	if (ret) {
> >  		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
> >  			rtc->irq, ret);
> > @@ -287,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev)
> >
> >  	device_init_wakeup(&pdev->dev, 1);
> >
> > +	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
> > +	if (IS_ERR(rtc->rtc_dev))
> > +		return PTR_ERR(rtc->rtc_dev);
> > +
> >  	rtc->rtc_dev->ops = &mtk_rtc_ops;


> >  static const struct of_device_id mt6397_rtc_of_match[] = {
> > +	{ .compatible = "mediatek,mt6323-rtc", },
>
> Unrelated change, this is not an improvement and must be accompanied by
> a documentation change.

documentation is changed in 1/7 defining this compatible. i called it improvement because existing driver now supports another chip

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
