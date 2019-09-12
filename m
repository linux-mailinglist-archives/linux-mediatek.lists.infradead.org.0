Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4D5B0CFD
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 12:35:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BMRQ+auTqOC3DwBDCyAlp7EEN7mqYzie8rGA/Hy7Og8=; b=g62fbqyIbjZ/mt
	Hhnu4tDTIontYAaK5B5ooHY0SeonrJx0kxJcCR8NVoOjJGucKBT/gzR/o+KwwvzMpT5gIMeiVGsyn
	xdTQvzBfjz9oP6gdPXnsq0yeePKPN4BTppV4YBuvb93xKMWP9aBZ9WqpFnioFbRZ6LS7txV4XdXsf
	kv0gxIHWtNFYW5TwWfRLeyvTf+vAOkVJ86dQ0vU/74QyD58oIOVYGzSGBh+m/7cPRjjHegIiAftN/
	UToVJEK99YSZDZHIL/UJkteF84mMW00HaIftrWa51w1zMf9pQ4wKJxOnxClWm++6s77Sm0XI5bzKx
	pHja+oelaYVqmUZEHl9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8MRP-0005aC-Br; Thu, 12 Sep 2019 10:35:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8MRK-00050e-2b
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 10:35:03 +0000
X-UUID: 80cf54b9ca1e45ac8eff35104e021598-20190912
X-UUID: 80cf54b9ca1e45ac8eff35104e021598-20190912
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1371519688; Thu, 12 Sep 2019 02:34:55 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 03:34:53 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Sep 2019 18:34:51 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Sep 2019 18:34:52 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Subject: [PATCH] psi: put NULL char correctly in psi_write()
Date: Thu, 12 Sep 2019 18:34:52 +0800
Message-ID: <20190912103452.13281-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_033502_129246_2ACA68AE 
X-CRM114-Status: UNSURE (   8.41  )
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
Cc: Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

When passing a equal or more then 32 bytes long string to psi_write(),
psi_write() copies 31 bytes to its buf and overwrites buf[30]
with '\0'. Which makes the input string 1 byte shorter than
it should be.

Fix it by copying sizeof(buf) bytes when nbytes >= sizeof(buf).

This does not cause problems in normal use case like:
"some 500000 10000000" or "full 500000 10000000" because they
are less than 32 bytes in length.

	/* assuming nbytes == 35 */
	char buf[32];

	buf_size = min(nbytes, (sizeof(buf) - 1)); /* buf_size = 31 */
	if (copy_from_user(buf, user_buf, buf_size))
		return -EFAULT;

	buf[buf_size - 1] = '\0'; /* buf[30] = '\0' */

Before:
%cd /proc/pressure/
%echo "123456789|123456789|123456789|1234" > memory
[   22.473497] nbytes=35,buf_size=31
[   22.473775] 123456789|123456789|123456789| (print 30 chars)
%sh: write error: Invalid argument

%echo "123456789|123456789|123456789|1" > memory
[   64.916162] nbytes=32,buf_size=31
[   64.916331] 123456789|123456789|123456789| (print 30 chars)
%sh: write error: Invalid argument

After:
%cd /proc/pressure/
%echo "123456789|123456789|123456789|1234" > memory
[  254.837863] nbytes=35,buf_size=32
[  254.838541] 123456789|123456789|123456789|1 (print 31 chars)
%sh: write error: Invalid argument

%echo "123456789|123456789|123456789|1" > memory
[ 9965.714935] nbytes=32,buf_size=32
[ 9965.715096] 123456789|123456789|123456789|1 (print 31 chars)
%sh: write error: Invalid argument

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
---
 kernel/sched/psi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/psi.c b/kernel/sched/psi.c
index 6e52b67b420e..517e3719027e 100644
--- a/kernel/sched/psi.c
+++ b/kernel/sched/psi.c
@@ -1198,7 +1198,7 @@ static ssize_t psi_write(struct file *file, const char __user *user_buf,
 	if (static_branch_likely(&psi_disabled))
 		return -EOPNOTSUPP;
 
-	buf_size = min(nbytes, (sizeof(buf) - 1));
+	buf_size = min(nbytes, sizeof(buf));
 	if (copy_from_user(buf, user_buf, buf_size))
 		return -EFAULT;
 
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
