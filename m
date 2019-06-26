Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47A0D55D79
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 03:29:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9BgUk9QasJkBnSHi5EwZDL21hBW6Tf+fzrGjeN0/V0=; b=ut05AzdyoIkBKx
	NOd0hYYPMETqCLjHZlCJr5ok7bULcimP3WNHk8vrNSAlkfUZ2AIE8qgbFGWKMddmjAqoDZtOOj5Z3
	pkbl/5as2hbxunNbmVzywNtHdD3TH4CMaVhzimWCFN8QJ4a24CLN8GCMfYElPmzqrYhEW7zJde2bE
	yC+hMCxtZdOngTuxTaCEWvG6wHed7HCTr4npJDkEUGVQ9K+ThFJRSXUJRiUry61cf5JX6n9WeLZfF
	vgmmMdoMGd6R6TW2ARVef0YKBZjeQ3Hvac3/Cgy7lC7Xzl+WAOuxjQMFkEZL/bt7KRKFqu99Oomh5
	4NEHzfZnKXPNAVQxDIiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwke-0005B0-AI; Wed, 26 Jun 2019 01:29:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwk9-0004w9-OR; Wed, 26 Jun 2019 01:29:02 +0000
X-UUID: f16b0f892b004f428830aba5be6cd0e5-20190625
X-UUID: f16b0f892b004f428830aba5be6cd0e5-20190625
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1998965117; Tue, 25 Jun 2019 17:28:50 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 18:28:48 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Jun 2019 09:28:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Jun 2019 09:28:47 +0800
Message-ID: <1561512527.24282.13.camel@mtksdaap41>
Subject: Re: [PATCH v2] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Wed, 26 Jun 2019 09:28:47 +0800
In-Reply-To: <20190625221512.B691620883@mail.kernel.org>
References: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
 <20190625221512.B691620883@mail.kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_182901_799797_851A9054 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, Rob Herring <robh@kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Fan Chen <fan.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-25 at 15:15 -0700, Stephen Boyd wrote:
> Quoting Weiyi Lu (2019-06-09 19:16:09)
> > The 13MHz clock should be registered before clocksource driver is
> > initialized. Use CLK_OF_DECLARE_DRIVER() to guarantee.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> 
> Do you have a Fixes: tag in mind? Otherwise, the patch looks OK to me.

Yes, Fixes: acddfc2c261b ("clk: mediatek: Add MT8183 clock support")
but I forgot to have it in the commit message. Thanks for reminding.
I'll update a V3 patch with Fixes tag. Many thanks. 

> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
