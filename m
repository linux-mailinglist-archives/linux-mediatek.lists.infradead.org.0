Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0B1CA441
	for <lists+linux-mediatek@lfdr.de>; Thu,  3 Oct 2019 18:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g/XCq9NWjq0Gr+UY22VlyYPjoZ5NbZ/MweDOQtIbIAA=; b=pu64/98glhkDZv
	80/ERNi06djnT1IouCG/8GW47oM7WF8jXYwrfXi1XJDOvcGckBI1wG/3EcDLd6eCSPZJcKmNzR9KU
	iqwqCq2svQx7Q5BqX5Ap1o/kW+NaGrYGhESi2pUhL8IRwD8A5qGCcRxHhGTdAF1Vo0aek9HOoNbun
	lDYPE+do6Q6xdEtBVI5PTKvk17jUqiPwCNNFk5/zgCxxp37WoDLkQ1F0q73p/bOSPP03mHsn3a6MW
	uJnj/egxHmUUpfcx+IJ4/TjB0Q7D3ZNzxBP/IwYCF6ohnvJvO2SrE1xxb0ihAw9I6VwuB4HE1FEoX
	hCtV0P+0OqsYsaS1KiXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG41u-0001yH-Hz; Thu, 03 Oct 2019 16:32:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG41q-0001xS-O8
 for linux-mediatek@lists.infradead.org; Thu, 03 Oct 2019 16:32:36 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E488D2070B;
 Thu,  3 Oct 2019 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570120354;
 bh=/F0eqdyJKABuAv6cUV90z+rRaHqrSXh+R+pUYfvNIeM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hyNrsDJgzeSVqV6TdvRrCxXScZT3Q8jO8Vatj1nTf1bwpNcbN62HgEal4or264Azw
 zEKi8L6ea0GaiUM24pSggDpcPq0T+zA3FFYJNOkPCcL1zBwfDP9fwIXyGKiYMgIwK4
 I3FJUe3EniqmBhMduaJ1DYYlM+1og2iwop2TdpAs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.2 190/313] sched/psi: Correct overly pessimistic size
 calculation
Date: Thu,  3 Oct 2019 17:52:48 +0200
Message-Id: <20191003154551.693711288@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191003154533.590915454@linuxfoundation.org>
References: <20191003154533.590915454@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_093234_835991_8DE5AC05 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, wsd_upstream@mediatek.com,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Miles Chen <miles.chen@mediatek.com>

[ Upstream commit 4adcdcea717cb2d8436bef00dd689aa5bc76f11b ]

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

Also remove the superfluous parentheses.

Signed-off-by: Miles Chen <miles.chen@mediatek.com>
Cc: <linux-mediatek@lists.infradead.org>
Cc: <wsd_upstream@mediatek.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Link: https://lkml.kernel.org/r/20190912103452.13281-1-miles.chen@mediatek.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/sched/psi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/sched/psi.c b/kernel/sched/psi.c
index 6e52b67b420e7..517e3719027e6 100644
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
2.20.1




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
