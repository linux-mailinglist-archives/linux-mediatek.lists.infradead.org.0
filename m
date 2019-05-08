Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4E516FC0
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 05:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MxM3mXgOq55CkeS8Fg5qxd9b5dJN/0COCk58xqXfsCw=; b=gXwu2Ux/4gmbQr
	/0uI2W3fQPajWOyHvMiLTwGOYtRuSHI6mn/2Oz3Rv7lRmT2nZ+XgtiVNf52pxG8SqOAB9dNQ4h5Tb
	IbPmTBzy5r1GJ6h5HvItW3IEro7zoTIrJVjrVCJDloydrxGXa1KoI52Lgwzr8SjYFpxh+sJKgdwCy
	D0hUW++eiEf9tOLX7r9Wcu6glyKbtL+hC1EqzsMMkQrcDDE+PE+ThfLBh4EAAZ8JT0auM7NTqPGTi
	WWCeZUyhvHmspYiOBzAjoEaWsmxTdp+PXf+aKhag40UIuj/jkV4Ppz+oetbEj1nHftPk/vd3tRZCt
	bHTWDX00fzGhRCO7KL+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODjt-0005sW-7J; Wed, 08 May 2019 03:59:29 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODjp-0005s9-HX
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 03:59:26 +0000
X-UUID: b4a90bf577f84bc8bab44cc3f4c29cfe-20190507
X-UUID: b4a90bf577f84bc8bab44cc3f4c29cfe-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1099119179; Tue, 07 May 2019 19:59:21 -0800
Received: from mtkmbs03n2.mediatek.inc (172.21.101.182) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 20:59:20 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs03n2.mediatek.inc (172.21.101.182) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 11:59:17 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 May 2019 11:59:17 +0800
From: <neal.liu@mediatek.com>
To: <mpm@selenic.com>, <herbert@gondor.apana.org.au>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH 0/3] MT67XX random number generator support
Date: Wed, 8 May 2019 11:58:54 +0800
Message-ID: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: CE048B95ABCC1571DC2B35A1121169CE7F25B8DED925862DF515DB4EE21190BF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_205925_585325_CA90F98D 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-crypto@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

These patch series introduce a generic rng driver for Trustzone
based kernel driver which would like to communicate with ATF
SIP services.

Patch #1 initials SMC fid table for Mediatek SIP interfaces and
adds HWRNG related SMC call.

Patch #2..3 adds mt67xx-rng kernel driver for Trustzone based SoCs.
For Mediatek SoCs on ARMv8 with TrustZone enabled, peripherals like
entropy sources is not accessible from normal world (linux) and
rather accessible from secure world (ATF/TEE) only. This driver aims
to provide a generic interface to ATF rng service.

Neal Liu (3):
  soc: mediatek: add SMC fid table for SIP interface
  dt-bindings: rng: update bindings for MT67xx SoCs
  hwrng: add mt67xx-rng driver

 Documentation/devicetree/bindings/rng/mtk-rng.txt |   13 ++-
 drivers/char/hw_random/Kconfig                    |   16 ++++
 drivers/char/hw_random/Makefile                   |    1 +
 drivers/char/hw_random/mt67xx-rng.c               |  104 +++++++++++++++++++++
 include/linux/soc/mediatek/mtk_sip_svc.h          |   55 +++++++++++
 5 files changed, 186 insertions(+), 3 deletions(-)
 create mode 100644 drivers/char/hw_random/mt67xx-rng.c
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
