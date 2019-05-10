Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505951968D
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 May 2019 04:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkBqeHV0/8NTX9BAASd+B7FFQxCQ39ZpbWNAr7z83Yw=; b=Tk54nxnmiCACzM
	QAGq4MYt96yFXi3WykYjCth/pbjiX6aCQAVFIA8IjadRKx/aLtx4hiA4KEnEkZAR0vHO5+FHsRZ1u
	QdhN0ZYQlhJrJ2F+24NTdjptCtK9p/nl3Al0NhvxUacULQBhzxiT+5pVsmqadG5s2Mg6aDRjwD06W
	rDuvlrwbZM38frT4PBYIHwkarUmvrZcZUgyOXHMIPEeV1YP9UIwi0EeyCSuFcu43HFaAePBBU5JOh
	RPDV5KMf+XEQKYUHD7mQMB4bl3tz7l5VugbA5PCaSJf1yEXqyCAVV1b6126q5t7LkzWtvYuqSFWI9
	CpcHXWOEOEHuH+9dO3bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOutR-00062J-RU; Fri, 10 May 2019 02:04:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOusR-0004mL-K8; Fri, 10 May 2019 02:03:13 +0000
X-UUID: 62333cbd2e044b3f901e3cac48865809-20190509
X-UUID: 62333cbd2e044b3f901e3cac48865809-20190509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 229147190; Thu, 09 May 2019 18:01:51 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:01:49 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:01:48 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:01:48 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC, V2,
 01/11] dt-bindings: mt8183: Add binding for ISP Pass 1 reserved memory
Date: Fri, 10 May 2019 09:57:47 +0800
Message-ID: <20190510015755.51495-2-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190311_786358_01783FB8 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, seraph.huang@mediatek.com,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch adds the binding for describing the reserved
shared memory used to exchange ISP configuration and tuning
data between the co-processor and Pass 1 (P1) unit of the
camera ISP system on Mediatek SoCs.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 .../mediatek,reserve-memory-cam-smem.txt      | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt

diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt
new file mode 100644
index 000000000000..65a967cff91e
--- /dev/null
+++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt
@@ -0,0 +1,42 @@
+Mediatek ISP Pass 1 Shared Memory binding
+
+This binding describes the shared memory, which serves the purpose of
+describing the shared memory region used to exchange data between Pass 1
+unit of Image Signal Processor (ISP) and the co-processor in Mediatek
+SoCs.
+
+The co-processor doesn't have the iommu so we need to use the physical
+address to access the shared buffer in the firmware.
+
+The Pass 1 unit of ISP can access memory through the iommu so it
+uses the dma address to access the memory region.
+(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
+
+For additional details about reserved memory regions see reserved-memory.txt
+
+Required properties:
+
+- compatible: must be "mediatek,reserve-memory-cam-smem"
+
+- size: required for dynamic allocation. The unit is bytes.
+
+- alloc-range: required for dynamic allocation. The range must
+  between 0x40000000 and 0x100000000 due to the co-processer's
+  addressing limitation.
+
+Example:
+
+The following example shows the ISP Pass 1 shared memory setup for MT8183.
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		cam_mem_reserved: cam_mem_region {
+			compatible = "mediatek,reserve-memory-cam-smem";
+			size = <0 0x1400000>;
+			no-map;
+			alignment = <0 0x1000>;
+			alloc-ranges = <0 0x40000000 0 0x10000000>;
+		};
+	};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
