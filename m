Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 508C214D6DB
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 Jan 2020 07:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qVSSdd+xrOqPe6laYrWmW91TCBsZ4d3bFhRm3gX7fnc=; b=n7gXmOZBprzurm
	3nwWiRtoCRx9cY6xmlj3uc5CVZ6xU6UPTUk4nXrYfyW1fgYcW08mHD3FY6oz9F30F0jJnN8m396Bm
	b6Or28y2BcLpIbXjNKpQFywNPodweI9adudLNNK1rFp/jTocGaXeP76lLncgfh/kIgEWw44QQH4AG
	2nFgQLG0Eqk37T0fQnPzIne6IeIs8zsheEcb/l0jdpoZjnEA6P4lY55OMiH45YQ4v2Fdfj/D5RP88
	VPoR4WbybaI6+I3MX4jthqPQfg5CL7IzB/iRdtRpb7nXkns5mT0cpeGT/7q9nW2MLXxNa17vFhtz2
	OIODlNHPBflwImUbU/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3jq-0000d6-8Y; Thu, 30 Jan 2020 06:55:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3is-0006v2-13; Thu, 30 Jan 2020 06:54:43 +0000
X-UUID: a92aa108a944468384a247f7a86f6134-20200129
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=nT9JMqdZL40d6DpIqTDz/AwubrwRPPy0W7SQItA5Q+w=; 
 b=bvCPjljzGWgWhxaHBpAEAwLoBNL0M/XBXFDOuYs9dwX9R7Mzz27QgkmpWPa/ufJdtzi78/cHh2h5fCwFpMZ/Guwjgu1g3ONybeWWG7Iqi8YsNugJw9VCLvlGTdFmSU5L7OXFhmAva8lMJAxZOj/lY42RLOJyHvU+d91nqB/zfks=;
X-UUID: a92aa108a944468384a247f7a86f6134-20200129
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 389337364; Wed, 29 Jan 2020 22:54:35 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 29 Jan 2020 22:44:57 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 Jan 2020 14:44:31 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 30 Jan 2020 14:43:35 +0800
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, "Alexander
 Potapenko" <glider@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, "Greg
 Kroah-Hartman" <gregkh@linuxfoundation.org>, Kate Stewart
 <kstewart@linuxfoundation.org>
Subject: [PATCH v3] lib/stackdepot: Fix global out-of-bounds in stackdepot
Date: Thu, 30 Jan 2020 14:44:30 +0800
Message-ID: <20200130064430.17198-1-walter-zh.wu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_225442_241252_B0D10B67 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
         if (stack_slabs[depot_index] == NULL) //enter and exit

stack_depot_save()
   depot_alloc_stack()
      if (unlikely(depot_index + 1 >= STACK_ALLOC_MAX_SLABS)) //pass
      depot_index++  //depot_index = STACK_ALLOC_MAX_SLABS - 1
      init_stack_slab(&prealloc)
         stack_slabs[depot_index + 1]  //here get global out-of-bounds

Cc: Dmitry Vyukov <dvyukov@google.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Alexander Potapenko <glider@google.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Kate Stewart <kstewart@linuxfoundation.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kate Stewart <kstewart@linuxfoundation.org>
Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
---
changes in v2:
modify call flow sequence and preconditon

changes in v3:
add some reviewers
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
