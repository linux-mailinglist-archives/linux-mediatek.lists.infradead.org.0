Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C031550D7
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 04:10:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZ7sUhnPYdWh9tTzWB2c8I7IAjvQj4ct3l+oe83sqrI=; b=mr/t9REusgIRue
	U0Iuzv7SJRfx7KxSeZhUPvj0TPoMe9Ntu+kFcsFEZ5dGujVQnMtJcALw3ACiGAb2OhRKf61e3vbah
	1fxOy0RFPuQL+pxOhdHfzU39m1cuZ40S7oL4CpV+JpW9uzshtcOwN5FZx1D8DVTzqe3o40Y8cWRll
	CG0yszN80FiuBSW4S21gsro54Hgk5ftV1rYI8LXePTn3AiyaEla7MuHjjji3ewRq0qVFEQeXY4wnq
	DTqefWKTLwuTm7bEf4s4aN2sD/Ua0neqPMwkRwMENRtjDQdyJhxqEtr2oZCqdvI2TAwO2YHerPATD
	16PA4lICf1bljCv0lQcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izu2M-0006KC-Pn; Fri, 07 Feb 2020 03:10:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izu2I-0006JA-V3
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 03:10:32 +0000
X-UUID: 3d6dc6485f6e43a0925f7d333e1aa524-20200206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=AVUNJMoThA1dscpdVLSgtsytpPvPRpIt9//axxaCTQs=; 
 b=FYfWbspZ+PqkShNQOic4fOJaGk+YsdcA+EL1MuhxC+NQifrNR6wn1yVG6wcVL+97JeGn3hQcCzjVQlAzl5DFwvpZ2XI+/IEdM7aal2dl01rlC+fbjxbcZAv4xiCyFSloHlZH/wifw496PpP6WW+YHn9ZXaf3IBXHN+p6l1aTkTA=;
X-UUID: 3d6dc6485f6e43a0925f7d333e1aa524-20200206
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <frankie.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2003225500; Thu, 06 Feb 2020 19:10:26 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Feb 2020 19:10:54 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 7 Feb 2020 11:09:37 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 7 Feb 2020 11:09:48 +0800
Message-ID: <1581045023.22229.46.camel@mtkswgap22>
Subject: Re: [PATCH v1 1/1] binder: transaction latency tracking for user build
From: Frankie Chang <Frankie.Chang@mediatek.com>
To: Joel Fernandes <joel@joelfernandes.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Date: Fri, 7 Feb 2020 11:10:23 +0800
In-Reply-To: <20200205154943.GE142103@google.com>
References: <1580885572-14272-1-git-send-email-Frankie.Chang@mediatek.com>
 <20200205093612.GA1167956@kroah.com> <20200205154943.GE142103@google.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_191031_015241_E0A7BA55 
