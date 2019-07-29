Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F485792E9
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Jul 2019 20:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sCvLmk0x3DdAE3+s32Q2DUeFMxd/j18N6ri7A6GG4Nk=; b=SD6XBJeELte53BpUZad8AmwCe
	CPxkiNhsGP0HVO9DLECZ/r8HoKRXTx6fd55L8O2pNGiyS+Zd+g6zweJiy2A2Q2FL6daJqJ9Af6qrk
	8OZiZlHVQeFG76c745FOt9OB6PsItDbZdCkIRuwDf8FH+8NMFgjyO+lvgtH1DuJEYGHdix6r4LuoF
	x0h2ehl5K9o/ixTTZTwPRhoccxLTZoBoG5qbeAu0oA99nPT31y0FvM/vRruNFcsIjHk7dLwBZQa0N
	k6VEwCzrytrmS+WCZBENmZ1CggqFpGbCbH7nUyp3DsMHeH6yyRe2eCJkRRIoPjFdncB3W3HgB2HxS
	OI1cdgKsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsACR-0003kG-Pi; Mon, 29 Jul 2019 18:16:43 +0000
Received: from mxout1.routing.net ([2a03:2900:1:a::a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAC4-0003XP-4I; Mon, 29 Jul 2019 18:16:21 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id C9DC743E4E;
 Mon, 29 Jul 2019 18:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=dkim; t=1564424174; h=from:from:sender:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HP6trMB9va7UVgbWclPeNJtnCBo+M1pqC/xaYjKxvj8=;
 b=sm+KrCEUw+eAxXAsg/LcgF3MQTCbRVLNqKsuxtH5m8fYpSZWdaXQCQ/KPJ7vK5JYq1JR8F
 oBeNmeY7VC5uTNpp+UVWvnXAu8LjpojxVF3JwQWgv7ieQg5e+fWpX/2UdpF/MvEyliNoiW
 r1m9nL5PR+zxy0ff3ItRqhSzBj5pNiE=
Received: from [192.168.0.21] (fttx-pool-185.76.97.79.bambit.de [185.76.97.79])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 7DC8D405D3;
 Mon, 29 Jul 2019 20:16:13 +0200 (CEST)
Subject: Re: [PATCH v3 00/10] implement poweroff for mt6323 / bpi-r2
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>, "David S. Miller"
 <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>, Lee Jones
 <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
References: <20190729174154.4335-1-frank-w@public-files.de>
From: Frank Wunderlich <frank@fw-web.de>
Message-ID: <e1274024-b67c-3d04-50d3-f6fcd3b3cbe6@fw-web.de>
Date: Mon, 29 Jul 2019 20:16:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729174154.4335-1-frank-w@public-files.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_111620_480663_3DD1AD8C 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi,

sorry about missing part 9+10, my mail-provider blocks the mails, 
currently i cannot send with this account

i try sending with another

regards Frank

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
