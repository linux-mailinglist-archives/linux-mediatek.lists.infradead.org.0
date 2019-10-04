Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F28CECB5BA
	for <lists+linux-mediatek@lfdr.de>; Fri,  4 Oct 2019 10:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PE+yZeDNAIWAMEg1WuO/dtAv90h9fUQRyBn5aX3+jfI=; b=gBUIdtZ+kE5Cyr
	sOhuN/P7lvhuiBsCJycy/Dz0HYV4VqnRmeXQTqyZmP/GFVCC/esPxgvZcUpV1fAOsS9RN0JpmYOLR
	7dJc1s7C5R2Qn+yYOKTqJ2f3SX4GMk66BlF7xJOYZGDK4oMdyus0SvO668tWddgqVrrTv1U5ctbPX
	x54rijJ9wmWjfptmoBWqYSsPAdxgpto4QFuhmaakFy4ZiJflyxs5NwqEcdPANgzQ9tlAoPWQogODK
	55Hq1+q3sb4vlGRWPPV+Dki42lhwRqCihV98hMtyvjdsEVwdWQl3yEaKCWpJ+VSGBFAJOZKtHHgga
	d3Lx/1TleuAlbvSbLAXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGIdM-0007Dr-QE; Fri, 04 Oct 2019 08:08:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGIdK-0007DR-DL
 for linux-mediatek@lists.infradead.org; Fri, 04 Oct 2019 08:08:15 +0000
X-UUID: 08953fb4009c4cc484dd2c358b4a16ca-20191004
X-UUID: 08953fb4009c4cc484dd2c358b4a16ca-20191004
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 506357739; Fri, 04 Oct 2019 00:08:08 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 01:08:07 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 4 Oct 2019 15:37:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 4 Oct 2019 15:37:55 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] mm/page_owner: fix incorrect looping in
 __set_page_owner_handle()
Date: Fri, 4 Oct 2019 15:37:55 +0800
Message-ID: <20191004073755.3228-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_010814_457031_9A6AE003 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In __set_page_owner_handle(), we should loop over page
[0...(1 << order) - 1] and setup their page_owner structures.

Currently, __set_page_owner_handle() update page_ext at the end of
the loop, sets the page_owner of (page + 0) twice and
misses the page_owner of (page + (1 << order) - 1).

Fix it by updating the page_ext at the start of the loop.

In i == 0 case:
for (i = 0; i < (1 << order); i++) {
	page_owner = get_page_owner(page_ext); <- page_ext belongs to page + 0
	...
	page_ext = lookup_page_ext(page + i); <- lookup_page_ext(page + 0)
}

Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Michal Hocko <mhocko@suse.com>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>
Fixes: 7e2f2a0cd17c ("mm, page_owner: record page owner for each subpage")
---
 mm/page_owner.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/mm/page_owner.c b/mm/page_owner.c
index dee931184788..110c3e1987f2 100644
--- a/mm/page_owner.c
+++ b/mm/page_owner.c
@@ -178,6 +178,7 @@ static inline void __set_page_owner_handle(struct page *page,
 	int i;
 
 	for (i = 0; i < (1 << order); i++) {
+		page_ext = lookup_page_ext(page + i);
 		page_owner = get_page_owner(page_ext);
 		page_owner->handle = handle;
 		page_owner->order = order;
@@ -185,8 +186,6 @@ static inline void __set_page_owner_handle(struct page *page,
 		page_owner->last_migrate_reason = -1;
 		__set_bit(PAGE_EXT_OWNER, &page_ext->flags);
 		__set_bit(PAGE_EXT_OWNER_ACTIVE, &page_ext->flags);
-
-		page_ext = lookup_page_ext(page + i);
 	}
 }
 
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
