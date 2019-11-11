Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F274DF6EBB
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 Nov 2019 07:52:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RYdY6Aj5GHEkH0VVQa8tmrRhb3jssv+LCGiPevrmAzQ=; b=JiFpvWlW9xpDwF
	8FZBSXhNW2+grmmgp4B68FE3ey1MISDGN5+njUjabhOKv0xKVNK0G56kfqqV2jd7RBqr6P002U5Bq
	PF5rfIpvtz1ofWG9UbbC/5iqLMs9bjnwBX8aqlKBsRCbgZjrzLRkM7qtRuBox8q3eLn4fSHa0CEbA
	l8dvM8NgL+WLlaiS9CbaDgYK2buiQ3s55GiB3y/tZdJZ+d8MVsHnmnu/HbyEM8JKrWNIN/7IQTKzr
	cXv4gdfhJAYDaCBnNYAXcuvZX1ZqD1IufnfcXOWwFU72AIa33Tb3EagjV3Zqql3YPlUas1KJsh4T9
	duY6cd26mVZy/08w2h/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU3Yk-0000n7-GR; Mon, 11 Nov 2019 06:52:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU3Y4-0008Ow-2t; Mon, 11 Nov 2019 06:51:42 +0000
X-UUID: 8a2e8b24864049688528a5fcd39d0afb-20191110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=1NPMi5s0B7PLycleggl/Ct6ul55hyyE2HzaKv33AkXA=; 
 b=bdaC+/gnZss0+iInHREM2o3C5rYGGqZF+oGjr1dM2Oc7D0RQKQtaYaT2wV1DMQ123uYe5OJWYbF4Vxu3K4GdZXcidCXOjjms+uCuunJ5BpN8HVeOTOapb0RJwpflWxtbAmcQ+PKThxOZ7atyI1m8sQW1avidVo7UgW/zVfutN8s=;
X-UUID: 8a2e8b24864049688528a5fcd39d0afb-20191110
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 827488120; Sun, 10 Nov 2019 22:51:40 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 10 Nov 2019 22:51:29 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 11 Nov 2019 14:51:28 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 11 Nov 2019 14:51:28 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH net,v2 0/3]  Rework mt762x GDM setup flow
Date: Mon, 11 Nov 2019 14:51:26 +0800
Message-ID: <20191111065129.30078-1-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_225140_126736_7F743983 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org, Jakub
 Kicinski <jakub.kicinski@netronome.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rene van Dorst <opensource@vdorst.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 MarkLee <Mark-MC.Lee@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The mt762x GDM block is mainly used to setup the HW internal
rx path from GMAC to RX DMA engine(PDMA) and the packet
switching engine(PSE) is responsed to do the data forward
following the GDM configuration.

This patch set have three goals :

1. Integrate GDM/PSE setup operations into single function "mtk_gdm_config"

2. Refine the timing of GDM/PSE setup, move it from mtk_hw_init 
   to mtk_open

3. Enable GDM GDMA_DROP_ALL mode to drop all packet during the 
   stop operation

MarkLee (3):
  net: ethernet: mediatek: Integrate GDM/PSE setup operations
  net: ethernet: mediatek: Refine the timing of GDM/PSE setup
  net: ethernet: mediatek: Enable GDM GDMA_DROP_ALL mode

 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 44 ++++++++++++++-------
 drivers/net/ethernet/mediatek/mtk_eth_soc.h |  2 +
 2 files changed, 31 insertions(+), 15 deletions(-)

-- 
2.17.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
