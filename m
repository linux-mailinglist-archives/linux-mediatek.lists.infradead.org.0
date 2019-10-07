Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86B6CDD2A
	for <lists+linux-mediatek@lfdr.de>; Mon,  7 Oct 2019 10:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vnRm9dyQXR5qtBCRPZKARUo5PBmhMLko9dUOBYmlAYA=; b=ZHzIQdPkAfHLf+YDU5LqzBvD14
	3dqLDIk82lDDOUJk+M9fVudaFZdFvT5Np9TmUd3MJrojJaZzh0/pD/YNAaBp7eqCDiCxEl9zdxz5m
	bpyhfmi31fDeojsCp0Ou/Jxt5HQNDkg8/3tOtp1FJeLVWJTFp931aOQrQkh5MxT97WRq0JzVgCmye
	qDnRC/94o/cikpkiOGjx27X7B9oF4IzYXhkCr9htWFRc0f6vFcgPCM8Cs1n94ngtMBRokMfm2Qkr+
	jkC7V5Bqj3xH3byJPbk8GfV9/QPXXwhi4R1z3EbQrlpKx35zaIH9ePXwlzPceoZNABmbGK4aZWbes
	l7yLmadw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHOIZ-0006gY-Jn; Mon, 07 Oct 2019 08:23:19 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHOIX-0006ft-0t
 for linux-mediatek@lists.infradead.org; Mon, 07 Oct 2019 08:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1570436594;
 s=strato-dkim-0002; d=fpond.eu;
 h=References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=YexszvWfT0YfoC5A4JusxCJ6TgneeRSUsJyagrjGFfw=;
 b=XciIvl18arkDz5Th8ODpUoXJz8l9/O3VqGn0+IZeeIZOhDbtmxyPRVK9/I95LysQcM
 f3QVBHCUtm26WJuz77eU60jZxH7xNSa4ERc/VI3dvdguIRnNHXFbqLQFA998vLGf5AAA
 94QKW3G6FVf8MCu+UuFMFriF740ArKq0MQX9Z1+kp74bcGou6Epbvt5bm9PFpUUwS4+l
 AncA/kqb7k5qj1qxAbZyW1/YJd0PIV5nTfJvPSQmzrDq+7mTofQfj9r5siunLqLYvZPo
 FtJHHPSOKb1pdMDOPuts7TAeSJjqqFd2nLiH0996HSq+OJv57papkxw5fh3Juwgq6HKf
 U0PQ==
X-RZG-AUTH: ":OWANVUa4dPFUgKR/3dpvnYP0Np73dmm4I5W0/AvA67Ot4fvR82Ncd3IXOg=="
X-RZG-CLASS-ID: mo00
Received: from groucho.site by smtp.strato.de (RZmta 44.28.0 DYNA|AUTH)
 with ESMTPSA id i07086v978MZfth
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Mon, 7 Oct 2019 10:22:35 +0200 (CEST)
From: Ulrich Hecht <uli@fpond.eu>
To: linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org,
 jitao.shi@mediatek.com
Subject: [PATCH v20 1/2] Documentation: bridge: Add documentation for ps8640
 DT properties
Date: Mon,  7 Oct 2019 10:22:28 +0200
Message-Id: <1570436549-8694-2-git-send-email-uli@fpond.eu>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570436549-8694-1-git-send-email-uli@fpond.eu>
References: <1570436549-8694-1-git-send-email-uli@fpond.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_012317_206224_2F7DAAFF 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:11 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, Ulrich Hecht <uli@fpond.eu>, stonea168@163.com,
 ajaykumar.rs@samsung.com, architt@codeaurora.org, vpalatin@chromium.org,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 yingjoe.chen@mediatek.com, devicetree@vger.kernel.org, p.zabel@pengutronix.de,
 pawel.moll@arm.com, ijc+devicetree@hellion.org.uk, inki.dae@samsung.com,
 robh+dt@kernel.org, seanpaul@chromium.org, matthias.bgg@gmail.com,
 eddie.huang@mediatek.com, rahul.sharma@samsung.com, kernel@pengutronix.de,
 galak@codeaurora.org, enric.balletbo@collabora.com, andy.yan@rock-chips.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Jitao Shi <jitao.shi@mediatek.com>

Add documentation for DT properties supported by
ps8640 DSI-eDP converter.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Ulrich Hecht <uli@fpond.eu>
---

Changes since v15:
 - No change.

Changes since v14:
 - change mode-sel-gpios as optional.

 .../devicetree/bindings/display/bridge/ps8640.txt  | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/bridge/ps8640.txt

diff --git a/Documentation/devicetree/bindings/display/bridge/ps8640.txt b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
new file mode 100644
index 0000000..7b13f92
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/bridge/ps8640.txt
@@ -0,0 +1,44 @@
+ps8640-bridge bindings
+
+Required properties:
+	- compatible: "parade,ps8640"
+	- reg: first page address of the bridge.
+	- sleep-gpios: OF device-tree gpio specification for PD pin.
+	- reset-gpios: OF device-tree gpio specification for reset pin.
+	- vdd12-supply: OF device-tree regulator specification for 1.2V power.
+	- vdd33-supply: OF device-tree regulator specification for 3.3V power.
+	- ports: The device node can contain video interface port nodes per
+		 the video-interfaces bind[1]. For port@0,set the reg = <0> as
+		 ps8640 dsi in and port@1,set the reg = <1> as ps8640 eDP out.
+
+Optional properties:
+	- mode-sel-gpios: OF device-tree gpio specification for mode-sel pin.
+[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Example:
+	edp-bridge@18 {
+		compatible = "parade,ps8640";
+		reg = <0x18>;
+		sleep-gpios = <&pio 116 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&pio 115 GPIO_ACTIVE_LOW>;
+		mode-sel-gpios = <&pio 92 GPIO_ACTIVE_HIGH>;
+		vdd12-supply = <&ps8640_fixed_1v2>;
+		vdd33-supply = <&mt6397_vgp2_reg>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0>;
+				ps8640_in: endpoint {
+					remote-endpoint = <&dsi0_out>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+				ps8640_out: endpoint {
+					remote-endpoint = <&panel_in>;
+				};
+			};
+		};
+	};
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
