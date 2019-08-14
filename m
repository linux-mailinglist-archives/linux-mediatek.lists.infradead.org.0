Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4448D100
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 12:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3z+OUV45/jkR3R6FJqioRkrREFe7Lc7cvtdaLf8whZE=; b=bJJO94IEeUuV0/
	n8YfJqSWoUNRhLYuTHKoX5dp0gwsrlWcwv2ddUhJ3yO4fFvnLurfuohMhE3oI3zlzBH4+c+lo+QBq
	PR1YzrpDdkzuEBCwy8Zs3T5DYYpPAYfskft4foDuybSKYamX8KLXclxf3sNzoP3cf9PpxrBw0b+EO
	i3Q/mxBUp7vzFQUi7BTU7RtGG6bAW0XfzwDnXPpv2Kry0LQ5NYm71zmwZSSo6X8+6OVvK+ki0ryKk
	vwt586agZGLn5i/YAAVqaDxeceMQq9m58XDuXdJUcp+JMef3RgcjzBqP7kGQclbLPfymBbqQeTc6z
	VI1PR5AiASaUmB1UDngQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqmU-0002Y4-EH; Wed, 14 Aug 2019 10:45:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqmR-0002Xg-4C
 for linux-mediatek@lists.infradead.org; Wed, 14 Aug 2019 10:45:24 +0000
X-UUID: b34cd13521934c2fa558d925d306625b-20190814
X-UUID: b34cd13521934c2fa558d925d306625b-20190814
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2054871215; Wed, 14 Aug 2019 02:45:10 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 03:45:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 14 Aug 2019 18:45:07 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 14 Aug 2019 18:45:07 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [PATCH v2 9/10] dt-bindings: pwm: update bindings for MT7628 SoC 
Date: Wed, 14 Aug 2019 18:43:39 +0800
Message-ID: <1565779497-23621-2-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <621e49c01b943edb6ddac9182f34719eb0727f01.1548313019.git.ryder.lee@mediatek.com>
References: <621e49c01b943edb6ddac9182f34719eb0727f01.1548313019.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034523_173791_DB8799A7 
X-CRM114-Status: UNSURE (   9.63  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, sam
 shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: sam shih <sam.shih@mediatek.com>

This updates bindings for MT7628 pwm controller.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 .../devicetree/bindings/pwm/pwm-mediatek.txt       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
index c7bd5633d1eb..9d2d893a07ff 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -21,6 +21,8 @@ Required properties:
  - pinctrl-0: One property must exist for each entry in pinctrl-names.
    See pinctrl/pinctrl-bindings.txt for details of the property values.
  - num-pwms: the number of PWM channels.
+ - clock-frequency: fix clock frequency, this is an optional property, only use in MT7628 SoC
+                    for period calculation. This SoC has no complex clock tree.
 
 Example:
 	pwm0: pwm@11006000 {
@@ -40,3 +42,13 @@ Example:
 		pinctrl-0 = <&pwm0_pins>;
 		num-pwms = <5>;
 	};
+MT7628 Example:
+	pwm: pwm@5000 {
+		compatible = "mediatek,mt7628-pwm";
+		reg = <0x5000 0x1000>;
+		#pwm-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm0_pins>, <&pwm1_pins>;
+		num-pwms = <4>;
+		clock-frequency = <100000>;
+	};
-- 
2.17.1

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
