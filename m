Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A22A41E8FC2
	for <lists+linux-mediatek@lfdr.de>; Sat, 30 May 2020 10:26:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dawhDbAg0AhgoT5F/BVSlIc9n7wPaAgAVq/7tE0Do64=; b=Ojwo4iclDGY3mH
	r9aH0lVE8Xalkg88CzR+7luAp9tQ9ktc/em2REfgNUMGcOf37yZHFfG6ak8dtSKQfIRWcMV5DnpQd
	+BahjjFxkZJeNhZAmUhO9JJdqDa280j+VGhc3cKfW1g1jNvQJ2n9547ITH68GWTngA7xGpbh68gjl
	Y4LsxDAtNrg/NneAXyUffBxIutOwrtdfDwEbHzxDpmQRJn5PktkFl+GDWnVt6m4pLikX2Iyh76uOh
	opeQAuc+tfBOboCZqVvBapFKH+yhkmADa508RAktBW869zR8efjkJXuAbMgBWnuo8TdtdKVJI9147
	ujYH6FOQAWY1/lSE2Yfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jewob-0001I9-N6; Sat, 30 May 2020 08:26:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jewmc-0005hy-OO; Sat, 30 May 2020 08:24:02 +0000
X-UUID: f43815ad9b734339a401425801ccdca3-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=UzfE6L+Q+N5T60qWBYKFvl/nWB8dnMHgO4HFEf6j0Lk=; 
 b=EQ/AeGy179Ew+/hKZOBs/oIb1tNjzQNd1dAKioPKcPdTY4A6ZhTV5Qftx+4OUTssOYtDOwju6HaYVANLy2vex0E16BVgTaQ4H5ppayeFIPbOKeVb/HGzv/fQfCP+hbFyjaGQ1KeMGT0YOTRbgeR9w2LT2hL/wa7nKlXWrJHZ7Nk=;
X-UUID: f43815ad9b734339a401425801ccdca3-20200530
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 534912164; Sat, 30 May 2020 00:23:49 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 01:14:51 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 16:14:50 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 30 May 2020 16:14:50 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 16/17] arm64: dts: mt8173: Separate mtk-vcodec-enc node
Date: Sat, 30 May 2020 16:10:17 +0800
Message-ID: <1590826218-23653-17-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_012358_816238_3C300306 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Irui Wang <irui.wang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Evan Green <evgreen@chromium.org>, eizan@chromium.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, linux-mediatek@lists.infradead.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, ming-fan.chen@mediatek.com,
 yong.wu@mediatek.com, anan.sun@mediatek.com, acourbot@chromium.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Irui Wang <irui.wang@mediatek.com>

There are two separate hardware encoder blocks inside MT8173. Split
the current mtk-vcodec-enc node to match the hardware architecture.

Signed-off-by: Irui Wang <irui.wang@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 60 +++++++++++++++++---------------
 1 file changed, 31 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index fb21a6b..9fccbec 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1364,13 +1364,10 @@
 		};
 
 		vcodec_enc: vcodec@18002000 {
-			compatible = "mediatek,mt8173-vcodec-enc";
-			reg = <0 0x18002000 0 0x1000>,	/* VENC_SYS */
-			      <0 0x19002000 0 0x1000>;	/* VENC_LT_SYS */
-			interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>,
-				     <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
-			mediatek,larb = <&larb3>,
-					<&larb5>;
+			compatible = "mediatek,mt8173-vcodec-avc-enc";
+			reg = <0 0x18002000 0 0x1000>;	/* VENC_SYS */
+			interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
+			mediatek,larb = <&larb3>;
 			iommus = <&iommu M4U_PORT_VENC_RCPU>,
 				 <&iommu M4U_PORT_VENC_REC>,
 				 <&iommu M4U_PORT_VENC_BSDMA>,
@@ -1381,29 +1378,12 @@
 				 <&iommu M4U_PORT_VENC_REF_LUMA>,
 				 <&iommu M4U_PORT_VENC_REF_CHROMA>,
 				 <&iommu M4U_PORT_VENC_NBM_RDMA>,
-				 <&iommu M4U_PORT_VENC_NBM_WDMA>,
-				 <&iommu M4U_PORT_VENC_RCPU_SET2>,
-				 <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
-				 <&iommu M4U_PORT_VENC_BSDMA_SET2>,
-				 <&iommu M4U_PORT_VENC_SV_COMA_SET2>,
-				 <&iommu M4U_PORT_VENC_RD_COMA_SET2>,
-				 <&iommu M4U_PORT_VENC_CUR_LUMA_SET2>,
-				 <&iommu M4U_PORT_VENC_CUR_CHROMA_SET2>,
-				 <&iommu M4U_PORT_VENC_REF_LUMA_SET2>,
-				 <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
+				 <&iommu M4U_PORT_VENC_NBM_WDMA>;
 			mediatek,vpu = <&vpu>;
-			clocks = <&topckgen CLK_TOP_VENCPLL_D2>,
-				 <&topckgen CLK_TOP_VENC_SEL>,
-				 <&topckgen CLK_TOP_UNIVPLL1_D2>,
-				 <&topckgen CLK_TOP_VENC_LT_SEL>;
-			clock-names = "venc_sel_src",
-				      "venc_sel",
-				      "venc_lt_sel_src",
-				      "venc_lt_sel";
-			assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>,
-					  <&topckgen CLK_TOP_VENC_LT_SEL>;
-			assigned-clock-parents = <&topckgen CLK_TOP_VENCPLL_D2>,
-						 <&topckgen CLK_TOP_UNIVPLL1_D2>;
+			clocks = <&topckgen CLK_TOP_VENC_SEL>;
+			clock-names = "venc_sel";
+			assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>;
+			assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL>;
 		};
 
 		jpegdec: jpegdec@18004000 {
@@ -1435,6 +1415,28 @@
 				 <&vencltsys CLK_VENCLT_CKE0>;
 			clock-names = "apb", "smi";
 		};
+
+		vcodec_enc_lt: vcodec@19002000 {
+			compatible = "mediatek,mt8173-vcodec-vp8-enc";
+			reg =  <0 0x19002000 0 0x1000>;	/* VENC_LT_SYS */
+			interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
+			iommus = <&iommu M4U_PORT_VENC_RCPU_SET2>,
+				 <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
+				 <&iommu M4U_PORT_VENC_BSDMA_SET2>,
+				 <&iommu M4U_PORT_VENC_SV_COMA_SET2>,
+				 <&iommu M4U_PORT_VENC_RD_COMA_SET2>,
+				 <&iommu M4U_PORT_VENC_CUR_LUMA_SET2>,
+				 <&iommu M4U_PORT_VENC_CUR_CHROMA_SET2>,
+				 <&iommu M4U_PORT_VENC_REF_LUMA_SET2>,
+				 <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
+			mediatek,larb = <&larb5>;
+			mediatek,vpu = <&vpu>;
+			clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
+			clock-names = "venc_lt_sel";
+			assigned-clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
+			assigned-clock-parents = <&topckgen
+						  CLK_TOP_VCODECPLL_370P5>;
+		};
 	};
 };
 
-- 
1.9.1
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
