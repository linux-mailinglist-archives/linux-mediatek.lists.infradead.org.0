Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05725E70C2
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 12:51:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLNUC1lmtqQs7e8c7XK34YsQOCwmE0EUjDjNTiPLXAI=; b=aX/oBGnqA6H7jf
	I+gJidEqcr6PATXDKLLktNZg9MDE60ARWokEX58ZUuMfxYI39uV1cgym3yi6/Eg4rti2BtdUIhzvm
	qg9LHnxcSB7HlvmQr/reAFF6bPF0N/KJoBc/wFYfKoXCHZkGDgfbLnLlthAE3UZktb+Sz6Iy5k8F8
	3DLNGE29P6SP4gjI0mgWCRVASynXDYuRpqblegffPvEs4O3AF64ySrN8d0Y2vQIXyQdYUtEiZ8O9Z
	mWIQodMNCXPl7vrim3BislIZUBhCv6NHge85S6aHj61GlZ1xFM1dzrJUT5wHzE2y3QGebEI4a0FAW
	zAhVSQ83eGb6Hq67SZag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP3Yd-0006Gn-By; Mon, 28 Oct 2019 11:51:35 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP3Xz-0005iu-4l; Mon, 28 Oct 2019 11:50:56 +0000
X-UUID: b6e9cd83b64c4f3fa3f9f21598405934-20191028
X-UUID: b6e9cd83b64c4f3fa3f9f21598405934-20191028
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1000748249; Mon, 28 Oct 2019 03:50:42 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 04:50:44 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 28 Oct 2019 19:50:42 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Mon, 28 Oct 2019 19:50:39 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 0/3] add dsi pwm0 node for mt8183
Date: Mon, 28 Oct 2019 19:50:36 +0800
Message-ID: <20191028115039.96555-1-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 435FE06E00B94DC7D8F5816F936DD3FB2E393C851001A44BB8B8C43541987B822000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_045055_184416_69B28D96 
X-CRM114-Status: UNSURE (   6.49  )
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Changes since v2:
 - add calibration property in mipitx and efuse.

Changes since v1:
 - remove "mediatek,mt8173-dsi" from dsi node.

This patch is based on v5.4-rc5 and these patches:
https://patchwork.kernel.org/patch/10938825/

Jitao Shi (3):
  arm64: dts: mt8183: add dsi node
  arm64: dts: mt8183: add pwm0 node
  arm64: dts: mt8183: add calibration property in mipitx and efuse

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 40 ++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
