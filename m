Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BD21788D8
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 04:01:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fA4Dw0u2zzoFM5e2wHJEq1V2IZRD5lwFMuADhr58npg=; b=l3lbiIwBr0h7/m
	j2V0L3MWsq/6rTwvhxanxbShUwh0tyhbg6BzS7w4lqQSg7wBMhfHrM22M7e5wbKfrVWK5amYuCwsN
	9rVBQeIMX8IjiUIWWU0A7wAoRBW3ixUsDSWehkn5rAnlUIxdLxkt7kAjXjJ4LiEUjRLE/8iu/4i4Y
	dbiwKFXi6tKBcxaXj5LKF7JZx/Ghv3NdDy5hhKkeJoqMGwMijWzOCIPRYhum58iKNKK0oHugYbxba
	GcqrqeZZkouC9qNugkV+pjjSy9Qrut5gnYAaUmpMUzxj8Yf3I0v4w4HcC+qeNIfg1kzOXMp+MxG/n
	sKRJXrLqmSCYLm1zw5gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9KHn-0006gp-Ik; Wed, 04 Mar 2020 03:01:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9KHj-0006eM-6W
 for linux-mediatek@lists.infradead.org; Wed, 04 Mar 2020 03:01:24 +0000
X-UUID: 1b19861de52145fbab974525d4caf0de-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=7FGKC2CL96iktvyoBP2vbwLVT6EXR3CbHjrpB2EcLgw=; 
 b=tTCfhx/g1qhqKpevrkLgsvBeegIu1ks/WCTwPSKDnA8QTDnP0suLCet+eiC92Qs23Z07051doeyoV/PPwLn9xacyway3xcQgiN1NDNGamqKI+nviKDh21xmINSZtam7ikkMeG0sTOXx1z0vvTPsRNUmniC+7YiGGxDwfmwDi6eE=;
X-UUID: 1b19861de52145fbab974525d4caf0de-20200303
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1450887010; Tue, 03 Mar 2020 19:01:18 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:58:44 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:56:29 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Mar 2020 10:58:16 +0800
From: <light.hsieh@mediatek.com>
To: <ulf.hansson@linaro.org>
Subject: [PATCH v1 3/3] block: set partition read/write policy according to
 write-protection status
Date: Wed, 4 Mar 2020 10:57:35 +0800
Message-ID: <1583290655-7858-4-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1583290655-7858-1-git-send-email-light.hsieh@mediatek.com>
References: <1583290655-7858-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD653E083DF72116517A8B50D156A40CD7AB2538B191E5E1374BE5F9BE197B342000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_190123_246768_0666714F 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 Light Hsieh <light.hsieh@mediatek.com>, linux-block@vger.kernel.org,
 linux-mediatek@lists.infradead.org, stanley.chu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Light Hsieh <light.hsieh@mediatek.com>

For storage device with write-protection support, e.g. eMMC, register
check_disk_range_wp() in struct block_device_operations for checking
write-protection status. When creating block device for a partition, set
read/write policy according to result of check_disk_range_wp() operation
(if registered).

Without this patch, ro attribute is not set for created block device of
write-protected partition. User perform asynchronous buffered write to
such partition won't get immediate error and therefore he won't be awared
that write is not actually performed.
With this patch, ro attribute is set for created block device of
write-protected partition. User perform asynchronous buffered write to
such partition will get immediate error and therefore he will be awared.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
---
 block/partition-generic.c | 10 ++++++++++
 drivers/mmc/core/block.c  |  1 +
 include/linux/blkdev.h    |  1 +
 3 files changed, 12 insertions(+)

diff --git a/block/partition-generic.c b/block/partition-generic.c
index 564fae7..69088e8 100644
--- a/block/partition-generic.c
+++ b/block/partition-generic.c
@@ -394,6 +394,16 @@ struct hd_struct *add_partition(struct gendisk *disk, int partno,
 		goto out_free_info;
 	pdev->devt = devt;
 
+	if (!p->policy) {
+		if (disk->fops->check_disk_range_wp) {
+			err = disk->fops->check_disk_range_wp(disk, start, len);
+			if (err > 0)
+				p->policy = 1;
+			else if (err != 0)
+				goto out_free_info;
+		}
+	}
+
 	/* delay uevent until 'holders' subdir is created */
 	dev_set_uevent_suppress(pdev, 1);
 	err = device_add(pdev);
diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
index ee85abf..af81311 100644
--- a/drivers/mmc/core/block.c
+++ b/drivers/mmc/core/block.c
@@ -1047,6 +1047,7 @@ static int mmc_blk_compat_ioctl(struct block_device *bdev, fmode_t mode,
 #ifdef CONFIG_COMPAT
 	.compat_ioctl		= mmc_blk_compat_ioctl,
 #endif
+	.check_disk_range_wp	= mmc_blk_check_disk_range_wp,
 };
 
 static int mmc_blk_part_switch_pre(struct mmc_card *card,
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 053ea4b..7814290 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -1707,6 +1707,7 @@ struct block_device_operations {
 	void (*swap_slot_free_notify) (struct block_device *, unsigned long);
 	int (*report_zones)(struct gendisk *, sector_t sector,
 			unsigned int nr_zones, report_zones_cb cb, void *data);
+	int (*check_disk_range_wp)(struct gendisk *d, sector_t s, sector_t l);
 	struct module *owner;
 	const struct pr_ops *pr_ops;
 };
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
