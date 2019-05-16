Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA2C201FB
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 11:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BaFtEDslGIFOopWJUaByCsR1Y9HedCWCdd/J6q6+j0=; b=Nr0p9XSJMyux1y
	rDM+XOEhTAk3D0EiM15Dc75Ld78kr31xLvlGVpK5eYA4DLdhMDHYe9VXLK1vNbf9vRZlIMQxMXOw4
	xqD9Cgbs56mJkvml37D2tgeSQ4thep9yVVtuk2Lm8eIyK8SPjPB2bUXAnyLeV+QxdQNOVKj7hISYa
	+ZMjAUEEuMs5kVI4cObAneIvgjaBoIy5GCiXEFa0sIfA0IoEbroBgnnI85up42Rziz4LVoYa/EJvv
	SnNCVywpBYYrQm86lvfpLzJWBzR/v1/yjqkWYWy9kch4fZMhWoBZP4tdvCNik2JEC+Y7z8fI4OpWy
	TFso7lyNc1VNFXKspK5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCIU-0005oW-Uh; Thu, 16 May 2019 09:03:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCHh-0004g5-Ra; Thu, 16 May 2019 09:02:47 +0000
X-UUID: 924cabff470143708398b51830a89e9d-20190516
X-UUID: 924cabff470143708398b51830a89e9d-20190516
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1891082364; Thu, 16 May 2019 01:02:30 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 02:02:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 17:02:27 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 17:02:27 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v6 04/12] dt-binding: gce: add binding for gce event property
Date: Thu, 16 May 2019 17:02:16 +0800
Message-ID: <20190516090224.59070-5-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_020242_419434_B8B272A2 
X-CRM114-Status: GOOD (  11.15  )
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
 Houlong Wei <houlong.wei@mediatek.com>, linux-mediatek@lists.infradead.org,
 Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha
 Hauer <kernel@pengutronix.de>, Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby
 Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Client hardware would send event to GCE hardware,
mediatek,gce-event-names and mediatek,gce-events
can be used to present the event.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index dceab63ccd06..265bb58da7bd 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -35,6 +35,8 @@ Required properties for a client device:
 Optional properties for a client device:
 - mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
   to the register address.
+- mediatek,gce-events: u32, the event number defined in
+  'dt-bindings/gce/mt8173-gce.h' or 'dt-binding/gce/mt8183-gce.h'.
 
 Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
 or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
@@ -57,8 +59,8 @@ Example for a client device:
 		compatible = "mediatek,mt8173-mmsys";
 		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
 			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
-		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
-				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
+		mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
+				      <CMDQ_EVENT_MDP_RSZ0_SOF>;
 		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
 					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
 		...
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
