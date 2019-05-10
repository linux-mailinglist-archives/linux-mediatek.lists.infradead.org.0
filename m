Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2BF19E1A
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 May 2019 15:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RoAZg2UtKLk5KYetahlUJKA7Uc63/P9pKV6JXsyv/Ak=; b=MLHOSE8dgwU8t7
	HMYECgwWJxoz7w6bgER1OQTkIpB+27R02cG3LBrSp88iPBVcM8WxUzHtzreAOUMdl6yXwSmevEhxO
	z+SwQn7HoNbzsn2NWlGxhcpPQzdUvCLAIMKvAlpdwO4gPTy+bErkzfsc87dY+kFRmOu+29cVOevsi
	ULH6UM/qsyLCP6kxQnuH3f1qE6mDZtR/XCjj4Off6Fruegr4AZThAFmwX3cFw9ZvQp6zy4cHszP7w
	MJ3Iu8tZjyKgYQlJ61hgUjfZI9NFntEeYBeozEr0Dm0qPrbHXhDXI1QPQkGOa4nvhck/TX/e1ymKw
	pmyZdPpZIei9x681Yvmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP5Yb-0001nB-EQ; Fri, 10 May 2019 13:27:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP5YS-0001d0-Ma; Fri, 10 May 2019 13:27:19 +0000
X-UUID: 7d0cb4578e2e4fe086ce65b5241b0b6d-20190510
X-UUID: 7d0cb4578e2e4fe086ce65b5241b0b6d-20190510
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2086611820; Fri, 10 May 2019 05:27:13 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 06:27:11 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 21:27:09 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 21:27:09 +0800
From: michael.kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH v2 0/8] Add Mediatek thermal dirver and dtsi
Date: Fri, 10 May 2019 21:26:58 +0800
Message-ID: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_062716_977214_6430E2BA 
X-CRM114-Status: UNSURE (   6.88  )
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset supports for MT8183 chip to mtk_thermal.c.
Add thermal zone of all the thermal sensor in SoC for
another get temperatrue. They don't need to thermal throttle.
And we bind coolers for thermal zone nodes of cpu_thermal.

This patch series base on these patches [1][2][3][4].

[1]support for reading chip ID and efuse (https://patchwork.kernel.org/patch/10902131/)
[2]arm64: dts: mt8183: Add reset-cells in infracfg (https://patchwork.kernel.org/patch/10908653/)
[3]clk: reset: Modify reset-controller driver (https://patchwork.kernel.org/patch/10908657/)
[4]PM / AVS: SVS: Introduce SVS engine (https://patchwork.kernel.org/patch/10923289/)

Matthias Kaehlcke (2):
	arm64: dts: mt8183: Configure CPU cooling
	arm64: dts: mt8183: Increase polling frequency for CPU thermal zone

Michael Kao (6):
	arm64: dts: mt8183: add thermal zone node
	arm64: dts: mt8183: add/update dynamic power coefficients
	arm64: dts: mt8183: Add #cooling-cells to CPU nodes
	thermal: mediatek: mt8183: fix bank number settings
	thermal: mediatek: add another get_temp ops for thermal sensors
	thermal: mediatek: use spinlock to protect PTPCORESEL

arch/arm64/boot/dts/mediatek/mt8183.dtsi | 158 +++++++++++++++++++++++++++++++
drivers/thermal/mtk_thermal.c            |  82 +++++++++++++---
2 files changed, 226 insertions(+), 14 deletions(-)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
