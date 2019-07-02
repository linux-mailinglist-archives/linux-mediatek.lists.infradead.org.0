Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F40A5C910
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 08:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCTpnDGPP4POJCjVJNMeqjYdHysKrrycj3Kduy5C+o4=; b=Vh+gmdeb9aSwhi
	imiNeKQaEnikQGbtxgW+lVd180uMtyY9jPaR7Sbytd8Ax2h3SYxViqqUp+O8NxDhYN7IHywCxAfv7
	NJ1vL0GYLxWBWpBjhsaIOCWheNQgSu8V7mRuKRjMg3jG+tx5GiRt65PWIgWhkfytjqnfrFbedseGZ
	2//PZ2tGn/AV7e7G8rivmGH1mpxyl1RwS6DnsR3MFBEHU2uta8KiSF5xZYEoMo8kbx8QKVO6E0jo1
	vusxCuSzt1fVtZ7fKC/riPbPrM2qceEVWZlv3y7+X210J449H9tcpA7jPi231/yZqSPgGXSiVm3zr
	+yshU0IYn+YX92D2B+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiBwG-000768-Kw; Tue, 02 Jul 2019 06:06:48 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiBvY-0006Vo-5S
 for linux-mediatek@lists.infradead.org; Tue, 02 Jul 2019 06:06:05 +0000
Received: by mail-pg1-x541.google.com with SMTP id i8so3931665pgm.13
 for <linux-mediatek@lists.infradead.org>; Mon, 01 Jul 2019 23:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2DXKtNTv+enH5mK3GUPDYxbfPSoTPJ0a1FQBq84Hi+Y=;
 b=n2YRkfEcd42/YjEnVh6ZuwGh2F8LbZbM2Yv0TnulNyM8phjRiBCCHGSp1AZkKWrPg5
 ZhfO+t6cnCLJWW6mNBJ8bQF+mEsMNZV+XsYOMPu/0Nfxec+KbElFGiNW8w4nswNZoDBC
 unN6O9Z6ZD0ro3kaNg2izFE9+xbtTccy4SOm0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2DXKtNTv+enH5mK3GUPDYxbfPSoTPJ0a1FQBq84Hi+Y=;
 b=EnbHSIrbClhluZxZgnfFf2plmFnwZjt0PY9APRbF1ebQT/Bf9spg2Kq18ZNVY9p3cx
 0I8iaSHn4L+F5+9tqc2xAuWTE/oaPAId15f+p85jnDxZw7NLeNpTIwMTv8TI4Syl7cWx
 5uOnFZhHKUQOGFU8Sig1LwVObCs4fxj8E1t26y+5eGKXAtlMTd75ZKia1mHzNjlPMREP
 TXNpDikjX8e40VF+NABSB6DO0VOue6O8s3TyjyGgcH/RXNqYZWMfrP/J2ixnsttouz+S
 LwRGSumrXcKvPRaDqmw+z2hH64mv3GibWWtMuAOKeci1EXLC1lL0sgkAMOXWRmohLSOC
 QOTg==
X-Gm-Message-State: APjAAAVNcLVVlSrf15Lk5S/lU7aLW1O18Sjdry4wtb0hw36gNlS9Oop0
 dC6YnFeZAcJkZPeboindgO6lHg==
X-Google-Smtp-Source: APXvYqyfx3lBk+zavVeFFQ3Exhb53WC8en4hyQZPVwxXtoVaI/XCoVnt+JtXEvekAV66miBKRip/Xw==
X-Received: by 2002:a17:90a:24e4:: with SMTP id
 i91mr3758658pje.9.1562047563192; 
 Mon, 01 Jul 2019 23:06:03 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id d1sm10284013pgd.50.2019.07.01.23.06.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 01 Jul 2019 23:06:02 -0700 (PDT)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH v12 1/5] dt-bindings: Add a binding for Mediatek SCP
Date: Tue,  2 Jul 2019 14:05:24 +0800
Message-Id: <20190702060546.222934-2-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190702060546.222934-1-pihsun@chromium.org>
References: <20190702060546.222934-1-pihsun@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_230604_241193_676F2464 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Erin Lo <erin.lo@mediatek.com>

Add a DT binding documentation of SCP for the
MT8183 SoC from Mediatek.

Signed-off-by: Erin Lo <erin.lo@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes from v11, v10, v9, v8, v7, v6:
 - No change.

Changes from v5:
 - Remove dependency on CONFIG_RPMSG_MTK_SCP.

Changes from v4:
 - Add detail of more properties.
 - Document the usage of mtk,rpmsg-name in subnode from the new design.

Changes from v3:
 - No change.

Changes from v2:
 - No change. I realized that for this patch series, there's no need to
   add anything under the mt8183-scp node (neither the mt8183-rpmsg or
   the cros-ec-rpmsg) for them to work, since mt8183-rpmsg is added
   directly as a rproc_subdev by code, and cros-ec-rpmsg is dynamically
   created by SCP name service.

Changes from v1:
 - No change.
---
 .../bindings/remoteproc/mtk,scp.txt           | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt

diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
new file mode 100644
index 000000000000..3ba668bab14b
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
@@ -0,0 +1,36 @@
+Mediatek SCP Bindings
+----------------------------------------
+
+This binding provides support for ARM Cortex M4 Co-processor found on some
+Mediatek SoCs.
+
+Required properties:
+- compatible		Should be "mediatek,mt8183-scp"
+- reg			Should contain the address ranges for the two memory
+			regions, SRAM and CFG.
+- reg-names		Contains the corresponding names for the two memory
+			regions. These should be named "sram" & "cfg".
+- clocks		Clock for co-processor (See: ../clock/clock-bindings.txt)
+- clock-names		Contains the corresponding name for the clock. This
+			should be named "main".
+
+Subnodes
+--------
+
+Subnodes of the SCP represent rpmsg devices. The names of the devices are not
+important. The properties of these nodes are defined by the individual bindings
+for the rpmsg devices - but must contain the following property:
+
+- mtk,rpmsg-name	Contains the name for the rpmsg device. Used to match
+			the subnode to rpmsg device announced by SCP.
+
+Example:
+
+	scp: scp@10500000 {
+		compatible = "mediatek,mt8183-scp";
+		reg = <0 0x10500000 0 0x80000>,
+		      <0 0x105c0000 0 0x5000>;
+		reg-names = "sram", "cfg";
+		clocks = <&infracfg CLK_INFRA_SCPSYS>;
+		clock-names = "main";
+	};
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
