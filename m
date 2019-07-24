Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B9C72797
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 07:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53tdv96tiJdiUhYd3kRyDZZ47OdT7EI1R6rBpPk0CJc=; b=bkJknOFaz6XyxO
	uohRArMA4LKtOaJ+srCJCQJdEdhAGK6S96pNK3wf5/ycLc5BhKDxlkjz9u/QUaZB2+0DO8uJoL0zX
	LeFs/UwUC+RyBmG8GXJDcr1lFvKViN4ZtZ38/e2ndH2frm+DVpzv8F3LHj0bh0qjnnUJGeZ3I8wyg
	Dbnc6oPhvJf844v0805KAmfXQsmJy17bfZVVwfCK/eeeLLvbbSJQh4AD/eNnhQj7oZUWhuHxEciWF
	Me8qxx5/fo4TUD2GxePiZgmM5Yh1+Y/jn6hNKQ/rP8bJZp7zB5QfKzrv/REIiGDr+E8JAUchtAZaJ
	TSUeP622+KK3s6skAvNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqABk-00077G-EY; Wed, 24 Jul 2019 05:51:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqAAa-0006I5-Is; Wed, 24 Jul 2019 05:50:34 +0000
X-UUID: 0814321769db4485ab4ed21749709ba0-20190723
X-UUID: 0814321769db4485ab4ed21749709ba0-20190723
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1580578297; Tue, 23 Jul 2019 21:50:23 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 22:50:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 13:50:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 13:50:20 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v2 1/3] scsi: ufs: clean-up task resource immediately only if
 task is responded
Date: Wed, 24 Jul 2019 13:50:16 +0800
Message-ID: <1563947418-16394-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
References: <1563947418-16394-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_225032_713745_459442F1 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In __ufshcd_issue_tm_cmd(), if host is unable to clear TM command by
setting "clear register", the TM command may be still "outstanding"
in the device. In this case, it may be better to do cleanup after reset
is done. Therefore let __ufshcd_issue_tm_cmd() clean-up task resource
immediately only if task is responded.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 3804a704e565..66c8e7402001 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5628,6 +5628,7 @@ static int __ufshcd_issue_tm_cmd(struct ufs_hba *hba,
 	struct Scsi_Host *host = hba->host;
 	unsigned long flags;
 	int free_slot, task_tag, err;
+	bool cleanup = true;
 
 	/*
 	 * Get free slot, sleep if slots are unavailable.
@@ -5667,26 +5668,33 @@ static int __ufshcd_issue_tm_cmd(struct ufs_hba *hba,
 		ufshcd_add_tm_upiu_trace(hba, task_tag, "tm_complete_err");
 		dev_err(hba->dev, "%s: task management cmd 0x%.2x timed-out\n",
 				__func__, tm_function);
-		if (ufshcd_clear_tm_cmd(hba, free_slot))
+		if (ufshcd_clear_tm_cmd(hba, free_slot)) {
 			dev_WARN(hba->dev, "%s: unable clear tm cmd (slot %d) after timeout\n",
 					__func__, free_slot);
+			/*
+			 * unable to clear task, cleanup shall be done
+			 * during error handling
+			 */
+			cleanup = false;
+		}
 		err = -ETIMEDOUT;
 	} else {
 		err = 0;
 		memcpy(treq, hba->utmrdl_base_addr + free_slot, sizeof(*treq));
 
 		ufshcd_add_tm_upiu_trace(hba, task_tag, "tm_complete");
+	}
 
+	if (likely(cleanup)) {
 		spin_lock_irqsave(hba->host->host_lock, flags);
 		__clear_bit(free_slot, &hba->outstanding_tasks);
 		spin_unlock_irqrestore(hba->host->host_lock, flags);
 
+		clear_bit(free_slot, &hba->tm_condition);
+		ufshcd_put_tm_slot(hba, free_slot);
+		wake_up(&hba->tm_tag_wq);
 	}
 
-	clear_bit(free_slot, &hba->tm_condition);
-	ufshcd_put_tm_slot(hba, free_slot);
-	wake_up(&hba->tm_tag_wq);
-
 	ufshcd_release(hba);
 	return err;
 }
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
