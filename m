Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A18665DF
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 06:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chohRjKhdMJt4SHiXgl1eoRPtc8w+oPwEwJHer5dczk=; b=lbYAthIVprKxLz
	73kaGuPhw5KK3LkjfJLiHZ6RzVY/4izZgkgAJnyqa5yasU0XmHaeqE13/dTxLGs4WW9wjivpZ9nII
	c22WErT8O9StPhDY61tc4MDbDpRTt3NPI65RdjvuNUd1gizosaIlfkN74oYP+GYDtUsh10H2y+bQW
	+ySFMfdBk0oavlI1c9xn767Atx1nV6QL5TAdAY/apUO6SHUtrDKb50rmkOjWI9EgV24SmQTEk9vze
	6lsN8EtUny/nhBr+lIxDFNEyQAEVLDVEq9IoxnJrc3jxncvs93qzQIu97tVuDUAqwI9S6J3yXjaxT
	FL2UO5PRJPo8HaZ1rcKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlnQo-0003YD-SY; Fri, 12 Jul 2019 04:45:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlnQ9-0001z6-MM; Fri, 12 Jul 2019 04:44:35 +0000
X-UUID: 5441f88642964786bea21d1deb12e5b6-20190711
X-UUID: 5441f88642964786bea21d1deb12e5b6-20190711
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1644855165; Thu, 11 Jul 2019 20:44:20 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 11 Jul 2019 21:44:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 12:44:18 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 12:44:17 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v1 1/2] scsi: ufs: Make new function for clearing outstanding
 task bits
Date: Fri, 12 Jul 2019 12:44:15 +0800
Message-ID: <1562906656-27154-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
References: <1562906656-27154-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_214433_737283_03AF11C0 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
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
 kuohong.wang@mediatek.com, evgreen@chromium.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Make a new function "ufshcd_outstanding_task_clear()" used to
clear bits in hba->outstanding_tasks for future wider usage.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 8f0426a36b0b..a667dbb547f2 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -723,6 +723,17 @@ static inline void ufshcd_outstanding_req_clear(struct ufs_hba *hba, int tag)
 	__clear_bit(tag, &hba->outstanding_reqs);
 }
 
+/**
+ * ufshcd_outstanding_task_clear - Clear a bit in outstanding task field
+ * @hba: per adapter instance
+ * @tag: position of the bit to be cleared
+ */
+static inline void ufshcd_outstanding_task_clear(struct ufs_hba *hba, int tag)
+{
+	__clear_bit(tag, &hba->outstanding_tasks);
+	dev_info(hba->dev, "clear outstanding_tasks: %d\n", tag);
+}
+
 /**
  * ufshcd_get_lists_status - Check UCRDY, UTRLRDY and UTMRLRDY
  * @reg: Register value of host controller status
@@ -5679,7 +5690,7 @@ static int __ufshcd_issue_tm_cmd(struct ufs_hba *hba,
 		ufshcd_add_tm_upiu_trace(hba, task_tag, "tm_complete");
 
 		spin_lock_irqsave(hba->host->host_lock, flags);
-		__clear_bit(free_slot, &hba->outstanding_tasks);
+		ufshcd_outstanding_task_clear(hba, free_slot);
 		spin_unlock_irqrestore(hba->host->host_lock, flags);
 
 	}
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
