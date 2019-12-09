Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95D611668E
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Dec 2019 06:49:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JksgdXUadqGgwxiJcrLL52jo4NTzud+BADlB18MPQ5g=; b=oRE3x7RtphoCDT
	QHMcsG6jSczj1/ruu7LQG5wvrnJZRZLz3bKt+UHGqg91mLCPQ0Mri92dG467zPuVYXH/77A02lBQl
	pfoW7m2D539HKzejGOOY+pda8IOFpasCM2OyOeAuTr6AxBRPmPSroeS4t7aTVBI0JlwCwsjGh5ih6
	t0+xfesBE6mDV4OoXA1p+Nw8RH8ifIh2a5CVX/uUVz1XwgU+y6Kc1wmbHlE6pT/yvxrOtn/aiU47E
	L0dvSZEjeqsm6nM6X1Ver9Hodq6cyyn2RUZw5Y+TOzLu9OmO8gqlexQPUoQubV6WOtd6EBXHFBBzy
	i+xN5yvlZeWaqQg09lgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieBv6-00035M-PK; Mon, 09 Dec 2019 05:49:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieBuw-0002yH-IK; Mon, 09 Dec 2019 05:49:11 +0000
X-UUID: 7dfd98404e724f388f27a43bbaead681-20191208
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=zK5djuSKYwqaaHgHxdED8AbROBXJzib5e6bG7MyafoQ=; 
 b=T0rnmY1g38CZXStFCH3SSNkP+iHjXCP0tF0EoP6CwBeQoRi4n9o1pk9Ho96wxCubp9pWELGxyyXm0HKFcEPuSoXA/wPFmg8ZanRnFpTpvrgHuTigNbrghjq+bWzQ2KFTzoGJE5E4XRp9r8kKGYpTxsJrJfRmd+eCOr66WRNRnJ0=;
X-UUID: 7dfd98404e724f388f27a43bbaead681-20191208
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 916638455; Sun, 08 Dec 2019 21:49:06 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 8 Dec 2019 21:49:07 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 13:48:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 9 Dec 2019 13:48:36 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Thomas Gleixner
 <tglx@linutronix.de>, Alexander Potapenko <glider@google.com>, Josh Poimboeuf
 <jpoimboe@redhat.com>
Subject: [PATCH] lib/stackdepot: Fix global out-of-bounds in stackdepot
Date: Mon, 9 Dec 2019 13:48:49 +0800
Message-ID: <20191209054849.26756-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_214910_608738_E45FE5BC 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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

If the depot_index = STACK_ALLOC_MAX_SLABS - 2, then it will cause
array out-of-bounds access, so that we should modify the detection
to avoid this array out-of-bounds bug.

Consider following call flow sequence:

stack_depot_save()
   depot_alloc_stack()
      if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
      depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1

stack_depot_save()
   init_stack_slab()
      stack_slabs[depot_index + 1]  //here get global out-of-bounds

Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
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
