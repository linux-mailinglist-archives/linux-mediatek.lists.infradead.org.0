Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15C833D2C
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 04:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdJlAlPRRJ+obxzCisCXR8km8QeCDQg6/i+K5abAfzs=; b=LbemwO16SIR93X
	yLjPuI4CGIZO34IPy23AEK8DjzSs5NeL5jOf3xN9jYS34yxgmHZwox8QIh1HMmqV7nacjytpfceh1
	gjn68NhZlVgLEFUhXF07BZ+zksNPzkRAkfUxG9CYKIRHNxeVLkiL/zq5dGUMj/XUaOf5lrEvgvDjY
	LocTegBJ19DemZ5zBPm6S5ZpyaCkett+E0lyTZarMR0Se7sqJHcNPHWD+LeIFEMPhWjNzrX9YATSm
	9tJ1qGSHTqH4UThkm9oQD/8L0wB/dg9NMv66xhDld4k7tOahzjG2lepw0IvGIfdXwqQaYmkftCpp2
	uqNypnBnHVkuhcp5JB5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXzEa-0001i7-9R; Tue, 04 Jun 2019 02:31:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXzER-0001R9-Pw; Tue, 04 Jun 2019 02:31:25 +0000
X-UUID: ee0d5ad1c587492499dd69305bf88f47-20190603
X-UUID: ee0d5ad1c587492499dd69305bf88f47-20190603
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 633810019; Mon, 03 Jun 2019 18:31:10 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 19:31:09 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 4 Jun 2019 10:31:06 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 10:31:06 +0800
Message-ID: <1559615466.24897.106.camel@mhfsdcap03>
Subject: RE: [v2, PATCH 3/4] net: stmmac: modify default value of tx-frames
From: biao huang <biao.huang@mediatek.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Date: Tue, 4 Jun 2019 10:31:06 +0800
In-Reply-To: <78EB27739596EE489E55E81C33FEC33A0B93B6DF@DE02WEMBXB.internal.synopsys.com>
References: <1559527086-7227-1-git-send-email-biao.huang@mediatek.com>
 <1559527086-7227-4-git-send-email-biao.huang@mediatek.com>
 <78EB27739596EE489E55E81C33FEC33A0B93B6DF@DE02WEMBXB.internal.synopsys.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_193123_855250_6027AEEF 
X-CRM114-Status: GOOD (  13.67  )
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "jianguo.zhang@mediatek.com" <jianguo.zhang@mediatek.com>, Alexandre
 Torgue <alexandre.torgue@st.com>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-06-03 at 11:40 +0000, Jose Abreu wrote:
> From: Biao Huang <biao.huang@mediatek.com>
> 
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
> I'm not sure if this is the right approach ... What's the timeout value 
> you have for TX Timestamp ?
I use the default tx_timestamp_timeout value 1, which represents 1ms.
do you try ptp4l on your side?

performance test is done in https://lkml.org/lkml/2019/5/30/1617
and seems no performance degradation.

> 
> Thanks,
> Jose Miguel Abreu



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
