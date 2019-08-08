Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ED085E29
	for <lists+linux-mediatek@lfdr.de>; Thu,  8 Aug 2019 11:23:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=954rk2J71uZH9XYouZ8Nj0985LiJallZBfZszRW3Qdw=; b=ErNnOfaRrIeFYb
	nNkqRKZ9bVoQ1sN4Vo8gPSD9G1YFdDJz4P0440Ie8Pm4aF+G8aEn2Ldof+2qNx7+vtlMx3CridQFU
	DATNxMBMYDNaUm8RrptC1f8oi6A99Bf+dufP1uO02GLvU8Pj1eZKx5vl8h+HBrDmFy2qDXC3R60tc
	GJJRF/RnMPd0HVQQaadpuy/vGbLL0eD0cj+KstA1r0kuCIwQtTd6L/zNmH0+GtjXacz21XVgURoxm
	1q3GKayhCT7LOYFQ5IQ3nETSk5j5wVHs5FmC0lHnYj6/yAcqmF80qTvZcNa+7RiRTm1rMizwIxazL
	+sQ6SCzGpnuC2Vp3fpXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvedl-0001ZQ-Mf; Thu, 08 Aug 2019 09:23:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hved7-00012e-IR; Thu, 08 Aug 2019 09:22:42 +0000
X-UUID: c8de6cac1ae24dddacbd17ca5f1b5f7c-20190808
X-UUID: c8de6cac1ae24dddacbd17ca5f1b5f7c-20190808
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1383471057; Thu, 08 Aug 2019 01:22:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 02:22:29 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 8 Aug 2019 17:22:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 8 Aug 2019 17:22:26 +0800
From: <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <sakari.ailus@linux.intel.com>, <drinkcat@chromium.org>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <bingbu.cao@intel.com>
Subject: [V1, 1/2] media: dt-bindings: media: i2c: Add bindings for ov8856
Date: Thu, 8 Aug 2019 17:22:14 +0800
Message-ID: <20190808092215.5608-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_022241_609988_552711DD 
X-CRM114-Status: GOOD (  11.51  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Dongchun Zhu <dongchun.zhu@mediatek.com>

Add device tree binding documentation for the ov8856 camera sensor.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../devicetree/bindings/media/i2c/ov8856.txt       | 41 ++++++++++++++++++++++
 MAINTAINERS                                        |  1 +
 2 files changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/ov8856.txt

diff --git a/Documentation/devicetree/bindings/media/i2c/ov8856.txt b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
new file mode 100644
index 0000000..96b10e0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/ov8856.txt
@@ -0,0 +1,41 @@
+* Omnivision OV8856 MIPI CSI-2 sensor
+
+Required Properties:
+- compatible: shall be "ovti,ov8856"
+- clocks: reference to the xvclk input clock
+- clock-names: shall be "xvclk"
+- avdd-supply: Analog voltage supply, 2.8 volts
+- dovdd-supply: Digital I/O voltage supply, 1.8 volts
+- dvdd-supply: Digital core voltage supply, 1.2 volts
+- reset-gpios: Low active reset gpio
+
+The device node shall contain one 'port' child node with an
+'endpoint' subnode for its digital output video port,
+in accordance with the video interface bindings defined in
+Documentation/devicetree/bindings/media/video-interfaces.txt.
+The endpoint optional property 'data-lanes' shall be "<0 1 3 4>".
+
+Example:
+&i2c7 {
+	ov8856: camera-sensor@10 {
+		compatible = "ovti,ov8856";
+		reg = <0x10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&clk_24m_cam>;
+
+		clocks = <&cru SCLK_TESTCLKOUT1>;
+		clock-names = "xvclk";
+
+		avdd-supply = <&mt6358_vcama2_reg>;
+		dvdd-supply = <&mt6358_vcamd_reg>;
+		dovdd-supply = <&mt6358_vcamio_reg>;
+		reset-gpios = <&gpio2 3 GPIO_ACTIVE_LOW>;
+
+		port {
+			wcam_out: endpoint {
+				remote-endpoint = <&mipi_in_wcam>;
+				data-lanes = <0 1 3 4>;
+			};
+		};
+	};
+};
diff --git a/MAINTAINERS b/MAINTAINERS
index 783569e..7746c6b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11889,6 +11889,7 @@ L:	linux-media@vger.kernel.org
 T:	git git://linuxtv.org/media_tree.git
 S:	Maintained
 F:	drivers/media/i2c/ov8856.c
+F:	Documentation/devicetree/bindings/media/i2c/ov8856.txt
 
 OMNIVISION OV9650 SENSOR DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
-- 
2.9.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
