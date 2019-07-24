Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114FD72AB2
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 10:53:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmoA+UYPOQ8win1rekdgQWkO84pMXI3efrA3PLA2MrQ=; b=MLBOS695mbz+6b
	e+VFwyNsHnYE151aakLfNkYMt++zQl5Nch3Mzxux9dkt350bOJvH19GNLN78LGMvKNhH+MTjGriJu
	YMPsJMUz+YD0+okg7POfG6ZQLfS/vwJ208EUHR4FdwpXNmZjptB5qIymPbg5k8kNt+MdJQz+kPOij
	/s8JHLQTvAGZ66GMwfhw7fGmDm2otm5zTb//EC+eDgJy5erwgl/SVPsgPxCkjzz7f+qWCDEm5DDMQ
	a9VYIz9iZ9nhYS7nlxNcDFPSht4iR4Ps16ZXtF837zpkJZW5F9mEPhqm9XiCRFRwr9r+UYfUfkbnJ
	mdCOMx/ZwF741miQhvKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD1s-0002Uo-Hu; Wed, 24 Jul 2019 08:53:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqD0S-0001a3-7n; Wed, 24 Jul 2019 08:52:18 +0000
X-UUID: f8264e2f59014993975cdfefdfff19b5-20190724
X-UUID: f8264e2f59014993975cdfefdfff19b5-20190724
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1991704331; Wed, 24 Jul 2019 00:51:19 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 01:51:18 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 16:51:15 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 24 Jul 2019 16:51:14 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Biju Das <biju.das@bp.renesas.com>
Subject: [PATCH v8 02/11] dt-bindings: connector: add optional properties for
 Type-B
Date: Wed, 24 Jul 2019 16:50:36 +0800
Message-ID: <1563958245-6321-3-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 49BA739C71D4B491DA16AA6A3B421D72B8F1C17FE0A76065204D28E4720188252000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015216_391394_6C844605 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>, Andy
 Shevchenko <andy.shevchenko@gmail.com>, linux-mediatek@lists.infradead.org,
 Min Guo <min.guo@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, Adam
 Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add id-gpios, vbus-gpios, vbus-supply and pinctrl properties for
usb-b-connector

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
v8 no changes
v7 no changes
v6 no changes

v5 changes:
 1. add reviewed by Rob

v4 no changes

v3 changes:
 1. add GPIO direction, and use fixed-regulator for GPIO controlled
    VBUS regulator suggested by Rob;

v2 changes:
 1. describe more clear for vbus-gpios and vbus-supply suggested by Hans
---
 .../bindings/connector/usb-connector.txt           | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.txt b/Documentation/devicetree/bindings/connector/usb-connector.txt
index cef556d4e5ee..d357987181ee 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.txt
+++ b/Documentation/devicetree/bindings/connector/usb-connector.txt
@@ -17,6 +17,20 @@ Optional properties:
 - self-powered: Set this property if the usb device that has its own power
   source.
 
+Optional properties for usb-b-connector:
+- id-gpios: an input gpio for USB ID pin.
+- vbus-gpios: an input gpio for USB VBUS pin, used to detect presence of
+  VBUS 5V.
+  see gpio/gpio.txt.
+- vbus-supply: a phandle to the regulator for USB VBUS if needed when host
+  mode or dual role mode is supported.
+  Particularly, if use an output GPIO to control a VBUS regulator, should
+  model it as a regulator.
+  see regulator/fixed-regulator.yaml
+- pinctrl-names : a pinctrl state named "default" is optional
+- pinctrl-0 : pin control group
+  see pinctrl/pinctrl-bindings.txt
+
 Optional properties for usb-c-connector:
 - power-role: should be one of "source", "sink" or "dual"(DRP) if typec
   connector has power support.
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
