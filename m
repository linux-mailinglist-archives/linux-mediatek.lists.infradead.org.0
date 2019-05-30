Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2C32FB59
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 14:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bpsR4YlSChZAVtmKRtptficeF76G4Zp6kTCT1LtY/Vg=; b=pczlUhkIXdr6+v
	aRDhxLvktumGwUCAARd5nPP2dDTUsqMVbBwQPEhPug/3B84rh7w3MJu3Q0+5mbQql0792FYnQj5eq
	6flwq2MMb1qm8vbe4HMt4/6Ip3cUlm4QKRu2DnC4ZO2uoMQJd+WGtGEjPJXHw0e4SsZbLfqn5U+rh
	ffxXyU/t41tkeL/jAy8Vm/HR9XybUsvY/76O5+lbLx51QSiU0tokvsAqlxgglXy6zfNcsuPs8kI7l
	IN1O+SLEo9Yl9k52ijt4UmiSUvTz0WNLAxLuu/HuIo/AX3MZB17fY90xA8XQ1Km9ra8T4w7lygBy4
	4ulC0kUVHpZyYTBGEaCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJkK-0001Bl-TU; Thu, 30 May 2019 12:01:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJkG-000142-CN
 for linux-mediatek@lists.infradead.org; Thu, 30 May 2019 12:01:22 +0000
X-UUID: 085625f80ff0435aaa3e62aa7788af6a-20190530
X-UUID: 085625f80ff0435aaa3e62aa7788af6a-20190530
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <kobe-cp.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 118921524; Thu, 30 May 2019 04:01:03 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 05:01:02 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 20:00:52 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 30 May 2019 20:00:53 +0800
From: Kobe Wu <kobe-cp.wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>
Subject: [PATCH] locking/lockdep: Remove unnecessary DEBUG_LOCKS_WARN_ON()
Date: Thu, 30 May 2019 19:59:35 +0800
Message-ID: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1B7035FDE05B085C2C32BCEFE450E73C0E7A6F9BC639B3BB6475598512739F112000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_050120_814579_EF22C1FE 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Eason Lin <eason-yh.lin@mediatek.com>, linux-mediatek@lists.infradead.org,
 wsd_upstream@mediatek.com, Kobe Wu <kobe-cp.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

DEBUG_LOCKS_WARN_ON() will turn off debug_locks and 
makes print_unlock_imbalance_bug() return directly.

Remove a redundant whitespace.

Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
---
 kernel/locking/lockdep.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
index d06190f..37c0a5e 100644
--- a/kernel/locking/lockdep.c
+++ b/kernel/locking/lockdep.c
@@ -4049,8 +4049,8 @@ static int __lock_downgrade(struct lockdep_map *lock, unsigned long ip)
 	 * So we're all set to release this lock.. wait what lock? We don't
 	 * own any locks, you've been drinking again?
 	 */
-	if (DEBUG_LOCKS_WARN_ON(depth <= 0))
-		 return print_unlock_imbalance_bug(curr, lock, ip);
+	if (depth <= 0)
+		return print_unlock_imbalance_bug(curr, lock, ip);
 
 	/*
 	 * Check whether the lock exists in the current stack
-- 
1.7.9.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
