Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C36A178900
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 04:12:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pub2AGTYUZ22oKtzZ8DtYVw1hGqS9kR92CFPlKOAUhg=; b=Db5gVWyN32A+/C
	PqLeiHNBo9yN4JEICD5k++AXE3kzVNpmW3FsuAd6Tp4eET9OHIk5Iz0TPR9u6RaqBZ5h+P7+LuOtc
	cJTeVVGVYzfombCd+w+RoGLlMYgxHBW5WdCguAirh2U27gbAQApaD08M2VpgH1PspsFtYTCy7Tn/a
	Y9l5AyZOb5dtRRtgQNGQ/Y+J7D2OqDBTbt+gKWwfIDJ6+USdkzAoO5iJgQg4RpaXW99GJHQFL0o91
	9dXh0QT42irybFq+NkN6xSZbVHkNb1JV6LyPpdvZGpIyG6WNFbdTS1BeaAlyiGHVKNamT1ii9/7eV
	GiFNaVelzRFcV9w2P0gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9KSb-0002ih-VL; Wed, 04 Mar 2020 03:12:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9KSV-0002gT-Ag
 for linux-mediatek@lists.infradead.org; Wed, 04 Mar 2020 03:12:35 +0000
X-UUID: 3c3ec8e5a7a74debb29369abe0b78cdc-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=+OjRhnFwB7N+qUCZlu/luvxZ8XB1cxUBw5E13DY1Vig=; 
 b=jYb7MVdAEqvJbOaA2eJDe6Qfk+Jo76IwnhSePs48yJqcaO2a7NauYtI27KqrMWmzwuhOKfIvS0EvfPVEmKN5/YDZKDnKuhAKlJJNjiofqrlBwNNE6j1c6UMduF5jg/at5By8R/B1kaaPUtvTlJi7KKR8Be/nahC5gaOWtRcASwc=;
X-UUID: 3c3ec8e5a7a74debb29369abe0b78cdc-20200303
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <light.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 233308721; Tue, 03 Mar 2020 19:12:27 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 19:13:18 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 11:10:17 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Mar 2020 11:09:47 +0800
From: <light.hsieh@mediatek.com>
To: <ulf.hansson@linaro.org>
Subject: [RESEND PATCH v1 2/3] mmc: check write-protection status during
 BLKROSET ioctl
Date: Wed, 4 Mar 2020 11:12:16 +0800
Message-ID: <1583291537-15053-3-git-send-email-light.hsieh@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1583291537-15053-1-git-send-email-light.hsieh@mediatek.com>
References: <1583291537-15053-1-git-send-email-light.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_191231_378388_F4439346 
X-CRM114-Status: GOOD (  21.30  )
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

Since MMC layer does not implement BLKROSET ioctl, BLKROSET ioctl that
tries to clear ro attribute of an mmcblk device will get -EINVAL from
__blkdev_driver_ioctl(). blkdev_roset() regard -EINVAL as "unrecogized
ioctl" and then clear the ro attribute un-conditionally.
However, when eMMC write-protection (power-on, temporarily write, or
permanent) is enabled in some area, this un-conditional clear of ro
will lead to issue. From user's view, eMMC device is writable since ro
is not set. But write operation sent to eMMC will get write-protection
error. Since most write are asynchronus buffered write, such
write-protection error won't be delivered to user who send the write
operation.

This patch implement BLKROSET in MMC layer.
1. For SD device, 0 is retured.
2. For setting ro to eMMC area, 0 is returned without any other check.
2. For clearing ro to eMMC area, write-proetction status is checked:
2a. For boot0 or boot1 partition, boot_wp_status get from EXTCSD is
    checked.
    -EACCES is returned when the target boot partition is write-protected;
    0 is returned otherwise.
2b. For user area partition, one or more MMC_SEND_WRITE_PROT_TYPE commands
    are sent to get/check write-protection status of target address range.
    -EACCES is returned when target address range is fully/partially
            write-protected;
    0 is returned otherwise.

With the above implementation and correct ioctl parameters, return value
of __blkdev_driver_ioctl() will be 0 or -EACCES. blkdev_roset() can continue
to clear ro attribute when return value is 0, which means whole target eMMC
address range is not write-protected.

Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
---
 block/ioctl.c            |   2 +-
 drivers/mmc/core/block.c | 216 +++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/mmc/mmc.h  |   1 +
 3 files changed, 218 insertions(+), 1 deletion(-)

