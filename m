Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6CD830E2
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 13:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ud6aInbY1AG7vm0yXsfSgd8ruVbFvPfWqkugZ98x7hk=; b=b0hci2FXIpvU3M
	4i8CS4NKkFAH1iOEAnpTE6r1rgVbby2XrWSje0a9W0N4lOUcTIYaBbQXQd0ifppd+cFiqzKfSke9d
	67r8eNHFaxNweJZfa6RbbbKcpnVOtInBZc3e+xZT7ymSclBbbQcYo3BG+1OhjB/nvnVk/uTpiT4O1
	1R3oaB7crq/9gl7ovFgHXIobhTRpxNzkTYUDumu9U4W1kwVghekwJGFUTVoVd4XPMcR5Yv6spcowJ
	jsxkxMpLGhy6IpILNzEjM9Cg4FTgeQEDIQwL6HPBdoJlrn4Qcbt34Yd3YzNDob8O6Cy4IW8I4PU91
	As8EqIba8Q1Y3wAqWKfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huxqk-0002gn-Iu; Tue, 06 Aug 2019 11:41:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huxqg-0002gG-UK; Tue, 06 Aug 2019 11:41:52 +0000
X-UUID: 9f2298722b5241ad995a982500137f52-20190806
X-UUID: 9f2298722b5241ad995a982500137f52-20190806
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 411563617; Tue, 06 Aug 2019 03:41:43 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 04:41:42 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs08n1.mediatek.inc
 (172.21.101.55) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 6 Aug 2019 19:41:34 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 6 Aug 2019 19:41:32 +0800
Message-ID: <1565091692.24748.3.camel@mhfsdcap03>
Subject: Re: [PATCH v4 10/10] rtc: Add support for the MediaTek MT6358 RTC
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Date: Tue, 6 Aug 2019 19:41:32 +0800
In-Reply-To: <20190805072338.GB3600@piout.net>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1564982518-32163-11-git-send-email-hsin-hsiung.wang@mediatek.com>
 <20190805072338.GB3600@piout.net>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_044151_267788_8F27F844 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alessandro
 Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org, Richard
 Fontana <rfontana@redhat.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Belloni,

On Mon, 2019-08-05 at 09:23 +0200, Alexandre Belloni wrote:
> Hi,
> 
> The subject should be:
> 
> "rtc: mt6397: Add support for the MediaTek MT6358 RTC"

Will be changed at next patch.

> > +struct mtk_rtc_compatible {
> 
> I would name that struct mtk_rtc_data
> 
> > +	u32			wrtgr_addr;
> 
> and this member should be wrtgr_offset or simply wrtgr.
> 

Will be changed at next patch.

> >  
> > +	of_id = of_match_device(mt6397_rtc_of_match, &pdev->dev);
> > +	if (!of_id) {
> > +		dev_err(&pdev->dev, "Failed to probe of_node\n");
> > +		return -EINVAL;
> 
> This will never happen because probe would not be called if there is no
> match. You could also use of_device_get_match_data to avoid having to
> move the of_device_id table.
> 

Will use of_device_get_match_data() function instead of
of_match_device() function.




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
