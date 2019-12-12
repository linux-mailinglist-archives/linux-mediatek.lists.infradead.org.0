Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0D911CCBE
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Dec 2019 13:03:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZSx+Mkhj+DfQUqxWFk/8GyXQzbIQ8UDuieeBsrH8yAg=; b=HdUl+Rr6lu4lwG
	sCHgWRD3JiOOrKtS+bnHCHVYl8Mh6rm+952jYbNx8g5Y/hw2RU6Js+LZHg7AXlDf/dwZ5WJtkSHQU
	oz8wkOvTexItShppMibaOa1QjKRQ21Au5kkB5Ohylxtu64OM3n1iEfmmwMj481cxjExJGJuXVCIjm
	bclA66aHtsus12IFN//lDLuZGFnZtVM+oTeR3Hn02MOjT4KxBzn+Req9qcgEONs4uLxYOq/PE5Yiy
	SQ3v4Q9dltPu4nopk9exsHCLwTPpb1RtAimvhnzN1KGrbSTbv9dDRddkRHyKDl28zacqsoc7UQ8N9
	d9o0kP/N4po44xxPGCpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifNCA-00089m-Eu; Thu, 12 Dec 2019 12:03:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifNC0-00080q-7L; Thu, 12 Dec 2019 12:03:41 +0000
X-UUID: 4a131ac01ba64247965b64a0542ea646-20191212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=dail/LG0z8iZJ8tcfeMMz3hG5C4dKVGEMXa8efdIfeQ=; 
 b=emk0ikDnYR7OqJjnq1YxTC2ab8l1nyERP0vDM0f+6r1P2Qm//c7I37Oa653wunvnnKYSV3nZYveEnEyKzVf/88ivN75i9WNtdjbHzbpRM/4kH2Q3hxZxRU093UfuWm89KY4Y6L56MXdcNNx0COrQOuRlvhIQIHsNiYfOYhWoT1I=;
X-UUID: 4a131ac01ba64247965b64a0542ea646-20191212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 638340871; Thu, 12 Dec 2019 04:03:36 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 04:00:00 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Dec 2019 19:58:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Dec 2019 19:58:45 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Thomas Gleixner
 <tglx@linutronix.de>, Alexander Potapenko <glider@google.com>, Josh Poimboeuf
 <jpoimboe@redhat.com>
Subject: [PATCH v2] lib/stackdepot: Fix global out-of-bounds in stackdepot
Date: Thu, 12 Dec 2019 19:58:48 +0800
Message-ID: <20191212115848.21687-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_040340_270414_271B9A52 
X-CRM114-Status: GOOD (  10.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

If the depot_index = STACK_ALLOC_MAX_SLABS - 2 and next_slab_inited = 0,
then it will cause array out-of-bounds access, so that we should modify
the detection to avoid this array out-of-bounds bug.

Assume depot_index = STACK_ALLOC_MAX_SLABS - 3
Consider following call flow sequence:

stack_depot_save()
   depot_alloc_stack()
      if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
      depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 2
      if (depot_index + 1 < STACK_ALLOC_MAX_SLABS) //enter
         smp_store_release(&next_slab_inited, 0); //next_slab_inited = 0
      init_stack_slab()
	     if (stack_slabs[depot_index] == NULL) //enter

stack_depot_save()
   depot_alloc_stack()
      if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
      depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
      init_stack_slab(&prealloc)
         stack_slabs[depot_index + 1]  //here get global out-of-bounds

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
changes in v2:
modify call flow sequence and preconditon

---
 lib/stackdepot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/stackdepot.c b/lib/stackdepot.c
index ed717dd08ff3..7e8a15e41600 100644
--- a/lib/stackdepot.c
+++ b/lib/stackdepot.c
@@ -106,7 +106,7 @@ static struct stack_record *depot_alloc_stack(unsigned long *entries, int size,
 	required_size = ALIGN(required_size, 1 << STACK_ALLOC_ALIGN);
 
 	if (unlikely(depot_offset + required_size > STACK_ALLOC_SIZE)) {
-		if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) {
+		if (unlikely(depot_index + 2 >= STACK_ALLOC_MAX_SLABS)) {
 			WARN_ONCE(1, "Stack depot reached limit capacity");
 			return NULL;
 		}
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
