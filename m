Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B856BC34B2
	for <lists+linux-mediatek@lfdr.de>; Tue,  1 Oct 2019 14:47:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ko2jkCeWWDaeaeX0+Jw27uisP3yPekWxLz1FjMg82Ew=; b=Xksv5cFBa3hPPR
	RgNCIIu8SGS+zWzlrOjHKhf9OfIv6JZ9E1kArL9hLB0Fgl+povzw8x39VuTIKE4iuV13XnY0Rnt1Y
	A//wXA2r7Mn83WQrYJFUq0DeAx927AITA1s960J9/2qJZhzHhVJaSaxHbp55YIEvmbyOxtcOfAceb
	7f8o7dLyjSghO6QuCcxxmrPQyrDy2sJ6+0G4KfQg8rrjpg2Cx3tB6K7N7JA2m8M165ot2s37RL7dk
	Kd50TDpIrLrDo+PHO5MFyQn+sZgw7BviKfKXoDsznVm+FCjy7yGYQ4uNlMuiSXiaCLy+yD0BeIqa2
	y2XFAHWfwap8sI7GjxoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHYz-0002ic-2w; Tue, 01 Oct 2019 12:47:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHYv-0002h7-Ow; Tue, 01 Oct 2019 12:47:31 +0000
X-UUID: 858236b822bd4c588383b7f0be712bf2-20191001
X-UUID: 858236b822bd4c588383b7f0be712bf2-20191001
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mark-mc.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 964390308; Tue, 01 Oct 2019 04:47:22 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 05:47:22 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 1 Oct 2019 20:32:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 1 Oct 2019 20:32:18 +0800
From: MarkLee <Mark-MC.Lee@mediatek.com>
To: "David S. Miller" <davem@davemloft.net>, Sean Wang
 <sean.wang@mediatek.com>, John Crispin <john@phrozen.org>, Felix Fietkau
 <nbd@openwrt.org>, Nelson Chang <nelson.chang@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>
Subject: [PATCH net 2/2] arm: dts: mediatek: Fix mt7629 dts to reflect the
 latest dt-binding
Date: Tue, 1 Oct 2019 20:31:50 +0800
Message-ID: <20191001123150.23135-3-Mark-MC.Lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
References: <20191001123150.23135-1-Mark-MC.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_054729_817786_7B073F41 
X-CRM114-Status: UNSURE (   9.31  )
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

* Removes mediatek,physpeed property from dtsi that is useless in PHYLINK
* Set gmac0 to fixed-link sgmii 2.5Gbit mode
* Set gmac1 to gmii mode that connect to a internal gphy

Signed-off-by: MarkLee <Mark-MC.Lee@mediatek.com>
---
 arch/arm/boot/dts/mt7629-rfb.dts | 13 ++++++++++++-
 arch/arm/boot/dts/mt7629.dtsi    |  2 --
 2 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/mt7629-rfb.dts b/arch/arm/boot/dts/mt7629-rfb.dts
index 3621b7d2b22a..6bf1f7d8ddb5 100644
--- a/arch/arm/boot/dts/mt7629-rfb.dts
+++ b/arch/arm/boot/dts/mt7629-rfb.dts
@@ -66,9 +66,21 @@
 	pinctrl-1 = <&ephy_leds_pins>;
 	status = "okay";
 
+	gmac0: mac@0 {
+		compatible = "mediatek,eth-mac";
+		reg = <0>;
+		phy-mode = "sgmii";
+		fixed-link {
+			speed = <2500>;
+			full-duplex;
+			pause;
+		};
+	};
+
 	gmac1: mac@1 {
 		compatible = "mediatek,eth-mac";
 		reg = <1>;
+		phy-mode = "gmii";
 		phy-handle = <&phy0>;
 	};
 
@@ -78,7 +90,6 @@
 
 		phy0: ethernet-phy@0 {
 			reg = <0>;
-			phy-mode = "gmii";
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
index 9608bc2ccb3f..867b88103b9d 100644
--- a/arch/arm/boot/dts/mt7629.dtsi
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -468,14 +468,12 @@
 			compatible = "mediatek,mt7629-sgmiisys", "syscon";
 			reg = <0x1b128000 0x3000>;
 			#clock-cells = <1>;
-			mediatek,physpeed = "2500";
 		};
 
 		sgmiisys1: syscon@1b130000 {
 			compatible = "mediatek,mt7629-sgmiisys", "syscon";
 			reg = <0x1b130000 0x3000>;
 			#clock-cells = <1>;
-			mediatek,physpeed = "2500";
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
