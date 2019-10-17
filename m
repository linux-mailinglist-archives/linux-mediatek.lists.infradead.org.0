Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA11DA870
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 11:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ECACCLJvepF1UdHowSx2POHhnZ7T6fUljnW+gyvajEQ=; b=NVV5e4oBQHQmuO
	IcgTnFJMHo8+zU9lupe2Ubaf5SqRdPv7O9yzq8TQDUWcqblb6J6PBpWt/Jc8kYnW6/+NrQKoPJhYv
	clAG5oYmUDMbdqYHnS0kRRKabq3UUbuK/RvH4nAptjUNAJffk+cVtdAh60ENyALoltUiMylgdzeyI
	rTdZWDqsy3BBvEadEy8+ejsGbm0i4nVj8AhoJ9HFwT31nkzCqC+SEsiTudPjEB0DaYIqqQv0EcC4N
	SoC9g9C+25qyQecP35mWp4pjwkU3cZoA8FsSpWIyYmdVJ9SPiSMMzeCCZztm1dcm/ZpCsZNGduh1l
	S0amyN5lx+eYWArPkkzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2CT-0006Zy-R8; Thu, 17 Oct 2019 09:36:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2CR-0006Yx-3y
 for linux-mediatek@lists.infradead.org; Thu, 17 Oct 2019 09:36:04 +0000
X-UUID: 5ebc90d7ab484c668f529caae7d3c278-20191017
X-UUID: 5ebc90d7ab484c668f529caae7d3c278-20191017
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1497443385; Thu, 17 Oct 2019 01:35:47 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 02:35:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 17:35:55 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 17 Oct 2019 17:35:53 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] mm: fix outdated comment in page_get_anon_vma()
Date: Thu, 17 Oct 2019 17:35:54 +0800
Message-ID: <20191017093554.22562-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_023603_167155_FBD34F78 
X-CRM114-Status: UNSURE (   8.80  )
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
Cc: linux-mm@kvack.org, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Replace DESTROY_BY_RCU with SLAB_TYPESAFE_BY_RCU because
SLAB_DESTROY_BY_RCU has been renamed to SLAB_TYPESAFE_BY_RCU by
commit 5f0d5a3ae7cf ("mm: Rename SLAB_DESTROY_BY_RCU to
SLAB_TYPESAFE_BY_RCU")

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/rmap.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/mm/rmap.c b/mm/rmap.c
index d9a23bb773bf..bdb20f2bbe9f 100644
--- a/mm/rmap.c
+++ b/mm/rmap.c
@@ -457,9 +457,10 @@ void __init anon_vma_init(void)
  * chain and verify that the page in question is indeed mapped in it
  * [ something equivalent to page_mapped_in_vma() ].
  *
- * Since anon_vma's slab is DESTROY_BY_RCU and we know from page_remove_rmap()
- * that the anon_vma pointer from page->mapping is valid if there is a
- * mapcount, we can dereference the anon_vma after observing those.
+ * Since anon_vma's slab is SLAB_TYPESAFE_BY_RCU and we know from
+ * page_remove_rmap() that the anon_vma pointer from page->mapping is valid
+ * if there is a mapcount, we can dereference the anon_vma after observing
+ * those.
  */
 struct anon_vma *page_get_anon_vma(struct page *page)
 {
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
