Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F2118121D
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Mar 2020 08:41:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMdJ2FS9oe3lpQvyTMy6NnTjHBf+tyvMpxlplY748wA=; b=JXlEmHlFpAcUt5
	sx1KthJMa5kJslpfwaOYmZpu1YVbUVX7uHaDFqb0D6vT0JxrkgCUi4rchhkHtj/ASrD5QQH1T7Yq7
	6A+/TimGYj4r3Ap352fFKccn3bYV6osloeYAaFb2zdB3TcN0Lxcrzkdje/vLMR+sPh3igssPcs5An
	uZJxx21PCQIm0SJxwd16IRPVxYjK6Kl7A2681WhPMVaFVsRM8xPTpVSIPD6webkluloSQ5AYGOBOL
	xhHjG0oCFWLHoYaDBLeqhi4sGL3pwJJU8cHsdBeUrtDd9hNM4KvfdJs4Qk7uPyskjlk3QyWGQ2J1i
	PCGr00D5iGUqL8B3KNtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBvzk-0003VB-Jy; Wed, 11 Mar 2020 07:41:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBvz9-000304-88; Wed, 11 Mar 2020 07:41:00 +0000
X-UUID: a4c8a0f1357b444883113633c781ca9e-20200310
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=LkxTQ6EkbNDavsaknDTmCujK6P6DkEqHOkdqLklErpk=; 
 b=IMTp8gc4JdjYowh4XonGi1wqO7V2sF2CqlOdBQDVULX0o+sh7jPnzTigiIuJ3aJ6BHW/L7MhwDplLFq96QoEmBwIUM4oO5/WJB+YYliE0o5bHpSeeOSILZJZOGlrhuNPWotm1koB2MScXHPT8FJuijA24MGzW4LfMY2SGC+ho00=;
X-UUID: a4c8a0f1357b444883113633c781ca9e-20200310
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 704737968; Tue, 10 Mar 2020 23:40:54 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Mar 2020 00:40:51 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 11 Mar 2020 15:38:24 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 11 Mar 2020 15:42:01 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 1/4] dt-bindings: display: mediatek: add property to
 control mipi tx drive current
Date: Wed, 11 Mar 2020 15:40:29 +0800
Message-ID: <20200311074032.119481-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200311074032.119481-1-jitao.shi@mediatek.com>
References: <20200311074032.119481-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 722E361D831C8C3966132F721EB94F410BBC341B3127202F294AB6C020A316202000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_004059_299382_24E7BCD6 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add a property to control mipi tx drive current:
"drive-strength-microamp"

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,dsi.txt     | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
index a19a6cc375ed..d501f9ff4b1f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dsi.txt
@@ -33,6 +33,9 @@ Required properties:
 - #clock-cells: must be <0>;
 - #phy-cells: must be <0>.
 
+Optional properties:
+- drive-strength-microamp: adjust driving current, should be 1 ~ 0xF
+
 Example:
 
 mipi_tx0: mipi-dphy@10215000 {
@@ -42,6 +45,7 @@ mipi_tx0: mipi-dphy@10215000 {
 	clock-output-names = "mipi_tx0_pll";
 	#clock-cells = <0>;
 	#phy-cells = <0>;
+	drive-strength-microamp = <0x8>;
 };
 
 dsi0: dsi@1401b000 {
-- 
2.21.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
