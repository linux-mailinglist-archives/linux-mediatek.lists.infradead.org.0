Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A808AC34B1
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 14:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZVaqiD/UTdc3gYmjdKykJmXIWghCbTmWsHUXaZEitHc=; b=qTQi7ckqfi7p4D
	KafpcKMoC0//PbI4LoOMFzBUzTukVPThiFXD1OCbZoSiS9/n3HFYWCozz5xWrr8xv0RwaQ1RTchCS
	KczbEK0pzPsrfRVimOFoWnRh3Lf2Yti7IiL/B+xRPaX5kRW2pm2OzF5IVSFGp7xnAklWrODEPR0df
	hRhwJcX0C94Sq7ee5Cj7JIfNNT0Oe2xTxWxuj9eXL6T+P0cD3u2Xyk918CHHrDT1je6ogtTs6F2QN
	kyRZ5B8hAdTkwwnY7mwOpzKFhCQBIajLiJstxIWAA9wK56dSvgGPWcrmv7XZYpl23noTICmVBnFjE
	YLJcflG0PnQRfji5fDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHYy-0002ht-G3; Tue, 01 Oct 2019 12:47:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHYv-0002h2-Ow; Tue, 01 Oct 2019 12:47:30 +0000
X-UUID: 4b04d181ceec482e9f7e61e62b72237d-20191001
X-UUID: 4b04d181ceec482e9f7e61e62b72237d-20191001
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1643949194; Tue, 01 Oct 2019 04:47:22 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 05:47:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 20:32:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 1 Oct 2019 20:32:17 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Felix Fietkau
 <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH net 0/2] Update MT7629 to support PHYLINK API
Date: Tue, 1 Oct 2019 20:31:48 +0800
Message-ID: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_054729_818608_B6E7906D 
X-CRM114-Status: UNSURE (   7.15  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rene van Dorst <opensource@vdorst.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, MarkLee <Mark-MC.Lee@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch target to update mt7629 eth driver and dts to
support PHYLINK API

MarkLee (2):
  net: ethernet: mediatek: Fix MT7629 missing GMII mode support
  arm: dts: mediatek: Fix mt7629 dts to reflect the latest dt-binding

 arch/arm/boot/dts/mt7629-rfb.dts            | 13 ++++++++++++-
 arch/arm/boot/dts/mt7629.dtsi               |  2 --
 drivers/net/ethernet/mediatek/mtk_eth_soc.c |  1 +
 3 files changed, 13 insertions(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
