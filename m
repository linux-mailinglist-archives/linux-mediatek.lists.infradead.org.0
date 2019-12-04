Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 610C0112C01
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Dec 2019 13:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8V4WDR1NOhYNWTHmzRxQjiKW3AsjwBSks3VgfmTj+0=; b=G9/NfJ/EvgYVrR
	QoepBAeSaIOjN0KAdmVwq9s4y0FNVHXG1eJhMHJ6qL9H2SUOWkFDSAr3w5uBX6kJx4dIkYuXhJCZN
	VaW6Qr4s8R1p96fW0B53jrheEXpm6fM9ll1wdARCRSd6OrQGPVBRkw7/vE9D1ZXGeEVGjM/h2fzYM
	N7mEeXJ5YapKj0L6FcTlEmjBbPkushKK1VGytcum7vzIoDdP4C05dcLiJwHZ3CKJHxnwTCL6wx1tr
	essyv/5ibuPw2ce+U3ktKWIeHi9ChsvVSRIlbU1nS/mwzluUcyx9ijJYwCwPlskM23OjC7Nplz8FG
	QINH+W7tay4ct5HO2N7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU4w-0004AH-F9; Wed, 04 Dec 2019 12:48:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU4P-0003gC-Ag; Wed, 04 Dec 2019 12:47:54 +0000
X-UUID: a8f30c9bd507401e98afef6282874175-20191204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Nl4e9sXBb0YIZeHa5uaTWki9jmH9c36DVKn4iu5IzsU=; 
 b=jvU1ty21YIfj5F99k9L69k2ifyDx5VzXgyw6omcgEr7iK3nkr1eGOLDR9XM8CfzgyFqAe6Zz3Y3khxyaITsyjCIWQ3Jy9gXt0Ws12ZVvRHRLxgeTGydXHi4YwQmb8DIQNLp53uNdFLGVA3T0Dj6OhL1jpdPGnJOnQ+7Sfi2EffE=;
X-UUID: a8f30c9bd507401e98afef6282874175-20191204
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1523098690; Wed, 04 Dec 2019 04:47:49 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 04:48:00 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 20:47:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Dec 2019 20:46:51 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V4 3/4] dts: arm64: mt8183: Add FD nodes
Date: Wed, 4 Dec 2019 20:47:31 +0800
Message-ID: <20191204124732.10932-4-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_044753_393873_ADFD8767 
X-CRM114-Status: UNSURE (   7.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 pihsun@chromium.org, srv_heupstream@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.com>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>

This patch adds nodes for Face Detection (FD) unit. FD is embedded
in Mediatek SoCs and works with the co-processor to perform face
detection on the input data and image and output detected face result.

Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c3a516e63141..6f31b5f4c17c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -432,6 +432,19 @@
 			#clock-cells = <1>;
 		};
 
+		fd:fd@1502b000 {
+			compatible = "mediatek,mt8183-fd";
+			mediatek,scp = <&scp>;
+			iommus = <&iommu M4U_PORT_CAM_FDVT_RP>,
+				 <&iommu M4U_PORT_CAM_FDVT_WR>,
+				 <&iommu M4U_PORT_CAM_FDVT_RB>;
+			reg = <0 0x1502b000 0 0x1000>;
+			interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&imgsys CLK_IMG_FDVT>;
+			clock-names = "fd";
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_ISP>;
+		};
+
 		vdecsys: syscon@16000000 {
 			compatible = "mediatek,mt8183-vdecsys", "syscon";
 			reg = <0 0x16000000 0 0x1000>;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
