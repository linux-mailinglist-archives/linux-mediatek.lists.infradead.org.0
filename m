Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDD3291F5
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 09:42:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV579hqEDYFWOmbDSE9eT7KVERHysFfhPWQB1aijjJA=; b=ZHD+/P/4XVqQ5Q
	nLJUjCVvWLEX/o9ZrGrTk1+DeiqibndT/xNfSNCc4fpSdal7Ldc4T/eiyRLyugg8FAv16LV5HDkF3
	xyW04Iy+h40GW1rBhVWK1o2Vmv5lekLSZmRf3ecET8c1QTsQLUc/ZNKDfBfcMFtWDMHyFG1iEk3/y
	ouAuT6WRG8fm7Y73eVSu5X0SaCcXpOybQsDYlQcIbWdra7lXvWQ0iLGovFq7NsZeWjjR8X2N5KUVG
	osef62C6vdpif+xhmqrYJH2tqHz2pLFPOYOG3UP/8v8BYvtglSI0mtCWaJd292e7FZIbRsJ3SHiTC
	E94SqZnvYD/bYNseHqNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU4qn-00058U-JC; Fri, 24 May 2019 07:42:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4ql-000582-5Q
 for linux-mediatek@lists.infradead.org; Fri, 24 May 2019 07:42:48 +0000
X-UUID: 27ae80e6f83b41b6bd725ce6e1564a0d-20190523
X-UUID: 27ae80e6f83b41b6bd725ce6e1564a0d-20190523
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1991031528; Thu, 23 May 2019 23:42:38 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 00:42:37 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 15:42:34 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 15:42:34 +0800
Message-ID: <1558683754.5671.4.camel@mtkswgap22>
Subject: Re: [PATCH 3/3] hwrng: add mt67xx-rng driver
From: Neal Liu <neal.liu@mediatek.com>
To: Herbert Xu <herbert@gondor.apana.org.au>
Date: Fri, 24 May 2019 15:42:34 +0800
In-Reply-To: <20190510063915.kwqy3e5urs6j7ity@gondor.apana.org.au>
References: <1557287937-2410-1-git-send-email-neal.liu@mediatek.com>
 <1557287937-2410-4-git-send-email-neal.liu@mediatek.com>
 <12193108.aNnqf5ydOJ@tauon.chronox.de>
 <1557311737.11818.11.camel@mtkswgap22>
 <20190509052649.xfkgb3qd7rhcgktj@gondor.apana.org.au>
 <1557413686.23445.6.camel@mtkswgap22>
 <20190510063915.kwqy3e5urs6j7ity@gondor.apana.org.au>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 89ED3B40815DB6F837B8DBB2E0E3948F37DDFAA36A07D69CF4F4116AD8AC13F82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_004247_206694_276E8895 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 Stephan Mueller <smueller@chronox.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Neal Liu <neal.liu@mediatek.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>,
 "mpm@selenic.com" <mpm@selenic.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Crystal Guo =?UTF-8?Q?=28=E9=83=AD=E6=99=B6=29?= <Crystal.Guo@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Herbert,
	Could you kindly help to review our patches?
	Thanks

From	Neal Liu <>
Subject	[PATCH 0/3] MT67XX random number generator support
Date	Wed, 8 May 2019 11:58:54 +0800
share
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
 drivers/char/hw_random/mt67xx-rng.c               |  104
+++++++++++++++++++++
 include/linux/soc/mediatek/mtk_sip_svc.h          |   55 +++++++++++
 5 files changed, 186 insertions(+), 3 deletions(-)
 create mode 100644 drivers/char/hw_random/mt67xx-rng.c
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

-- 
1.7.9.5

Best Regards,
-Neal Liu



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