X-CRM114-Status: GOOD (  24.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Todd Kjos <tkjos@android.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org,
 Arve =?ISO-8859-1?Q?Hj=F8nnev=E5g?= <arve@android.com>,
 Jian-Min.Liu@mediatek.com, linux-mediatek@lists.infradead.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2020-02-05 at 10:49 -0500, Joel Fernandes wrote:
> On Wed, Feb 05, 2020 at 09:36:12AM +0000, Greg Kroah-Hartman wrote:
> > On Wed, Feb 05, 2020 at 02:52:52PM +0800, Frankie Chang wrote:
> > > Record start/end timestamp to binder transaction.
> > > When transaction is completed or transaction is free,
> > > it would be checked if transaction latency over threshold (2 sec),
> > > if yes, printing related information for tracing.
> > > 
> > > Signed-off-by: Frankie Chang <Frankie.Chang@mediatek.com>
> > > ---
> > >  drivers/android/Kconfig           |    8 +++
> > >  drivers/android/binder.c          |  107 +++++++++++++++++++++++++++++++++++++
> > >  drivers/android/binder_internal.h |    4 ++
> > >  3 files changed, 119 insertions(+)
> > > 
> > > diff --git a/drivers/android/Kconfig b/drivers/android/Kconfig
> > > index 6fdf2ab..7ba80eb 100644
> > > --- a/drivers/android/Kconfig
> > > +++ b/drivers/android/Kconfig
> > > @@ -54,6 +54,14 @@ config ANDROID_BINDER_IPC_SELFTEST
> > >  	  exhaustively with combinations of various buffer sizes and
> > >  	  alignments.
> > >  
> > > +config BINDER_USER_TRACKING
> > > +	bool "Android Binder transaction tracking"
> > > +	help
> > > +	  Used for track abnormal binder transaction which is over 2 seconds,
> > > +	  when the transaction is done or be free, this transaction would be
> > > +	  checked whether it executed overtime.
> > > +	  If yes, printing out the detail info about it.
> > > +
> > >  endif # if ANDROID
> > >  
> > >  endmenu
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > index e9bc9fc..5a352ee 100644
> > > --- a/drivers/android/binder.c
> > > +++ b/drivers/android/binder.c
> > > @@ -76,6 +76,11 @@
> > >  #include "binder_internal.h"
> > >  #include "binder_trace.h"
> > >  
> > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > +#include <linux/rtc.h>
> > > +#include <linux/time.h>
> > > +#endif
> > > +
> > >  static HLIST_HEAD(binder_deferred_list);
> > >  static DEFINE_MUTEX(binder_deferred_lock);
> > >  
> > > @@ -591,8 +596,104 @@ struct binder_transaction {
> > >  	 * during thread teardown
> > >  	 */
> > >  	spinlock_t lock;
> > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > +	struct timespec timestamp;
> > > +	struct timeval tv;
> > > +#endif
> > >  };
> > >  
> > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > +
> > > +/*
> > > + * binder_print_delay - Output info of a delay transaction
> > > + * @t:          pointer to the over-time transaction
> > > + */
> > > +static void binder_print_delay(struct binder_transaction *t)
> > > +{
> > > +	struct rtc_time tm;
> > > +	struct timespec *startime;
> > > +	struct timespec cur, sub_t;
> > > +
> > > +	ktime_get_ts(&cur);
> > > +	startime = &t->timestamp;
> > > +	sub_t = timespec_sub(cur, *startime);
> > > +
> > > +	/* if transaction time is over than 2 sec,
> > > +	 * show timeout warning log.
> > > +	 */
> > > +	if (sub_t.tv_sec < 2)
> > > +		return;
> > > +
> > > +	rtc_time_to_tm(t->tv.tv_sec, &tm);
> > > +
> > > +	spin_lock(&t->lock);
> > > +	pr_info_ratelimited("%d: from %d:%d to %d:%d",
> > > +			    t->debug_id,
> > > +			    t->from ? t->from->proc->pid : 0,
> > > +			    t->from ? t->from->pid : 0,
> > > +			    t->to_proc ? t->to_proc->pid : 0,
> > > +			    t->to_thread ? t->to_thread->pid : 0);
> > > +	spin_unlock(&t->lock);
> > > +
> > > +	pr_info_ratelimited(" total %u.%03ld s code %u start %lu.%03ld android %d-%02d-%02d %02d:%02d:%02d.%03lu\n",
> > > +			    (unsigned int)sub_t.tv_sec,
> > > +			    (sub_t.tv_nsec / NSEC_PER_MSEC),
> > > +			    t->code,
> > > +			    (unsigned long)startime->tv_sec,
> > > +			    (startime->tv_nsec / NSEC_PER_MSEC),
> > > +			    (tm.tm_year + 1900), (tm.tm_mon + 1), tm.tm_mday,
> > > +			    tm.tm_hour, tm.tm_min, tm.tm_sec,
> > > +			    (unsigned long)(t->tv.tv_usec / USEC_PER_MSEC));
> > > +}
> > 
> > Ick, why not use a tracepoint for this instead?
> > 
> > And what is userspace supposed to do with this if they see it?
> 
> Or another option is to implement this separately outside of binder.c using
> register_trace_* on the existing binder tracepoints, similar to what say the
> block tracer or preempt-off tracers do. Call it, say, "binder-latency tracer".
> 
> That way all of this tracing code is in-kernel but outside of binder.c.
> 
> thanks,
> 
>  - Joel
> 
Time limitation of recording is the reason why we don't use tracepoint.
In some situations, the exception is caused by a series of transactions
interaction.
Some abnormal transactions may be pending for a long time ago, they
could not be recorded due to buffer limited.
Therefore, it is difficult to dig out the root causes which caused by
the earlier transactions occurred.

Another point is that we'd just like to record the abnormal
transactions.
But most of transactions are less than 2 seconds, these are not the key
point we need to focus on.

thanks,

Frankie
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
