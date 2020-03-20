Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E917718C9DF
	for <lists+linux-mediatek@lfdr.de>; Fri, 20 Mar 2020 10:15:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xBwt8k0Xh9GQZrxD317hvr+KG0VilQNQG1fo6getatk=; b=c1q4mM69BU5j/s0Zg24l5jFjs3
	t06FVTopfOgb2JeLIrqkKX8MRTII2xq0YuXb12ysx0SQ6va+ZJmaVuM/Ab1YOViYDJqQtW6kHz5y8
	DSMiZ7Yyo7WmKafueIw5WzE4gIodXk1OhUj5OEXdEL0xHPIwq0/5fWBp3zN3m3D+LpQAkdodc75EK
	5g5JR5zP9nPLm8kBQKr0xg3qe6IaWn7jW984CHk5w60BPr7x76CTZD4lK4DeydzsM6mHsJV3EcMhp
	epV55nfnt07GO/JwNKmNsJ33mZSSoAj38k+enXQsYJyGFQKxyH/OzdwoXQcISa64ZrgLyiF49jNd9
	vbSDP5IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDjz-0000hR-Hh; Fri, 20 Mar 2020 09:14:55 +0000
Received: from 8bytes.org ([81.169.241.247] helo=theia.8bytes.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDje-0000CO-Ly
 for linux-mediatek@lists.infradead.org; Fri, 20 Mar 2020 09:14:38 +0000
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 8BE26457; Fri, 20 Mar 2020 10:14:21 +0100 (CET)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Subject: [PATCH v3 12/15] iommu/mediatek: Use accessor functions for iommu
 private data
Date: Fri, 20 Mar 2020 10:14:11 +0100
Message-Id: <20200320091414.3941-13-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200320091414.3941-1-joro@8bytes.org>
References: <20200320091414.3941-1-joro@8bytes.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_021434_914044_3254F7E5 
X-CRM114-Status: GOOD (  10.64  )
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
 Joerg Roedel <jroedel@suse.de>, Will Deacon <will@kernel.org>,
 linux-arm-msm@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 guohanjun@huawei.com, linux-kernel@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Clark <robdclark@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mediatek@lists.infradead.org,
 Andy Gross <agross@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 Robin Murphy <robin.murphy@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Joerg Roedel <jroedel@suse.de>

Make use of dev_iommu_priv_set/get() functions.

Reviewed-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Signed-off-by: Joerg Roedel <jroedel@suse.de>
---
 drivers/iommu/mtk_iommu.c    | 13 ++++++-------
 drivers/iommu/mtk_iommu_v1.c | 14 +++++++-------
 2 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 95945f467c03..5f4d6df59cf6 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -358,8 +358,8 @@ static void mtk_iommu_domain_free(struct iommu_domain *domain)
 static int mtk_iommu_attach_device(struct iommu_domain *domain,
 				   struct device *dev)
 {
+	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
-	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
 
 	if (!data)
 		return -ENODEV;
@@ -378,7 +378,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 static void mtk_iommu_detach_device(struct iommu_domain *domain,
 				    struct device *dev)
 {
-	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
+	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 
 	if (!data)
 		return;
@@ -450,7 +450,7 @@ static int mtk_iommu_add_device(struct device *dev)
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return -ENODEV; /* Not a iommu client device */
 
-	data = fwspec->iommu_priv;
+	data = dev_iommu_priv_get(dev);
 	iommu_device_link(&data->iommu, dev);
 
 	group = iommu_group_get_for_dev(dev);
@@ -469,7 +469,7 @@ static void mtk_iommu_remove_device(struct device *dev)
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return;
 
-	data = fwspec->iommu_priv;
+	data = dev_iommu_priv_get(dev);
 	iommu_device_unlink(&data->iommu, dev);
 
 	iommu_group_remove_device(dev);
@@ -496,7 +496,6 @@ static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 
 static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
 {
-	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct platform_device *m4updev;
 
 	if (args->args_count != 1) {
@@ -505,13 +504,13 @@ static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
 		return -EINVAL;
 	}
 
-	if (!fwspec->iommu_priv) {
+	if (!dev_iommu_priv_get(dev)) {
 		/* Get the m4u device */
 		m4updev = of_find_device_by_node(args->np);
 		if (WARN_ON(!m4updev))
 			return -EINVAL;
 
-		fwspec->iommu_priv = platform_get_drvdata(m4updev);
+		dev_iommu_priv_set(dev, platform_get_drvdata(m4updev));
 	}
 
 	return iommu_fwspec_add_ids(dev, args->args, 1);
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index e93b94ecac45..a31be05601c9 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -263,8 +263,8 @@ static void mtk_iommu_domain_free(struct iommu_domain *domain)
 static int mtk_iommu_attach_device(struct iommu_domain *domain,
 				   struct device *dev)
 {
+	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
-	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
 	int ret;
 
 	if (!data)
@@ -286,7 +286,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 static void mtk_iommu_detach_device(struct iommu_domain *domain,
 				    struct device *dev)
 {
-	struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
+	struct mtk_iommu_data *data = dev_iommu_priv_get(dev);
 
 	if (!data)
 		return;
@@ -387,20 +387,20 @@ static int mtk_iommu_create_mapping(struct device *dev,
 		return -EINVAL;
 	}
 
-	if (!fwspec->iommu_priv) {
+	if (!dev_iommu_priv_get(dev)) {
 		/* Get the m4u device */
 		m4updev = of_find_device_by_node(args->np);
 		if (WARN_ON(!m4updev))
 			return -EINVAL;
 
-		fwspec->iommu_priv = platform_get_drvdata(m4updev);
+		dev_iommu_priv_set(dev, platform_get_drvdata(m4updev));
 	}
 
 	ret = iommu_fwspec_add_ids(dev, args->args, 1);
 	if (ret)
 		return ret;
 
-	data = fwspec->iommu_priv;
+	data = dev_iommu_priv_get(dev);
 	m4udev = data->dev;
 	mtk_mapping = m4udev->archdata.iommu;
 	if (!mtk_mapping) {
@@ -459,7 +459,7 @@ static int mtk_iommu_add_device(struct device *dev)
 	if (err)
 		return err;
 
-	data = fwspec->iommu_priv;
+	data = dev_iommu_priv_get(dev);
 	mtk_mapping = data->dev->archdata.iommu;
 	err = arm_iommu_attach_device(dev, mtk_mapping);
 	if (err) {
@@ -478,7 +478,7 @@ static void mtk_iommu_remove_device(struct device *dev)
 	if (!fwspec || fwspec->ops != &mtk_iommu_ops)
 		return;
 
-	data = fwspec->iommu_priv;
+	data = dev_iommu_priv_get(dev);
 	iommu_device_unlink(&data->iommu, dev);
 
 	iommu_group_remove_device(dev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
