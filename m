Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECCA173AE0
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Feb 2020 16:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z6cFmR3qds/5+WsbazDAAEjK1fQ/1SFxgWIKrOs+rjs=; b=CcALafW6i9lT5bCJKoXyk5FGtO
	u8YGmnX/krAp6UhQgdfK/Q4gOxUW9CxYg09E3FumI+Lm6Lv7N/JjB1q6zugWlVGb+pLiCyd/77KZ2
	nIcOUgq8QiKaGNgxk3r+ofkPm/6Q0FGzqfGrs78M+Gw9sckM7OrG5lccH17NI2PsXbvGMFRZMIoq5
	xTyVoRp89wPVsdt2b1aQCZ5ssMa7F2WPvUMauiwemwvyiwt09ASOnWjZ8ELTjGYrEd7BcPtfdT6TL
	2tQh2SDaeaOAGYPa/e/DzAs5Y7zll04WZ04ww0jf+yOimKBB+Iz1gvIwK7GAII1XMRSxPaH/VcoVJ
	MQxeabeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hGF-0006hz-Td; Fri, 28 Feb 2020 15:09:07 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hFx-0006KV-3R
 for linux-mediatek@lists.infradead.org; Fri, 28 Feb 2020 15:08:52 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id C88165B2; Fri, 28 Feb 2020 16:08:29 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 07/14] iommu: Introduce accessors for iommu private data
Date: Fri, 28 Feb 2020 16:08:13 +0100
Message-Id: <20200228150820.15340-8-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200228150820.15340-1-joro@8bytes.org>
References: <20200228150820.15340-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_070849_332670_53F97D3A 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [81.169.241.247 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 include/linux/iommu.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index a049bcb660e1..904fb24418e5 100644
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
