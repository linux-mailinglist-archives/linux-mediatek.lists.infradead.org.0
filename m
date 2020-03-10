Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E7817F305
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 10:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TzyzniFppAq2T/2D1rZW6sPIs15HEkhc/kPHebpQoKM=; b=XnQMRb2z97jizVfeWnMC6LObBT
	y6jIvwrbCepv0oPzFyLmswqPblRkyAsibHCnn8a4GFbcGBD89745d5nHptUvPlER46fnIS/JpmoJA
	gRMpgqPbsfeI8HM8ni7sQJ1IpSv+MVC4YC1sQ/Q45a/qTn/BjH3VYW8SLlRDivXIS6ZNr4HIowUPk
	PgWLQBMfEnRaaGdJd4T7SpbVxbe+WGoB5Vr/Nmit7pstBMB6zika005Mi2mFMP1Uk9Z/HEmHkjOj9
	pFbl7O2DcTIRObXlmZbgYnblYCJmH6NNe/knJVlBLwJ56RvMLqi9q/u6UfMCWzS+3nzTM1D/jEyTn
	IhdCTMvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBawf-0006Yg-SF; Tue, 10 Mar 2020 09:13:01 +0000
Received: from 8bytes.org ([2a01:238:4383:600:38bc:a715:4b6d:a889]
 helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBawR-0006Ho-KZ
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 09:12:49 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 303657E6; Tue, 10 Mar 2020 10:12:33 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 08/15] iommu: Introduce accessors for iommu private data
Date: Tue, 10 Mar 2020 10:12:22 +0100
Message-Id: <20200310091229.29830-9-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200310091229.29830-1-joro@8bytes.org>
References: <20200310091229.29830-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_021247_827798_22DD6B0F 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 virtualization@lists.linux-foundation.org, Rob Clark <robdclark@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Joerg Roedel <jroedel@suse.de>,
 Hanjun Guo <guohanjun@huawei.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Add dev_iommu_priv_get/set() functions to access per-device iommu
private data. This makes it easier to move the pointer to a different
location.

Tested-by: Will Deacon <will@kernel.org> # arm-smmu
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 include/linux/iommu.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index f5edc21a644d..056900e75758 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -627,6 +627,16 @@ static inline void dev_iommu_fwspec_set(struct device *dev,
 	dev->iommu->fwspec = fwspec;
 }
 
+static inline void *dev_iommu_priv_get(struct device *dev)
+{
+	return dev->iommu->fwspec->iommu_priv;
+}
+
+static inline void dev_iommu_priv_set(struct device *dev, void *priv)
+{
+	dev->iommu->fwspec->iommu_priv = priv;
+}
+
 int iommu_probe_device(struct device *dev);
 void iommu_release_device(struct device *dev);
 
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
