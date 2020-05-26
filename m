Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AA21C8531
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 10:55:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MwQyHXWNaJalnfI3zYvQl01YyUzWaXvHoB05/2SMxkw=; b=MTucaUGeur3e8f
	QgMZVqlZ3iOfl3dVcuWYMGKUYw8++puWGkocIvyR8ExY7RGGmlIQmxNBQhYaOqIDJF73umoRaa4hy
	0jxWl29BHzsXVP060ziiZcCRLqIlzbGrczl/ENjiW0N25qYAOGFyvSx9klMUk3AsE3m8Syj8qmhGn
	b9pCfKlIS6RmM0DiyKrlGxHFODzvqwHoy95KWQpY39hh+BUIlSvgiyVcH5UTzyPeETiRoNz8tsCDY
	tGXJP5YaLK2VAaexxacEcOXmMNl0utlEZ6U7OBoGc8LKCfj6KAWoHKkb30fYaDEtSOzD0Jsh35cNK
	vZK8OC/gHTv0qM69QxKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWcJp-00022g-SF; Thu, 07 May 2020 08:55:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcJm-000226-UT
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 08:55:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE94E20747;
 Thu,  7 May 2020 08:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588841746;
 bh=BYFjIQ2FXPPjn16NFH9FGYAHNpd8UOP5Qgo14rF5m9Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hZJ1Rt9yAObBobdC0tleLtv7rWr/gieWrc4lAnIStR66D/dPXZ0rkgVA1Uo0Bp/95
 Maxjg93InCPAtytBJS7rXbGw1Q+lLCaGKGA5eKPDwev8aZ+dJRYtUGCigu+yyoo/Cn
 LHWwH8Ec5kgMS9iVoeUU682k/GV11wWyiu7Tea90=
Date: Thu, 7 May 2020 10:55:44 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Frankie Chang <Frankie.Chang@mediatek.com>
Subject: Re: [PATCH v4 3/3] binder: add transaction latency tracer
Message-ID: <20200507085544.GB1097552@kroah.com>
References: <20200430085105.GF2496467@kroah.com>
 <1588839055-26677-1-git-send-email-Frankie.Chang@mediatek.com>
 <1588839055-26677-4-git-send-email-Frankie.Chang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588839055-26677-4-git-send-email-Frankie.Chang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_015547_023460_F46B8D1C 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Jian-Min Liu <Jian-Min.Liu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 04:10:55PM +0800, Frankie Chang wrote:
> From: "Frankie.Chang" <Frankie.Chang@mediatek.com>
> 
> Record start/end timestamp for binder transaction.
> When transaction is completed or transaction is free,
> it would be checked if transaction latency over threshold (2 sec),
> if yes, printing related information for tracing.

Shouldn't that "printing" go to the trace buffer and not to the kernel
information log?

