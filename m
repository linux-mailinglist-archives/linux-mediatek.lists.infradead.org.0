Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 330AEE6C53
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 07:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiWCJetp3w7BBgyknTw4jeY31/ZPQg01xGRfB8OMVxE=; b=lFrmwhsWNWmWUE
	0qAVKlwkAt4B6a98BA8rDGVTzy7lWK4myfXem5wbuN4XWGawBR8Nd5NQeEHblvxtFeXHHCRcMwMwR
	LF3165E1K+9Tln07ZCJSoDxTMuP2h/v+UTBtZqgCaYy9njFdn9xjn+Q4x/mZ1BWOeP69GNQWCMxAw
	6wy7XImHiIuEB74sM6m3leLd+FGQlqkewhCCPjNndFS+DFMXDwfHSoiyfzsOsoHVLSAPvr52Pr9ce
	/6MkFr78QNiT1dMTL0fdCUWrE0UBEueJVgFcwSE/Pmy3QRB3g4XbcKSqphkiNxJKvDKFKX0n9dbsb
	RtUFZ1xZHCAK3y5hjDzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyF7-0007PO-MC; Mon, 28 Oct 2019 06:11:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyEz-0007Nm-Ec; Mon, 28 Oct 2019 06:11:03 +0000
X-UUID: 58a9e3f24fe2457692b7155a58e49a6d-20191027
X-UUID: 58a9e3f24fe2457692b7155a58e49a6d-20191027
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dehui.sun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 67656682; Sun, 27 Oct 2019 22:10:38 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 27 Oct 2019 23:10:27 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 14:10:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 28 Oct 2019 14:10:25 +0800
From: Dehui Sun <dehui.sun@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 0/2] add systimer node for MT8183 SoC
Date: Mon, 28 Oct 2019 14:09:42 +0800
Message-ID: <1572242984-30460-1-git-send-email-dehui.sun@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_231102_769661_B4E12833 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This series are based on 5.4-rc1 and add systimer node for MT8183,
and this timer will serve as a wakeup source for cpu-idle feature.

Change in v2:
 - rename the node's name from 'systimer' to 'timer'.

Dehui Sun (2):
  dt-bindings: mediatek: update bindings for MT8183 systimer
  arm64: dts: mt8183: add systimer0 device node

 Documentation/devicetree/bindings/timer/mediatek,mtk-timer.txt | 1 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi                       | 9 +++++++++
 2 files changed, 10 insertions(+)

-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
