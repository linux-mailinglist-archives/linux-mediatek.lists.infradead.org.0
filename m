Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DA6FD6DAD
	for <lists+linux-mediatek@lfdr.de>; Tue, 15 Oct 2019 05:25:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uhcx6vbTxuSoU2r6/vGdytNBX8YG331YiXGDPaP131I=; b=EzspvhIPmge29i
	CYv+PXpHKkv1hOu6Li008OxF8qTpT5qETrXcN5eGUgwUx/qm0ZvY7TRKaR7m0FG7qLLh816cYP7Og
	8UIZGcIkp1cw31MOab8guXG25Og+XfuN8VhtQF1OqzcGPApU0IDtYWLQ9QMjx2LxaXk+HXr5EmkzB
	VWur1avM4o8vseRJ5kXX3mt3KTQXwCN5NnVOuV12XoA+gxvannzyrzxJFG34R29IGguiIEohP17t5
	gmBeA/f471V/aBExKyXXvqPBwOVGE9XZSF7itFCorSmLJKxJLbXmzyfyOkXr3V32U4ZEFgnm04n+u
	ZYyXOmwgeuWOFUxBqQ6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDSo-00065M-V9; Tue, 15 Oct 2019 03:25:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDSI-0004Le-GP; Tue, 15 Oct 2019 03:25:03 +0000
X-UUID: a6e9859392074619a586084d61a5adc8-20191014
X-UUID: a6e9859392074619a586084d61a5adc8-20191014
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1044008366; Mon, 14 Oct 2019 19:24:50 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 14 Oct 2019 20:24:55 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 15 Oct 2019 11:24:45 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 15 Oct 2019 11:24:45 +0800
From: Biao Huang <biao.huang@mediatek.com>
To: <davem@davemloft.net>, Jose Abreu <joabreu@synopsys.com>, <andrew@lunn.ch>
Subject: [v2,
 PATCH 0/1] net: stmmac: disable/enable ptp_ref_clk in suspend/resume
 flow
Date: Tue, 15 Oct 2019 11:24:43 +0800
Message-ID: <20191015032444.15145-1-biao.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: CC6E8CD566D83072A794819F506A48A0A2C08C4DFDCF94BFA6A02093CC44E1072000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_202502_590499_A06509F5 
X-CRM114-Status: UNSURE (   5.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: jianguo.zhang@mediatek.com, jakub.kicinski@netronome.com,
 Alexandre Torgue <alexandre.torgue@st.com>, boon.leong.ong@intel.com,
 biao.huang@mediatek.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

changes in v2:
        1. add Fixes in commit message
        2. replace clk_disable/clk_enable with clk_disable_unprepare/clk_prepare_enable
        to ensure the source pll can be closed/open in suspend/resume for power saving.

Biao Huang (1):
  net: stmmac: disable/enable ptp_ref_clk in suspend/resume flow

 drivers/net/ethernet/stmicro/stmmac/stmmac_main.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

--
2.18.0



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
