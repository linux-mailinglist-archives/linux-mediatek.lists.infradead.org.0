Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7141EAF5DD
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 08:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZVGP7iCMuP3jt9pZKkIAgFg36DEywWE0QqsZVnItDYc=; b=J4XAZOY5BHHwI0
	0uJAPiTqWkPGsU4kwsZiX0Yv6nJDtPNRrNxZ39TEc67Ro+DSSmYP/wtayFX81GrHo+ePAO40tnX9w
	Gtyxhkqqcx1rQ53ohddxFSkMRNbJvs+6u+rzf/zd4N1dpYBSHhVFy85Q/Jed1eqwfrV/ZGJ4rBFLL
	xywYMTJtqDf8LlOAIa5vNtf/lqoT+QKMFblI07jI3odKVFFI3jjl6HjcN76VxPyvtJC7kv/WZfRjv
	oK2rAi13Ky6wY4n75CRBV+ps8jM8G3Uf/8DeqyDIcGxTG4ShMkfvn08IAyGCezdxKt8rsvox+jo3e
	QVOH5cSlxMp1HFZF+a1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7wC4-00076r-KE; Wed, 11 Sep 2019 06:33:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wBV-0006gf-NZ; Wed, 11 Sep 2019 06:32:59 +0000
X-UUID: 8cf64771a85a40fbb0c11cd3ed54e9ab-20190910
X-UUID: 8cf64771a85a40fbb0c11cd3ed54e9ab-20190910
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1572287264; Tue, 10 Sep 2019 22:32:49 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Sep 2019 23:32:47 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 14:32:46 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 14:32:46 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <linux-block@vger.kernel.org>,
 <martin.petersen@oracle.com>, <axboe@kernel.dk>, <jejb@linux.ibm.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/2] block: bypass blk_set_runtime_active for uninitialized
 q->dev
Date: Wed, 11 Sep 2019 14:32:41 +0800
Message-ID: <1568183562-18241-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
References: <1568183562-18241-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_233257_777829_B5CF0ECE 
X-CRM114-Status: UNSURE (   7.81  )
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
 block/blk-pm.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/block/blk-pm.c b/block/blk-pm.c
index 0a028c189897..56ed94f7a2a3 100644
--- a/block/blk-pm.c
+++ b/block/blk-pm.c
@@ -207,6 +207,9 @@ EXPORT_SYMBOL(blk_post_runtime_resume);
  */
 void blk_set_runtime_active(struct request_queue *q)
 {
+	if (!q->dev)
+		return;
+
 	spin_lock_irq(&q->queue_lock);
 	q->rpm_status = RPM_ACTIVE;
 	pm_runtime_mark_last_busy(q->dev);
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
