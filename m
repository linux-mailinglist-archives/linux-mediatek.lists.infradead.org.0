Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86D611430E
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Dec 2019 15:53:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlpAsvIbOOkkQxMlmKRQAONxDBv5zXzLenNE4P1A304=; b=UB4FGibBZf3FiQ
	r038dnfQWoV/OzdUeRHpWSKRYbuYrgIWhNIRMIq94rwt3UsPKZ79RRd/4CvY35ZxGW6uyS84I6EqG
	m6BN9Qzlw2GaQazasHYrklXlXqWUNgnrWJfsN1lUNNijEtcDWGWmUXxLgX4w3kwQNvr22IxjpyPKw
	Uw718kpOTW0Elmz+kDbg8gK6yeWBVKT3hVUKwCNl6gdS6wy1Q8ksvDg/AAXerRe3mFYYehmhJuF1x
	ZS2uz+/WvzeHTqLQKi3/woC18T6utX6IHiwPFJtTQ8KQJP44u2P3n1JNklpJgPu5IYyK499mCUuHB
	/W7tKtsr1f0fUXaTgwJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icsVI-0006KZ-8h; Thu, 05 Dec 2019 14:53:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icsVA-0006Ja-42; Thu, 05 Dec 2019 14:53:15 +0000
X-UUID: 624c926ad03e42338fbcbf24591d192c-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=6kQKQGw6gLI7hXnDOfChEvohmSGc02ZjJsmKqHdzu6I=; 
 b=uCB06N5np6GGST9drgN1p/HxUt6ZwSW8hGcye0dW3wJIudqWGxtT4pVOKfNvApRrJSu+O4+UQlf/7NOOGycpKI1iUPERlgpxReUIQHHSi3XNWWJPfCI+/NCJ3ErKwUfOmMj4uWtZkTe+rlQbzC23NuygH79pa/hi0fybRaDVfq8=;
X-UUID: 624c926ad03e42338fbcbf24591d192c-20191205
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 42646221; Thu, 05 Dec 2019 06:53:01 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 06:53:47 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 22:52:46 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Dec 2019 22:52:25 +0800
Message-ID: <1575557578.6727.2.camel@mtkswgap22>
Subject: Re: [PATCH] usb: musb: replace all unsigned data type to unsigned int
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Date: Thu, 5 Dec 2019 22:52:58 +0800
In-Reply-To: <20191205101216.GC1337@shell.armlinux.org.uk>
References: <1575525677-20760-1-git-send-email-macpaul.lin@mediatek.com>
 <20191205101216.GC1337@shell.armlinux.org.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_065311_218854_736A5916 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Chen-Yu
 Tsai <wens@csie.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-omap@vger.kernel.org,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-12-05 at 10:12 +0000, Russell King - ARM Linux admin wrote:
> On Thu, Dec 05, 2019 at 02:01:17PM +0800, Macpaul Lin wrote:
> > Simply replace all 'unsigned' data type in musb driver to
> > 'unsigned int' because it has been complained by gerrit
> > checkpatch service.
> 
> "unsigned" is perfectly legal standard C.  The policy for net related
> code is to abhor it, but there is nothing in the kernel style
> guidelines that prevents its use in the rest of the kernel.
> 
> AFAICS there is no need for this churn.

Thanks for your reply.
I'll bring this suggestion back to our internal checkpatch.pl owners to
align with kernel's rules.

Regards,
Macpaul Lin
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