diff --git a/block/ioctl.c b/block/ioctl.c
index 127194b..af047a0 100644
--- a/block/ioctl.c
+++ b/block/ioctl.c
@@ -485,7 +485,7 @@ static int blkdev_roset(struct block_device *bdev, fmode_t mode,
 		return -EACCES;
 
 	ret = __blkdev_driver_ioctl(bdev, mode, cmd, arg);
-	if (!is_unrecognized_ioctl(ret))
+	if (ret && !is_unrecognized_ioctl(ret))
 		return ret;
 	if (get_user(n, (int __user *)arg))
 		return -EFAULT;
diff --git a/drivers/mmc/core/block.c b/drivers/mmc/core/block.c
index 663d879..ee85abf 100644
--- a/drivers/mmc/core/block.c
+++ b/drivers/mmc/core/block.c
@@ -778,6 +778,220 @@ static int mmc_blk_check_blkdev(struct block_device *bdev)
 	return 0;
 }
 
+#define MMC_BLK_NO_WP           0
+#define MMC_BLK_PARTIALLY_WP    1
+#define MMC_BLK_FULLY_WP        2
+
+static int mmc_blk_check_disk_range_wp(struct gendisk *disk,
+	sector_t part_start, sector_t part_nr_sects)
+{
+	struct mmc_command cmd = {0};
+	struct mmc_request mrq = {NULL};
+	struct mmc_data data = {0};
+	struct mmc_blk_data *md;
+	struct mmc_card *card;
+	struct scatterlist sg;
+	unsigned char *buf = NULL, status;
+	sector_t start, end, quot;
+	sector_t wp_grp_rem, wp_grp_total, wp_grp_found, status_query_cnt;
+	unsigned int remain;
+	int err = 0, i, j, k;
+	u8 boot_wp_status = 0;
+
+	md = mmc_blk_get(disk);
+	if (!md)
+		return -EINVAL;
+
+	if (!md->queue.card) {
+		err = -EINVAL;
+		goto out2;
+	}
+
+	card = md->queue.card;
+	if (!mmc_card_mmc(card) ||
+		md->part_type == EXT_CSD_PART_CONFIG_ACC_RPMB) {
+		err = MMC_BLK_NO_WP;
+		goto out2;
+	}
+
+	if (md->part_type == 0)
+		goto check_user_area_wp_status;
+
+	/* BOOT_WP_STATUS in EXT_CSD:
+	 * |-----bit[7:4]-----|-------bit[3:2]--------|-------bit[1:0]--------|
+	 * |-----reserved-----|----boot1 wp status----|----boot0 wp status----|
+	 * boot0 area wp type:depending on bit[1:0]
+	 * 0->not wp; 1->power on wp; 2->permanent wp; 3:reserved value
+	 * boot1 area wp type:depending on bit[3:2]
+	 * 0->not wp; 1->power on wp; 2->permanent wp; 3:reserved value
+	 */
+	if (md->part_type == EXT_CSD_PART_CONFIG_ACC_BOOT0)
+		boot_wp_status = card->ext_csd.boot_wp_status & 0x3;
+	else if (md->part_type == (EXT_CSD_PART_CONFIG_ACC_BOOT0 + 1))
+		boot_wp_status = (card->ext_csd.boot_wp_status >> 2) & 0x3;
+
+	if (boot_wp_status == 0x1 || boot_wp_status == 0x2) {
+		pr_notice("%s is fully write protected\n", disk->disk_name);
+		err = MMC_BLK_FULLY_WP;
+	} else
+		err = MMC_BLK_NO_WP;
+	goto out2;
+
+check_user_area_wp_status:
+	if (!card->wp_grp_size) {
+		pr_notice("Write protect group size cannot be 0!\n");
+		err = -EINVAL;
+		goto out2;
+	}
+
+	start = part_start;
+	quot = start;
+	remain = do_div(quot, card->wp_grp_size);
+	if (remain) {
+		pr_notice("Start 0x%llx of disk %s not write group aligned\n",
+			(unsigned long long)part_start, disk->disk_name);
+		start -= remain;
+	}
+
+	end = part_start + part_nr_sects;
+	quot = end;
+	remain = do_div(quot, card->wp_grp_size);
+	if (remain) {
+		pr_notice("End 0x%llx of disk %s not write group aligned\n",
+			(unsigned long long)part_start, disk->disk_name);
+		end += card->wp_grp_size - remain;
+	}
+	wp_grp_total = end - start;
+	do_div(wp_grp_total, card->wp_grp_size);
+	wp_grp_rem = wp_grp_total;
+	wp_grp_found = 0;
+
+	cmd.opcode = MMC_SEND_WRITE_PROT_TYPE;
+	cmd.flags = MMC_RSP_SPI_R1 | MMC_RSP_R1 | MMC_CMD_ADTC;
+
+	buf = kmalloc(8, GFP_KERNEL);
+	if (!buf) {
+		err = -ENOMEM;
+		goto out2;
+	}
+	sg_init_one(&sg, buf, 8);
+
+	data.blksz = 8;
+	data.blocks = 1;
+	data.flags = MMC_DATA_READ;
+	data.sg = &sg;
+	data.sg_len = 1;
+	mmc_set_data_timeout(&data, card);
+
+	mrq.cmd = &cmd;
+	mrq.data = &data;
+
+	mmc_get_card(card, NULL);
+
+	err = mmc_blk_part_switch(card, md->part_type);
+	if (err) {
+		err = -EIO;
+		goto out;
+	}
+
+	status_query_cnt = (wp_grp_total + 31) / 32;
+	for (i = 0; i < status_query_cnt; i++) {
+		cmd.arg = start + i * card->wp_grp_size * 32;
+		mmc_wait_for_req(card->host, &mrq);
+		if (cmd.error) {
+			pr_notice("%s: cmd error %d\n", __func__, cmd.error);
+			err = -EIO;
+			goto out;
+		}
+
+		/* wp status is returned in 8 bytes.
+		 * The 8 bytes are regarded as 64-bits bit-stream:
+		 * +--------+--------+-------------------------+--------+
+		 * | byte 7 | byte 6 |           ...           | byte 0 |
+		 * |  bits  |  bits  |                         |  bits  |
+		 * |76543210|76543210|                         |76543210|
+		 * +--------+--------+-------------------------+--------+
+		 *   The 2 LSBits represent write-protect group status of
+		 *       the lowest address group being queried.
+		 *   The 2 MSBits represent write-protect group status of
+		 *       the highest address group being queried.
+		 */
+		/* Check write-protect group status from lowest address
+		 *   group to highest address group
+		 */
+		for (j = 0; j < 8; j++) {
+			status = buf[7 - j];
+			for (k = 0; k < 8; k += 2) {
+				if (status & (3 << k))
+					wp_grp_found++;
+				wp_grp_rem--;
+				if (!wp_grp_rem)
+					goto out;
+			}
+		}
+
+		memset(buf, 0, 8);
+	}
+
+out:
+	mmc_put_card(card, NULL);
+	if (!wp_grp_rem) {
+		if (!wp_grp_found)
+			err = MMC_BLK_NO_WP;
+		else if (wp_grp_found == wp_grp_total) {
+			pr_notice("0x%llx ~ 0x%llx of %s is fully write protected\n",
+				(unsigned long long)part_start,
+				(unsigned long long)part_start + part_nr_sects,
+				disk->disk_name);
+			err = MMC_BLK_FULLY_WP;
+		} else {
+			pr_notice("0x%llx ~ 0x%llx of %s is %u%% write protected\n",
+				wp_grp_found * 100 / wp_grp_total,
+				(unsigned long long)part_start,
+				(unsigned long long)part_start + part_nr_sects,
+				disk->disk_name);
+			err = MMC_BLK_PARTIALLY_WP;
+		}
+	}
+
+	kfree(buf);
+
+out2:
+	mmc_blk_put(md);
+	return err;
+}
+
+static int mmc_blk_check_wp(struct block_device *bdev)
+{
+	if (!bdev->bd_disk || !bdev->bd_part)
+		return -EINVAL;
+
+	return mmc_blk_check_disk_range_wp(bdev->bd_disk,
+		bdev->bd_part->start_sect,
+		bdev->bd_part->nr_sects);
+}
+
+static int mmc_blk_ioctl_roset(struct block_device *bdev,
+	unsigned long arg)
+{
+	int val;
+
+	/* Always return -EACCES to block layer on any error
+	 * and then block layer will abort the remaining operation
+	 */
+	if (get_user(val, (int __user *)arg))
+		return -EACCES;
+
+	/* No need to check write-protect status when setting as readonly */
+	if (val)
+		return 0;
+
+	if (mmc_blk_check_wp(bdev) != MMC_BLK_NO_WP)
+		return -EACCES;
+
+	return 0;
+}
+
 static int mmc_blk_ioctl(struct block_device *bdev, fmode_t mode,
 	unsigned int cmd, unsigned long arg)
 {
@@ -809,6 +1023,8 @@ static int mmc_blk_ioctl(struct block_device *bdev, fmode_t mode,
 					NULL);
 		mmc_blk_put(md);
 		return ret;
+	case BLKROSET:
+		return mmc_blk_ioctl_roset(bdev, arg);
 	default:
 		return -EINVAL;
 	}
diff --git a/include/linux/mmc/mmc.h b/include/linux/mmc/mmc.h
index 2c9d988..f7c1237 100644
--- a/include/linux/mmc/mmc.h
+++ b/include/linux/mmc/mmc.h
@@ -69,6 +69,7 @@
 #define MMC_SET_WRITE_PROT       28   /* ac   [31:0] data addr   R1b */
 #define MMC_CLR_WRITE_PROT       29   /* ac   [31:0] data addr   R1b */
 #define MMC_SEND_WRITE_PROT      30   /* adtc [31:0] wpdata addr R1  */
+#define MMC_SEND_WRITE_PROT_TYPE 31   /* adtc [31:0] wpdata addr R1  */
 
   /* class 5 */
 #define MMC_ERASE_GROUP_START    35   /* ac   [31:0] data addr   R1  */
-- 
1.8.1.1.dirty
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
