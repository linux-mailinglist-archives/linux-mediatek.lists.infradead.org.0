Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D6CC30654
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 03:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/8z2p5wx9Sr/DbFhdpoMRAyEEfTMzAQUXZpwggV2xY=; b=fkqLfii3YcrU/2
	u0Nu0CgXf7C+rEpOnrMBONMJ4ztB0GWeltZQ4FXiEgfq63GZY8S2azLYe2uD6m4EpsDupVJeknl2n
	/7CKHIkKvbz/y341p0OnEbeZUR7+huZ1eJAecjl2sR5lnIyHv9Bm+gZbpQ6xNdTZHJ2RSx7UkylIl
	eM9Gnz9WIVCIR8DsUxjDLu2ZJ634hTiw0Ouj/sByePY4yTjXrWXewR5G5PjPEMnhGgHULjkq7y7lX
	Y45NYl6b1kwiDNdlxj9oTmL4gjdcEKPS9UzPWd6pp3PlSgWLawnDtxRUERV1iCcJ5jg+c9I4y+KHb
	XEb13NCJr3ln2WeioNdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWWdQ-0004xG-9H; Fri, 31 May 2019 01:47:08 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWWdG-0004pw-RW; Fri, 31 May 2019 01:47:00 +0000
X-UUID: 726f1a2cec2148c09159fd76816d5645-20190530
X-UUID: 726f1a2cec2148c09159fd76816d5645-20190530
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 324067444; Thu, 30 May 2019 17:46:54 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 18:46:52 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 31 May 2019 09:46:47 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 31 May 2019 09:46:44 +0800
Message-ID: <1559267203.24897.101.camel@mhfsdcap03>
Subject: Re: [PATCH 3/4] net: stmmac: modify default value of tx-frames
From: biao huang <biao.huang@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>, Jose Abreu <joabreu@synopsys.com>
Date: Fri, 31 May 2019 09:46:43 +0800
In-Reply-To: <20190530125832.GB22727@lunn.ch>
References: <1559206484-1825-1-git-send-email-biao.huang@mediatek.com>
 <1559206484-1825-4-git-send-email-biao.huang@mediatek.com>
 <20190530125832.GB22727@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_184658_890286_C7B048BF 
X-CRM114-Status: GOOD (  15.40  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: jianguo.zhang@mediatek.com, Alexandre Torgue <alexandre.torgue@st.com>,
 boon.leong.ong@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andrew,

On Thu, 2019-05-30 at 14:58 +0200, Andrew Lunn wrote:
> On Thu, May 30, 2019 at 04:54:43PM +0800, Biao Huang wrote:
> > the default value of tx-frames is 25, it's too late when
> > passing tstamp to stack, then the ptp4l will fail:
> > 
> > ptp4l -i eth0 -f gPTP.cfg -m
> > ptp4l: selected /dev/ptp0 as PTP clock
> > ptp4l: port 1: INITIALIZING to LISTENING on INITIALIZE
> > ptp4l: port 0: INITIALIZING to LISTENING on INITIALIZE
> > ptp4l: port 1: link up
> > ptp4l: timed out while polling for tx timestamp
> > ptp4l: increasing tx_timestamp_timeout may correct this issue,
> >        but it is likely caused by a driver bug
> > ptp4l: port 1: send peer delay response failed
> > ptp4l: port 1: LISTENING to FAULTY on FAULT_DETECTED (FT_UNSPECIFIED)
> > 
> > ptp4l tests pass when changing the tx-frames from 25 to 1 with
> > ethtool -C option.
> > It should be fine to set tx-frames default value to 1, so ptp4l will pass
> > by default.
> 
> Hi Biao
> 
> What does this do to the number of interrupts? Do we get 25 times more
> interrupts? Have you done any performance tests to see if this causes
> performance regressions?
Yes, it seems tx-frames=25 can reduce interrupts.
But the tx interrupt is handled in napi now, which will disable/enable
tx interrupts at the beginning/ending of napi flow.

Here is the test result on our platform:
		tx-frames=1		tx-frames=25		
irq number	478514			393750	
performance	904Mbits/sec		902Mbits/sec

commands for test:
	"cat /proc/interrupts | grep eth0"
	"iperf3 -c ipaddress -w 256K -t 60"

Thanks to napi, the interrupts will not grow 25 times more(almost the
same level), and no obvious performance degradation.

Is there anybody can double check the performance with tx-frames = 0 or
25?
> 
> 	    Andrew
Thanks.
Biao



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
