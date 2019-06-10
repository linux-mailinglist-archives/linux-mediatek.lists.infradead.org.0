Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7313B355
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 12:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l4VerOXG8LyIGcijyyLWuIAAIohfKgVsZNGeHPsrCo8=; b=awdpG71davEGZi
	kdvK3zBpnMI9Xgo4gpCOb0u+51leZ3oDZ8wNWnsSE9vwShWGHKbjBShlnmFVHKbenZ7RBCWAkvKCw
	gE0DBNhxaKc95C+zYrSvl+1EvAKYExOixdlsv+Xj+BworXs7CZbfNTE242X/P3zYKJS3egB+P9BAw
	rcaEx4yurlWhGeuniqO23/7V9/xVedWdT8bB72+J9cFyQecRe+ibZI081Yi99bBjoEvyWuWInC4jp
	nOzO83PFXn4jlyFQAPsaKVsmHnk9anlnpsENnH8+j40EBSFpJfvg1/ebxPePZizknZkLWXUJt0jgI
	zm6nbPa+2oruapAdfSfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHfg-0002mh-54; Mon, 10 Jun 2019 10:37:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHfN-0002Yt-Vt; Mon, 10 Jun 2019 10:36:43 +0000
X-UUID: 0469867210da4811a5e3dbb24ee34949-20190610
X-UUID: 0469867210da4811a5e3dbb24ee34949-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 898115134; Mon, 10 Jun 2019 02:36:36 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 03:36:34 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 18:36:33 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 10 Jun 2019 18:36:33 +0800
From: Neal Liu <neal.liu@mediatek.com>
To: Matt Mackall <mpm@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Wang <sean.wang@kernel.org>
Subject: [PATCH v3 0/3] MediaTek Security random number generator support
Date: Mon, 10 Jun 2019 18:36:21 +0800
Message-ID: <1560162984-26104-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_033642_031151_6ED083A2 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Crystal Guo <Crystal.Guo@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-crypto@vger.kernel.org,
 Neal Liu <neal.liu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

These patch series introduce a generic rng driver for Trustzone
based kernel driver which would like to communicate with ATF
SIP services.

Patch #1 initials SMC fid table for Mediatek SIP interfaces and
adds HWRNG related SMC call.

Patch #2..3 adds mtk-sec-rng kernel driver for Trustzone based SoCs.
For MediaTek SoCs on ARMv8 with TrustZone enabled, peripherals like
entropy sources is not accessible from normal world (linux) and
rather accessible from secure world (ATF/TEE) only. This driver aims
to provide a generic interface to ATF rng service.


changes since v1:
- rename mt67xx-rng to mtk-sec-rng since all MediaTek ARMv8 SoCs
can reuse this driver.
- refine coding style and unnecessary check.

changes since v2:
- remove unused comments.
- remove redundant variable.

Neal Liu (3):
  soc: mediatek: add SMC fid table for SIP interface
  dt-bindings: rng: update bindings for MediaTek ARMv8 SoCs
  hwrng: add mtk-sec-rng driver

 .../devicetree/bindings/rng/mtk-rng.txt       | 15 ++-
 drivers/char/hw_random/Kconfig                | 16 +++
 drivers/char/hw_random/Makefile               |  1 +
 drivers/char/hw_random/mtk-sec-rng.c          | 97 +++++++++++++++++++
 include/linux/soc/mediatek/mtk_sip_svc.h      | 33 +++++++
 5 files changed, 159 insertions(+), 3 deletions(-)
 create mode 100644 drivers/char/hw_random/mtk-sec-rng.c
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
