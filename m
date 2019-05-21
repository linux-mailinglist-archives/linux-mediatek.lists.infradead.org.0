Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA772455E
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 03:11:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhITqLq7Nyfe6J0LQCqfEXYZe3IVtcm+hJjb6++ZZEI=; b=SYwpwOI9QIGO3z
	3I36vHMlo9ZTJqadYBPPPi3svszJI+J5SxVAbDVMRMf8F1QzS7mj8SROow9HZWXLeepYJ2mqAXcgk
	ELe3KfHEVI57CztWvtOBzWrTPhfwLKqMpjLEEnEPxC96+dk7LQ9VlSIDpzJL/ckLQDqJ68ZjcAtMy
	75uGpMMWYiqimMqyE742BxIBTyKGMAI0IPPJIwqPLHwqoeBpiqJV6AmOWWf/JYZLHaZ5XVTHK3/7/
	gSraBOZbwnAkZPdjY2AlF1PeuGByFAEfcLAggtm5Vo2d/lYD3Uw2k9BsGz2Z27JrP7vH3bo9jVFgs
	DwzS2HVi8ktd1CiZgyZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStJW-0003bZ-QE; Tue, 21 May 2019 01:11:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStJK-0003Ov-Oa; Tue, 21 May 2019 01:11:24 +0000
X-UUID: 02417148565b4cdc8ffc739be6164da3-20190520
X-UUID: 02417148565b4cdc8ffc739be6164da3-20190520
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 279025248; Mon, 20 May 2019 17:11:14 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 18:11:12 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 09:11:10 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 21 May 2019 09:11:10 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v7 03/12] dt-binding: gce: add binding for gce client reg
 property
Date: Tue, 21 May 2019 09:10:59 +0800
Message-ID: <20190521011108.40428-4-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
References: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 14454D09EB464D8918567F7301DFC7AC3235FDD557072CB26D4DCC58C1940B3A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_181122_797687_4FBAB81A 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha
 Hauer <kernel@pengutronix.de>, Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

cmdq driver provide a function that get the relationship
of sub system number from device node for client.
add specification for #subsys-cells, mediatek,gce-client-reg.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 .../devicetree/bindings/mailbox/mtk-gce.txt    | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index 1f7f8f2a3f49..d48282d6b02d 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -21,12 +21,21 @@ Required properties:
 	priority: Priority of GCE thread.
 	atomic_exec: GCE processing continuous packets of commands in atomic
 		way.
+- #subsys-cells: Should be 3.
+	<&phandle subsys_number start_offset size>
+	phandle: Label name of a gce node.
+	subsys_number: specify the sub-system id which is corresponding
+		       to the register address.
+	start_offset: the start offset of register address that GCE can access.
+	size: the total size of register address that GCE can access.
 
 Required properties for a client device:
 - mboxes: Client use mailbox to communicate with GCE, it should have this
   property and list of phandle, mailbox specifiers.
-- mediatek,gce-subsys: u32, specify the sub-system id which is corresponding
-  to the register address.
+Optional properties for a client device:
+- mediatek,gce-client-reg: Specify the sub-system id which is corresponding
+  to the register address, it should have this property and list of phandle,
+  sub-system specifiers.
 
 Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
 or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
@@ -40,6 +49,7 @@ Example:
 		clocks = <&infracfg CLK_INFRA_GCE>;
 		clock-names = "gce";
 		#mbox-cells = <3>;
+		#subsys-cells = <3>;
 	};
 
 Example for a client device:
@@ -48,9 +58,9 @@ Example for a client device:
 		compatible = "mediatek,mt8173-mmsys";
 		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
 			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
-		mediatek,gce-subsys = <SUBSYS_1400XXXX>;
 		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
 				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
-
+		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
+					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
 		...
 	};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
