Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C585B0A74
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 10:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nD0gDNZRCceLGjwL2k70QXjO5zjzzh4mnU4sdSbSfxo=; b=cfxjrFAeO4REvd
	aQ9/IPCpIjvOA5pwSUwZvYu7ZgoN+w6RKnLj/PMYhvwXfsvioXKAEywiFZvBFzSYmsHawswNS6Leu
	TUT4zeHW3SHaSSxSl+fs3hQ104drN9UPpYPGs93Q5qMmupYzcW/eblZL88iYt5zwfTceVhwCDtjyA
	TFxsLZ5fDovvFtm8uIhqKJETcdq9ttDTRZ0ztXv/6ptnqdpm4ZM0RUVyNLCqCpnAJ2N7mOC7/9N7S
	cpuDywFkutWNktusKn7u9ZlDpYzBadoW2lI2Q0cjZrAJq+8o/n1soDfKZDshDVBY+4CuoQh11GO5t
	9fv+GDC1Xi0aA3yo9jgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Kac-0002XC-Iq; Thu, 12 Sep 2019 08:36:30 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8KZk-0001lH-6o; Thu, 12 Sep 2019 08:35:37 +0000
X-UUID: 1274e173906d4a5e8b405e241113c5ce-20190912
X-UUID: 1274e173906d4a5e8b405e241113c5ce-20190912
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1714819540; Thu, 12 Sep 2019 00:35:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 01:35:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 16:35:28 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Sep 2019 16:35:28 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <martin.petersen@oracle.com>, <axboe@kernel.dk>, <jejb@linux.ibm.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH v2 1/2] block: bypass blk_set_runtime_active for uninitialized
 q->dev
Date: Thu, 12 Sep 2019 16:35:27 +0800
Message-ID: <1568277328-4597-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
References: <1568277328-4597-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_013536_272258_44EDF9A0 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Some devices may skip blk_pm_runtime_init() and have null pointer
in its request_queue->dev. For example, SCSI devices of UFS Well-Known
LUNs.

Currently the null pointer is checked by the user of
blk_set_runtime_active(), i.e., scsi_dev_type_resume(). It is better to
check it by blk_set_runtime_active() itself instead of by its users.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 block/blk-pm.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/block/blk-pm.c b/block/blk-pm.c
index 0a028c189897..1adc1cd748b4 100644
--- a/block/blk-pm.c
+++ b/block/blk-pm.c
@@ -207,10 +207,12 @@ EXPORT_SYMBOL(blk_post_runtime_resume);
  */
 void blk_set_runtime_active(struct request_queue *q)
 {
-	spin_lock_irq(&q->queue_lock);
-	q->rpm_status = RPM_ACTIVE;
-	pm_runtime_mark_last_busy(q->dev);
-	pm_request_autosuspend(q->dev);
-	spin_unlock_irq(&q->queue_lock);
+	if (q->dev) {
+		spin_lock_irq(&q->queue_lock);
+		q->rpm_status = RPM_ACTIVE;
+		pm_runtime_mark_last_busy(q->dev);
+		pm_request_autosuspend(q->dev);
+		spin_unlock_irq(&q->queue_lock);
+	}
 }
 EXPORT_SYMBOL(blk_set_runtime_active);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