> 
> /* Implement details */
> - Add latency tracer module to monitor slow transaction.
>   The trace_binder_free_transaction would not be enabled
>   by default. Monitoring which transaction is too slow to
>   cause some of exceptions is important. So we hook the
>   tracepoint to call the monitor function.
> 
> Signed-off-by: Frankie.Chang <Frankie.Chang@mediatek.com>
> ---
>  drivers/android/Kconfig                 |    8 +++
>  drivers/android/Makefile                |    1 +
>  drivers/android/binder.c                |    2 +
>  drivers/android/binder_internal.h       |   13 ++++
>  drivers/android/binder_latency_tracer.c |  105 +++++++++++++++++++++++++++++++
>  drivers/android/binder_trace.h          |   26 +++++++-
>  6 files changed, 152 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/android/binder_latency_tracer.c
> 
>  Change from v4:
>    split up into patch series.
> 
>  Change from v3:
>    use tracepoints for binder_update_info and print_binder_transaction_ext,
>    instead of custom registration functions.
> 
>  Change from v2:
>    create transaction latency module to monitor slow transaction.
> 
>  Change from v1:
>    first patchset.
> 
> diff --git a/drivers/android/Kconfig b/drivers/android/Kconfig
> index 6fdf2ab..7ba80eb 100644
> --- a/drivers/android/Kconfig
> +++ b/drivers/android/Kconfig
> @@ -54,6 +54,14 @@ config ANDROID_BINDER_IPC_SELFTEST
>  	  exhaustively with combinations of various buffer sizes and
>  	  alignments.
>  
> +config BINDER_USER_TRACKING
> +	bool "Android Binder transaction tracking"
> +	help
> +	  Used for track abnormal binder transaction which is over 2 seconds,
> +	  when the transaction is done or be free, this transaction would be
> +	  checked whether it executed overtime.
> +	  If yes, printing out the detail info about it.
> +
>  endif # if ANDROID
>  
>  endmenu
> diff --git a/drivers/android/Makefile b/drivers/android/Makefile
> index c9d3d0c9..552e8ac 100644
> --- a/drivers/android/Makefile
> +++ b/drivers/android/Makefile
> @@ -4,3 +4,4 @@ ccflags-y += -I$(src)			# needed for trace events
>  obj-$(CONFIG_ANDROID_BINDERFS)		+= binderfs.o
>  obj-$(CONFIG_ANDROID_BINDER_IPC)	+= binder.o binder_alloc.o
>  obj-$(CONFIG_ANDROID_BINDER_IPC_SELFTEST) += binder_alloc_selftest.o
> +obj-$(CONFIG_BINDER_USER_TRACKING)	+= binder_latency_tracer.o
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 4c3dd98..b89d75a 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2657,6 +2657,7 @@ static void binder_transaction(struct binder_proc *proc,
>  		return_error_line = __LINE__;
>  		goto err_alloc_t_failed;
>  	}
> +	trace_binder_update_info(t, e);
>  	INIT_LIST_HEAD(&t->fd_fixups);
>  	binder_stats_created(BINDER_STAT_TRANSACTION);
>  	spin_lock_init(&t->lock);
> @@ -5145,6 +5146,7 @@ static void print_binder_transaction_ilocked(struct seq_file *m,
>  		   t->to_thread ? t->to_thread->pid : 0,
>  		   t->code, t->flags, t->priority, t->need_reply);
>  	spin_unlock(&t->lock);
> +	trace_print_binder_transaction_ext(m, t);
>  
>  	if (proc != to_proc) {
>  		/*
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index ed61b3e..24d7beb 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -12,6 +12,11 @@
>  #include <linux/types.h>
>  #include <linux/uidgid.h>
>  
> +#ifdef CONFIG_BINDER_USER_TRACKING
> +#include <linux/rtc.h>
> +#include <linux/time.h>
> +#endif
> +
>  struct binder_context {
>  	struct binder_node *binder_context_mgr_node;
>  	struct mutex context_mgr_node_lock;
> @@ -131,6 +136,10 @@ struct binder_transaction_log_entry {
>  	uint32_t return_error;
>  	uint32_t return_error_param;
>  	char context_name[BINDERFS_MAX_NAME + 1];
> +#ifdef CONFIG_BINDER_USER_TRACKING
> +	struct timespec timestamp;
> +	struct timeval tv;
> +#endif
>  };
>  
>  struct binder_transaction_log {
> @@ -520,6 +529,10 @@ struct binder_transaction {
>  	 * during thread teardown
>  	 */
>  	spinlock_t lock;
> +#ifdef CONFIG_BINDER_USER_TRACKING
> +	struct timespec timestamp;
> +	struct timeval tv;
> +#endif
>  };
>  
>  /**
> diff --git a/drivers/android/binder_latency_tracer.c b/drivers/android/binder_latency_tracer.c
> new file mode 100644
> index 0000000..45c14fb
> --- /dev/null
> +++ b/drivers/android/binder_latency_tracer.c
> @@ -0,0 +1,105 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2019 MediaTek Inc.
> + */
> +
> +#include <linux/module.h>
> +#include <uapi/linux/android/binder.h>
> +#include "binder_alloc.h"
> +#include "binder_internal.h"
> +#include "binder_trace.h"
> +
> +/*
> + * probe_binder_free_transaction - Output info of a delay transaction
> + * @t:          pointer to the over-time transaction
> + */
> +void probe_binder_free_transaction(void *ignore, struct binder_transaction *t)
> +{
> +	struct rtc_time tm;
> +	struct timespec *startime;
> +	struct timespec cur, sub_t;
> +
> +	ktime_get_ts(&cur);
> +	startime = &t->timestamp;
> +	sub_t = timespec_sub(cur, *startime);
> +
> +	/* if transaction time is over than 2 sec,
> +	 * show timeout warning log.
> +	 */
> +	if (sub_t.tv_sec < 2)
> +		return;

Why is 2 seconds somehow "magic" here?



> +
> +	rtc_time_to_tm(t->tv.tv_sec, &tm);
> +
> +	spin_lock(&t->lock);
> +	pr_info_ratelimited("%d: from %d:%d to %d:%d",
> +			t->debug_id,
> +			t->from ? t->from->proc->pid : 0,
> +			t->from ? t->from->pid : 0,
> +			t->to_proc ? t->to_proc->pid : 0,
> +			t->to_thread ? t->to_thread->pid : 0);
> +	spin_unlock(&t->lock);

Why is the lock ok to give up here and not after the next call?

> +
> +	pr_info_ratelimited(" total %u.%03ld s code %u start %lu.%03ld android %d-%02d-%02d %02d:%02d:%02d.%03lu\n",
> +			(unsigned int)sub_t.tv_sec,
> +			(sub_t.tv_nsec / NSEC_PER_MSEC),
> +			t->code,
> +			(unsigned long)startime->tv_sec,
> +			(startime->tv_nsec / NSEC_PER_MSEC),
> +			(tm.tm_year + 1900), (tm.tm_mon + 1), tm.tm_mday,
> +			tm.tm_hour, tm.tm_min, tm.tm_sec,
> +			(unsigned long)(t->tv.tv_usec / USEC_PER_MSEC));
> +}
> +
> +static void probe_binder_update_info(void *ignore, struct binder_transaction *t,
> +			   struct binder_transaction_log_entry *e)
> +{
> +	ktime_get_ts(&e->timestamp);
> +	do_gettimeofday(&e->tv);
> +	e->tv.tv_sec -= (sys_tz.tz_minuteswest * 60);
> +	memcpy(&t->timestamp, &e->timestamp, sizeof(struct timespec));
> +	memcpy(&t->tv, &e->tv, sizeof(struct timeval));

No locking needed?


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
