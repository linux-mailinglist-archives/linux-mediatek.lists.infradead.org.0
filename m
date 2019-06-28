Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEFA3597CC
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 11:43:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FY4hkzcxuEwoCjC15/QHXRu8JxgS91Xwn2lPFBq7PY=; b=bFQwlLO1yLsijR
	dhYj0v+Bv37q7B6zJCp4dHdpkvnDG9RJ9+Jpv6LacFpofMBSr5Gsdrz1Q+rRAKDr2iSlys/+e3Bbe
	4NnaEGg7G3hA1FobPIVNw4EPBTnDcvMBJHwJ0rf2Wy2UvBSnyN+Qiq/dEJo7dLv7pckdAwp0i2Yjh
	sb6pg91YJUcqGxE4Wr4o1U5q32leeJgb3c2IEJ40IOjdIDCHP/3UyCL1qDHUrQ0PFtdfG1ryqoQ/N
	618FB0l/wQ4FTQ39qK2Xi4bMZKeCv5ifa4zIGzrCwz8A44CTDL9lkvzNN321mgWWIuauG9R+1JZoR
	SeiVJsjb39yiJxoOd67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgnPi-0007rw-14; Fri, 28 Jun 2019 09:43:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgnPW-0007nq-Oy
 for linux-mediatek@lists.infradead.org; Fri, 28 Jun 2019 09:43:16 +0000
X-UUID: 8da932ddbe0543ed8951950f19ef11e6-20190628
X-UUID: 8da932ddbe0543ed8951950f19ef11e6-20190628
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <kobe-cp.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1686540784; Fri, 28 Jun 2019 01:42:55 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 02:42:54 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 17:42:52 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Jun 2019 17:42:40 +0800
Message-ID: <1561714960.19339.12.camel@mtkswgap22>
Subject: Re: [PATCH] locking/lockdep: Save and display stack trace of held
 locks
From: Kobe-CP Wu <Kobe-CP.Wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>
Date: Fri, 28 Jun 2019 17:42:40 +0800
In-Reply-To: <20190624110852.GV3419@hirez.programming.kicks-ass.net>
References: <1561363259-14705-1-git-send-email-kobe-cp.wu@mediatek.com>
 <20190624110852.GV3419@hirez.programming.kicks-ass.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_024314_880679_20870123 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-mediatek@lists.infradead.org, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>, wsd_upstream@mediatek.com,
 Eason Lin <eason-yh.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-06-24 at 13:08 +0200, Peter Zijlstra wrote:
> On Mon, Jun 24, 2019 at 04:00:59PM +0800, Kobe Wu wrote:
> > Save the stack trace of held locks when lock_acquire() is invoked
> > and display the stack trace when lockdep_print_held_locks() is
> > invoked. The runtime stack trace of held locks are helpful in
> > analyzing code flow and lockdep's warning.
> > 
> > Save stack trace of each held lock will increase runtime overhead
> > and memory consumption. The operation will be activated under
> > CONFIG_LOCKDEP_TRACE_HELD_LOCK. So the impact will only occur
> > when CONFIG_LOCKDEP_TRACE_HELD_LOCK=y.
> 
> Yeah, I don't see the point of this. If you cannot find where the lock
> got taken you've bigger problems.

There are some examples which can explain why stack trace are helpful.

<#1>

It provides more information for debug_show_all_locks().
debug_show_all_locks() is called by other debug functions and helpful in
analyzing problems and understanding system status.

If a task goes into sleeping with holding several locks for a long time,
it may result in problems. It would be easy to know how the task goes
into sleeping and as a beginning to analyze why the task keep sleeping
from the stack trace. Because the task goes into sleeping after the
stack trace. We can research what happened after the code flow.

For the following example, (&f->f_pos_lock) is the lock we cannot
acquire for a long time. We want to know what happened on
logd.klogd/344. Why logd.klogd/344 keep sleeping? Only final function
entry and task name is hard to understand the code flow and condition.

Showing all locks held in the system:
1 lock held by logd.klogd/344:
 #0:  (&f->f_pos_lock){+.+.+.}, at: [<ffffff8182a8ae04>] __fdget_pos
+0x44/0x58
...

<#2>

Provide more information for "BUG: task/pid still has locks held!".

The original warning is as following. It not easy to know where the lock
is held. Because the lock could be used in many functions and could be
packed by other functions.

=====================================
[ BUG: vpud/657 still has locks held! ]
4.9.117+ #2 Tainted: G S      W  O   
-------------------------------------
1 lock held by vpud/657 on CPU#6:
 #0:  (&dev->enc_mutex){+.+.+.}, at: [<ffffff8c5ca3ca74>] venc_lock
+0xec/0x108
Call trace:
[<ffffff8c5be8d190>] dump_backtrace+0x0/0x2bc
[<ffffff8c5be8d188>] show_stack+0x18/0x20
[<ffffff8c5c268274>] dump_stack+0xa8/0xf8
[<ffffff8c5bf4c1e4>] debug_check_no_locks_held+0x174/0x17c
[<ffffff8c5bf9e1dc>] futex_wait_queue_me+0xf4/0x16c
[<ffffff8c5bf9bc44>] futex_wait+0x14c/0x334
[<ffffff8c5bf9a534>] do_futex+0x10c/0x16d0
[<ffffff8c5bf9f688>] compat_SyS_futex+0x100/0x158
[<ffffff8c5be83e00>] el0_svc_naked+0x34/0x38

If there is a stack trace for reference, it will be easy to understand
and resolve this problem.

1 lock held by vpud/657/[0] on CPU#6:
 #0:  (&dev->enc_mutex){+.+.+.}, at: [<ffffff8c5ca3ca74>] venc_lock
+0xec/0x108
       lock_acquire+0x224/0x25c
       __mutex_lock_common+0x88/0x728
       mutex_lock_nested+0x50/0x60
       venc_lock+0xec/0x108
       venc_encode_prepare+0x20/0x68
       vcu_unlocked_ioctl+0x91c/0x1108
       vcu_unlocked_compat_ioctl+0x110/0x238
       compat_SyS_ioctl+0x128/0x244
       el0_svc_naked+0x34/0x38

For the same reason, it is helpful in analyzing "BUG: held lock freed!" 
and "INFO: possible recursive locking detected".


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
