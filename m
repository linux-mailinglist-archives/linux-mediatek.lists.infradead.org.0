Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF58FFA0
	for <lists+linux-mediatek@lfdr.de>; Fri, 16 Aug 2019 12:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WW0jUQ1obZLz+w2zvOWcGMAtcZbmgqimutXTOckGrUI=; b=JwLXiN2Jrw4iAo
	Weh+gin231MaHck+J9nX5Qn9am78uILqJNupFhmQwG1CU5ilqsm3k6br1KeP7CAeU8NT67Y1CEgy0
	BLIc4USDSVuw5NT7pXNzSizWWsLUk+HRAJGKXKpgefeg9QcPkby2tzKfHFdYYDDDSqtpCY/5g5lXf
	p6yVokcBhA2aAGXX0oTRFuM/pFAoldIm2lR7RNxMiGzntIVDONFfPWEG44It2oBxrgG+Y9q0gDmFE
	rCeAuB2bBiT2dBDd3zvFEM8Ip3bINLFCcTYJW86kMbzRPlyJc3G7WCgaQTgqZNBSegLo3FpohmXoM
	050l64xFo8aCEktqJBWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyZ3y-0004Yw-GJ; Fri, 16 Aug 2019 10:02:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyZ3u-0004YU-05
 for linux-mediatek@lists.infradead.org; Fri, 16 Aug 2019 10:02:23 +0000
X-UUID: e175edbaecd444699cdb754a786f0264-20190816
X-UUID: e175edbaecd444699cdb754a786f0264-20190816
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1779886914; Fri, 16 Aug 2019 02:02:10 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 03:02:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 16 Aug 2019 18:02:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 16 Aug 2019 18:02:07 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Hugh Dickins <hughd@google.com>
Subject: [PATCH] shmem: fix obsolete comment in shmem_getpage_gfp()
Date: Fri, 16 Aug 2019 18:02:04 +0800
Message-ID: <20190816100204.9781-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_030222_048029_D4E8F855 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: linux-mm@kvack.org, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Replace "fault_mm" with "vmf" in code comment
because the commit cfda05267f7b ("userfaultfd: shmem: add userfaultfd
hook for shared memory faults") has changed the prototpye of
shmem_getpage_gfp() - pass vmf instead of fault_mm to the function.

Before:
static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
		struct page **pagep, enum sgp_type sgp,
		gfp_t gfp, struct mm_struct *fault_mm, int *fault_type);
After:
static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
		struct page **pagep, enum sgp_type sgp,
		gfp_t gfp, struct vm_area_struct *vma,
		struct vm_fault *vmf, vm_fault_t *fault_type);

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 mm/shmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/shmem.c b/mm/shmem.c
index 2bed4761f279..fed9ebea316c 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -1719,7 +1719,7 @@ static int shmem_swapin_page(struct inode *inode, pgoff_t index,
  * vm. If we swap it in we mark it dirty since we also free the swap
  * entry since a page cannot live in both the swap and page cache.
  *
- * fault_mm and fault_type are only supplied by shmem_fault:
+ * vmf and fault_type are only supplied by shmem_fault:
  * otherwise they are NULL.
  */
 static int shmem_getpage_gfp(struct inode *inode, pgoff_t index,
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
