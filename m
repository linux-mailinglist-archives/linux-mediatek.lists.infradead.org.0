Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462673CA00
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 13:30:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bQGpu4nZDnh5ULmKuSblgG8db41BWhYVl1djvkHPDtM=; b=HzfjssFH14GLp4
	IENX/4nbf2UWWWaZJ5GQTTAEOUyOV736kjJX0mnwF+fjiFP34Y35cZqXJ0UUkSoPCA0Rb7A0kp3Ju
	u/Pb7L9UbYRDS8mSYQSyy7WWF7xQchL0jwFQM7EGpsBJetginlhzLpcHC8xpp7drAGOnIMd5zyRfZ
	2nQK/qBv40ntVtAQIvGlgKmpBZm58FnEkJQEkRhWTgrm0pl2sxqu1ZvCYTzeKSJ5wjONXr8XtfCpY
	JtdCttGCInh6a9DLPtCeBClsPJuQBmgFOSTyEpZUD6UgeJ0I3fdJpr2Qm37BuEd+B2tx4vQtMaxmM
	RfiNdxJTM5S7CZPPspag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haeyQ-0008RX-32; Tue, 11 Jun 2019 11:29:54 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haexy-000893-U5; Tue, 11 Jun 2019 11:29:28 +0000
X-UUID: eff1ae81a07746beb33d3ed3463ca58a-20190611
X-UUID: eff1ae81a07746beb33d3ed3463ca58a-20190611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dehui.sun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1552277577; Tue, 11 Jun 2019 03:29:21 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 04:29:20 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Jun 2019 19:29:18 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Jun 2019 19:29:18 +0800
From: Dehui Sun <dehui.sun@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 0/2] add systimer node for MT8183 SoC
Date: Tue, 11 Jun 2019 19:28:52 +0800
Message-ID: <1560252534-11412-1-git-send-email-dehui.sun@mediatek.com>
X-Mailer: git-send-email 2.1.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_042927_225278_E7D978D0 
X-CRM114-Status: UNSURE (   7.47  )
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
Cc: dehui.sun@mediatek.com, devicetree@vger.kernel.org, weiyi.lu@mediatek.com,
 srv_heupstream@mediatek.com, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series are based on 5.2-rc1 and add systimer node for MT8183,
and this timer will serve as a wakeup-up source for cpu-idle feature.

Dehui Sun (2):
  dt-bindings: mediatek: update bindings for MT8183 systimer
  arm64: dts: mt8183: add systimer0 device node

 Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt | 1 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi                       | 9 +++++++++
 2 files changed, 10 insertions(+)

-- 
2.1.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
