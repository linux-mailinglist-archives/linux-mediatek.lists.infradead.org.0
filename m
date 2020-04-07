Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB6141A0A78
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Apr 2020 11:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IJamtL+kcyq1dq2LyA7o/flEfoTMFHAnZtj5Wcd0OPo=; b=VmgYGDVzJb9671
	qBqZpIUGcHG8O0gjq98BIEYLikakqyTla2UZq+FdHWjgkMAHBZNwPnujPnd5Cu5uolJ0JGBy6zQqI
	JMJST2BJZGiw0v2AqQAFur3HjgdgwAj44BZaKyrfXXZ9KznV8NFa+bllKSKCrRcyPTbTT3GmxLEy+
	RIc/1bfNwF9JyYED4tfikISgn36rRycdlFCx/7DvfzSdiDOyb+49zgdcmBE5mlqaxmhF9stTRkrH4
	etl94bz6Bh2H6CBbK0fpRqYzmiQagAhUx46ijP1YX2Hz0yWhY6l/PG9ov0+8z3a4RuisXYM+2ZMko
	txL6Af/kltyfqnWkZyDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLkt9-000270-86; Tue, 07 Apr 2020 09:51:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLkt6-00025x-Q7
 for linux-mediatek@lists.infradead.org; Tue, 07 Apr 2020 09:51:22 +0000
X-UUID: f9016c1715ca4630873693abfa8b14a0-20200407
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=XLhZCqqQ+XAe7Id+sLkm1mR2JnMwc/iwpAHwXkCFgUQ=; 
 b=iNG2m24UbyP+zalcyLC9KtRSw+sVWZcos6iUdHCiqUfyRjX/A6WHvCt5MzK2MAaeH2s5WS0YR6d0KEiPRIf1RtdA2y2MG9I7Z2sXezcxqQiiYPdoyoxc2c9XMqFMiTI89LWTY55hBDqOpx+EfxjKpUvO7mtVsPyqbVWj/ac/v8I=;
X-UUID: f9016c1715ca4630873693abfa8b14a0-20200407
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 419721831; Tue, 07 Apr 2020 01:51:19 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 02:51:13 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 7 Apr 2020 17:51:10 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 7 Apr 2020 17:51:09 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] mm/gup: fix null pointer dereference detected by coverity
Date: Tue, 7 Apr 2020 17:51:07 +0800
Message-ID: <20200407095107.1988-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: F11F2E2A2FF92E73BAB9EDC1B554CE3E5CCB1D0ABAD6F0EF683C94EC7DB3A3AF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_025120_853378_A37C177B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-mm@kvack.org, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In fixup_user_fault(), it is possible that unlocked is NULL,
so we should test unlocked before using it.

For example, in arch/arc/kernel/process.c, NULL is passed
to fixup_user_fault().

SYSCALL_DEFINE3(arc_usr_cmpxchg, int *, uaddr, int, expected, int, new)
{
...
	ret = fixup_user_fault(current, current->mm, (unsigned long) uaddr,
			       FAULT_FLAG_WRITE, NULL);
...
}

Fixes: 4a9e1cda2748 ("mm: bring in additional flag for fixup_user_fault to signal unlock")
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/gup.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/gup.c b/mm/gup.c
index da3e03185144..a68d11dc232d 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -1230,7 +1230,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
 	if (ret & VM_FAULT_RETRY) {
 		down_read(&mm->mmap_sem);
 		if (!(fault_flags & FAULT_FLAG_TRIED)) {
-			*unlocked = true;
+			if (unlocked)
+				*unlocked = true;
 			fault_flags |= FAULT_FLAG_TRIED;
 			goto retry;
 		}
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
