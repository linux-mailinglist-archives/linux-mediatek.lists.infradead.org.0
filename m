Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 677E2156220
	for <lists+linux-mediatek@lfdr.de>; Sat,  8 Feb 2020 01:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=96xVExA68ZmvyPQgpE9Zl4b1VyaYxKrhQNObbe55JYU=; b=Xy5KdH7LT84XCuYxuN+HthXzm9
	OZMmPkIKOWdJXUySo3VOINspN+p2HvJYYC+gMgE3GHhMTtFcHH6/7vhNH3sDUiQhblY8uN/O4jdt8
	aUz7KV8ZotSj2sU4pL95P42Klo+900mSLjZVLZ4QtTx3ZhoYHK+VyO2Zq036nbclif2T742jMciCQ
	IUCvuLLLPu9nCmo1N/FDgUgqMAv114PyD9ZGdWKYISdPlcBkFjIydX6R5I34QOQn8yoLgUpyzPEaK
	Ln6N73R7mAUTSmu3kUUH176cr4qsn+OaBSU1g7ZO+o8q5kTdd/dmCMwmIKck0DoCT0aRDqVKlzGJI
	UO5MDJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0ELS-0005JW-5Z; Sat, 08 Feb 2020 00:51:38 +0000
Received: from mail26.static.mailgun.info ([104.130.122.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0EL5-0004Tn-31
 for linux-mediatek@lists.infradead.org; Sat, 08 Feb 2020 00:51:17 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1581123075; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=GfnWP3Nd68Zxa4H5JQd3vdiMnBMgjmeULVcZSSMrA6s=;
 b=XK9xJ0p8yi7sKHpfg8UgFA/vfS2C/DkCUblLOU+DKDYQ47p9EiAw+fTOCjaGAtRfhf83Py53
 /2pAUkixIGvO+u8QEVy1rJTChS3pX30KbZT3utDnndbG0ClhhQQTs1R9QzTwGsONZ6jFg3OS
 jLEFuuteuuR/pLeSztOGc0cCJTU=
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyI0ZDIyMyIsICJsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3e05fd.7ff4d0340538-smtp-out-n01;
 Sat, 08 Feb 2020 00:51:09 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 869E0C447A3; Sat,  8 Feb 2020 00:51:08 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pacamara-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 713CDC433CB;
 Sat,  8 Feb 2020 00:51:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 713CDC433CB
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=cang@codeaurora.org
From: Can Guo <cang@codeaurora.org>
To: asutoshd@codeaurora.org, nguyenb@codeaurora.org, hongwus@codeaurora.org,
 rnayak@codeaurora.org, linux-scsi@vger.kernel.org, kernel-team@android.com,
 saravanak@google.com, salyzyn@google.com, cang@codeaurora.org
Subject: [PATCH 6/7] scsi: ufs: Add dev ref clock gating wait time support
Date: Fri,  7 Feb 2020 16:50:28 -0800
Message-Id: <1581123030-12023-7-git-send-email-cang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1581123030-12023-1-git-send-email-cang@codeaurora.org>
References: <1581123030-12023-1-git-send-email-cang@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_165115_557870_770753C8 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.26 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.26 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In UFS version 3.0, a newly added attribute bRefClkGatingWaitTime defines
the minimum time for which the reference clock is required by device during
transition to LS-MODE or HIBERN8 state. Make this change to reflect the new
requirement by adding delays before turning off the clock.

Signed-off-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>

diff --git a/drivers/scsi/ufs/ufs.h b/drivers/scsi/ufs/ufs.h
index cfe3803..990cb48 100644
--- a/drivers/scsi/ufs/ufs.h
+++ b/drivers/scsi/ufs/ufs.h
@@ -167,6 +167,7 @@ enum attr_idn {
 	QUERY_ATTR_IDN_FFU_STATUS		= 0x14,
 	QUERY_ATTR_IDN_PSA_STATE		= 0x15,
 	QUERY_ATTR_IDN_PSA_DATA_SIZE		= 0x16,
+	QUERY_ATTR_IDN_REF_CLK_GATING_WAIT_TIME	= 0x17,
 };
 
 /* Descriptor idn for Query requests */
@@ -534,6 +535,8 @@ struct ufs_dev_info {
 	u16 wmanufacturerid;
 	/*UFS device Product Name */
 	u8 *model;
+	u16 wspecversion;
+	u32 clk_gating_wait_us;
 };
 
 /**
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index e8f7f9d..adcce41 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -91,6 +91,9 @@
 /* default delay of autosuspend: 2000 ms */
 #define RPM_AUTOSUSPEND_DELAY_MS 2000
 
+/* Default value of wait time before gating device ref clock */
+#define UFSHCD_REF_CLK_GATING_WAIT_US 0xFF /* microsecs */
+
 #define ufshcd_toggle_vreg(_dev, _vreg, _on)				\
 	({                                                              \
 		int _ret;                                               \
@@ -3281,6 +3284,31 @@ static inline int ufshcd_read_unit_desc_param(struct ufs_hba *hba,
 				      param_offset, param_read_buf, param_size);
 }
 
+static int ufshcd_get_ref_clk_gating_wait(struct ufs_hba *hba)
+{
+	int err = 0;
+	u32 gating_wait = UFSHCD_REF_CLK_GATING_WAIT_US;
+
+	if (hba->dev_info.wspecversion >= 0x300) {
+		err = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_READ_ATTR,
+				QUERY_ATTR_IDN_REF_CLK_GATING_WAIT_TIME, 0, 0,
+				&gating_wait);
+		if (err)
+			dev_err(hba->dev, "Failed reading bRefClkGatingWait. err = %d, use default %uus\n",
+					 err, gating_wait);
+
+		if (gating_wait == 0) {
+			gating_wait = UFSHCD_REF_CLK_GATING_WAIT_US;
+			dev_err(hba->dev, "Undefined ref clk gating wait time, use default %uus\n",
+					 gating_wait);
+		}
+
+		hba->dev_info.clk_gating_wait_us = gating_wait;
+	}
+
+	return err;
+}
+
 /**
  * ufshcd_memory_alloc - allocate memory for host memory space data structures
  * @hba: per adapter instance
@@ -6626,6 +6654,10 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 	dev_info->wmanufacturerid = desc_buf[DEVICE_DESC_PARAM_MANF_ID] << 8 |
 				     desc_buf[DEVICE_DESC_PARAM_MANF_ID + 1];
 
+	/* getting Specification Version in big endian format */
+	dev_info->wspecversion = desc_buf[DEVICE_DESC_PARAM_SPEC_VER] << 8 |
+				      desc_buf[DEVICE_DESC_PARAM_SPEC_VER + 1];
+
 	model_index = desc_buf[DEVICE_DESC_PARAM_PRDCT_NAME];
 	err = ufshcd_read_string_desc(hba, model_index,
 				      &dev_info->model, SD_ASCII_STD);
@@ -7003,6 +7035,8 @@ static int ufshcd_device_params_init(struct ufs_hba *hba)
 		goto out;
 	}
 
+	ufshcd_get_ref_clk_gating_wait(hba);
+
 	ufs_fixup_device_setup(hba);
 
 	if (!ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_READ_FLAG,
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
