Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5931181DF
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 09:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RYMWs+cOZ5+zMV7hM4mmsETD3zggvDhVogJ2IDbBec=; b=XSOvUR78Joe+G9
	KK6xkmfEJ+WuO+meb/6+iV3oltlpoRLv8PcxWWftk7cU6tL6QuXmmrE2yfPhqzpbkJTchKME78Xl0
	z9G0w5grQcCTazI2ZtN7nEV3yVXChFrpvgQWGzJhpT+5ofytohe5dT+5PL7qYZBBCz44Vhtnfzn5n
	zVnTGdEd49DYxJVHyli9JU/BWUis5mBexxiOBcecr1xotk+D9MWs0PIYOS8TToogjIXh18Gtq0khU
	nltZ/4wwgTQohVukRTS8PhUetV9a8F4kNsJa/967ZPfhUzKW2c0RoCW+P8m5WZV217ipxy2HSWdA/
	TcnO2xzg+PRxCwMyhYGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieafb-00008g-Nx; Tue, 10 Dec 2019 08:14:59 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieafV-0008Tr-5J
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 08:14:54 +0000
X-UUID: 51e300af8a634d85891699b6785d9015-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ZHw1FyeA3BLUxG4FfGgyMIigBe1oxHthdz5KxHVSl40=; 
 b=qh6EOuOdbkGBZjdq2zNNSy2AYr6DD/qRcMpGfdVU3+kdK3im10fGUzkO1XNTGiWEEjxO/iIRcxYLeFOZz9kmtiw1w3Ect93n/ZTMhKXieB5VfneB1bS3hZ8AVfmqNsFT7bXVmz5ox+N9RzPRoffqg6gdvLcxg2wKS9WWKrj809g=;
X-UUID: 51e300af8a634d85891699b6785d9015-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <landen.chao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 675618290; Tue, 10 Dec 2019 00:14:48 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 00:15:51 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 16:14:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Dec 2019 16:14:27 +0800
From: Landen Chao <landen.chao@mediatek.com>
To: <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <vivien.didelot@savoirfairelinux.com>, <matthias.bgg@gmail.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH net-next 5/6] arm64: dts: mt7622: add mt7531 dsa to
 mt7622-rfb1 board
Date: Tue, 10 Dec 2019 16:14:41 +0800
Message-ID: <7f5a690281664a0fe47cfe7726f26d7f6211d015.1575914275.git.landen.chao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1575914275.git.landen.chao@mediatek.com>
References: <cover.1575914275.git.landen.chao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_001453_206226_67CE2C1F 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Landen Chao <landen.chao@mediatek.com>,
 frank-w@public-files.de, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add mt7531 dsa to mt7622-rfb1 board for 5 giga Ethernet ports support.
mt7622 only supports 1 sgmii interface, so either gmac0 or gmac1 can be
configured as sgmii interface. In this patch, change to connet mt7622
gmac0 and mt7531 port6 through sgmii interface.

Signed-off-by: Landen Chao <landen.chao@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 63 ++++++++++++++++++--
 1 file changed, 57 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 3f783348c66a..e509b0c2fe79 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -105,20 +105,71 @@
 	pinctrl-0 = <&eth_pins>;
 	status = "okay";
 
-	gmac1: mac@1 {
+	gmac0: mac@0 {
 		compatible = "mediatek,eth-mac";
-		reg = <1>;
-		phy-handle = <&phy5>;
+		reg = <0>;
+		phy-mode = "2500base-x";
+
+		fixed-link {
+			speed = <2500>;
+			full-duplex;
+			pause;
+		};
 	};
 
 	mdio-bus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		phy5: ethernet-phy@5 {
-			reg = <5>;
-			phy-mode = "sgmii";
+		switch@0 {
+			compatible = "mediatek,mt7531";
+			reg = <0>;
+			reset-gpios = <&pio 54 0>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					label = "lan0";
+				};
+
+				port@1 {
+					reg = <1>;
+					label = "lan1";
+				};
+
+				port@2 {
+					reg = <2>;
+					label = "lan2";
+				};
+
+				port@3 {
+					reg = <3>;
+					label = "lan3";
+				};
+
+				port@4 {
+					reg = <4>;
+					label = "wan";
+				};
+
+				port@6 {
+					reg = <6>;
+					label = "cpu";
+					ethernet = <&gmac0>;
+					phy-mode = "2500base-x";
+
+					fixed-link {
+						speed = <2500>;
+						full-duplex;
+						pause;
+					};
+				};
+			};
 		};
+
 	};
 };
 
-- 
2.17.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
