Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B241EB3E3C
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Sep 2019 17:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miOoX3R4qgKJst8G1qLb119TqR9/f7wckyYk0Julx7k=; b=IcMX15WcZSClt/
	SpOP2xDc6cxXwgMadfogAedVr1jvMhwtEhD73Mf6S/QRxL79V0e8ickZnYBwVwYcnNnemuZKGdU0Q
	o4ioCuQZFF2fQYbQlBHok8giEpj7pPvSAPMo7praNh2+/vp4Kj8svPTISlBLpDrXgqPuyDHlkG3mB
	ZqikJnL6CQx/ycqqXAK8eFwE6qJ7PCDyM3eRriumsoqLFITf0zMTAbL8kYVLxtl5qWO8CaEMiCQ8J
	Yv+kxD39fMP++eNct6YZk29kggaQ9ytcQrU4VnirQ2uxuKjuWvd8aRJVgm34KYs30s+qxrVFGKUQE
	8ua6O4t4zRjLpyS/8LnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tNd-0004MD-8S; Mon, 16 Sep 2019 15:57:33 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tN2-0003sf-O9; Mon, 16 Sep 2019 15:56:58 +0000
X-UUID: b2f9f9c5e8c94478a38067bfa55284e9-20190916
X-UUID: b2f9f9c5e8c94478a38067bfa55284e9-20190916
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 251422856; Mon, 16 Sep 2019 07:56:54 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 08:56:53 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Sep 2019 23:56:51 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Sep 2019 23:56:52 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <sthumma@codeaurora.org>, <jejb@linux.ibm.com>,
 <bvanassche@acm.org>
Subject: [PATCH v4 1/3] scsi: core: allow auto suspend override by low-level
 driver
Date: Mon, 16 Sep 2019 23:56:49 +0800
Message-ID: <1568649411-5127-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1568649411-5127-1-git-send-email-stanley.chu@mediatek.com>
References: <1568649411-5127-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_085656_786888_6DD365CA 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: marc.w.gonzalez@free.fr, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 vivek.gautam@codeaurora.org, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, kernel-team@android.com,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Rework from previous work by:
Sujit Reddy Thumma <sthumma@codeaurora.org>

Until now the scsi mid-layer forbids runtime suspend till userspace
enables it. This is mainly to quarantine some disks with broken
runtime power management or have high latencies executing suspend
resume callbacks. If the userspace doesn't enable the runtime suspend
the underlying hardware will be always on even when it is not doing
any useful work and thus wasting power.

Some low-level drivers for the controllers can efficiently use runtime
power management to reduce power consumption and improve battery life.
Allow runtime suspend parameters override within the LLD itself
instead of waiting for userspace to control the power management.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/scsi/scsi_sysfs.c  | 3 ++-
 drivers/scsi/sd.c          | 4 ++++
 include/scsi/scsi_device.h | 3 ++-
 include/scsi/scsi_host.h   | 3 +++
 4 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/scsi_sysfs.c b/drivers/scsi/scsi_sysfs.c
index 64c96c7828ee..cebb9336c02b 100644
--- a/drivers/scsi/scsi_sysfs.c
+++ b/drivers/scsi/scsi_sysfs.c
@@ -1300,7 +1300,8 @@ int scsi_sysfs_add_sdev(struct scsi_device *sdev)
 	device_enable_async_suspend(&sdev->sdev_gendev);
 	scsi_autopm_get_target(starget);
 	pm_runtime_set_active(&sdev->sdev_gendev);
-	pm_runtime_forbid(&sdev->sdev_gendev);
+	if (!sdev->rpm_autosuspend)
+		pm_runtime_forbid(&sdev->sdev_gendev);
 	pm_runtime_enable(&sdev->sdev_gendev);
 	scsi_autopm_put_target(starget);
 
diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 149d406aacc9..7358d2b0b2d2 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -3371,6 +3371,10 @@ static int sd_probe(struct device *dev)
 	}
 
 	blk_pm_runtime_init(sdp->request_queue, dev);
+	if (sdp->rpm_autosuspend) {
+		pm_runtime_set_autosuspend_delay(dev,
+			sdp->host->hostt->rpm_autosuspend_delay);
+	}
 	device_add_disk(dev, gd, NULL);
 	if (sdkp->capacity)
 		sd_dif_config_host(sdkp);
diff --git a/include/scsi/scsi_device.h b/include/scsi/scsi_device.h
index 202f4d6a4342..039e289f295e 100644
--- a/include/scsi/scsi_device.h
+++ b/include/scsi/scsi_device.h
@@ -199,7 +199,8 @@ struct scsi_device {
 	unsigned broken_fua:1;		/* Don't set FUA bit */
 	unsigned lun_in_cdb:1;		/* Store LUN bits in CDB[1] */
 	unsigned unmap_limit_for_ws:1;	/* Use the UNMAP limit for WRITE SAME */
-
+	unsigned rpm_autosuspend:1;	/* Enable runtime autosuspend at device
+					 * creation time */
 	atomic_t disk_events_disable_depth; /* disable depth for disk events */
 
 	DECLARE_BITMAP(supported_events, SDEV_EVT_MAXBITS); /* supported events */
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index cc139dbd71e5..3cb64f0a7e3a 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -474,6 +474,9 @@ struct scsi_host_template {
 	 */
 	unsigned int cmd_size;
 	struct scsi_host_cmd_pool *cmd_pool;
+
+	/* Delay for runtime autosuspend */
+	int rpm_autosuspend_delay;
 };
 
 /*
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
