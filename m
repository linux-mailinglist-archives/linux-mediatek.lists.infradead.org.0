Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE491176E
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 12:43:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BJSM9x38Tlprx7D9hKKZJvWRyPJUHvQqegPSGXZOD6g=; b=Tj5674xhbwQdjk
	AQKn80X+BLCNVMkliIZWyt82LCMC5NL/mMqBoUF52qTF7pvqmEDcGYGSq84mF5FqAGskxHI6SYWRI
	D7qlpEHmXm0CCNlUynpmJPV91vbL2dWFuQx0awnBIbyVVsNO7FLC+3uWipZ0QA7BwzIyTAU6K79/W
	EgugHMviNpfQSrz1fRWKZ2guE7zLcYXevVxhaFjuCqRUnoyrhOJeXyeWeRiNrgq0Vxrl8sk1RpNl7
	U31XXDLhdFCmHopxC4vvE/dGRF4i47qyWYtDtWokNHiqgstLHnVJZtMB98EQh4Qf3SEflYSpskY4T
	D0Ob0F5S63Zhx60BjDfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9Bp-0000Tq-OS; Thu, 02 May 2019 10:43:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9BV-0008Uf-FU; Thu, 02 May 2019 10:43:26 +0000
X-UUID: 77c3bea6cf084fffbd7d1c0db18eb986-20190502
X-UUID: 77c3bea6cf084fffbd7d1c0db18eb986-20190502
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 322891785; Thu, 02 May 2019 02:43:21 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 03:43:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 18:43:18 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 2 May 2019 18:43:18 +0800
From: michael.kao <michael.kao@mediatek.com>
To: <michael.kao@mediatek.com>, <fan.chen@mediatek.com>,
 <jamesjj.liao@mediatek.com>, <dawei.chien@mediatek.com>,
 <louis.yu@mediatek.com>, <roger.lu@mediatek.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 0/8] Add Mediatek thermal dirver and dtsi
Date: Thu, 2 May 2019 18:43:07 +0800
Message-ID: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 96AF9BAD32D3D5A97367FCFE066B758E2ED5C4DC0DC4A32DCA4AD0B1EEA40AC12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034325_520242_00737BE0 
X-CRM114-Status: UNSURE (   6.57  )
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
another get temperatrue. And we add thermal zone nodes
and bind coolers.

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

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 137 +++++++++++++++++++++++++++++++
 drivers/thermal/mtk_thermal.c            |  82 ++++++++++++++----
 2 files changed, 205 insertions(+), 14 deletions(-)


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
