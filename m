Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61E9155863
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 14:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRNx7Q34iY0pXTwEwhXBel2uIJM9juQPzHtM75RkPQU=; b=c7LI2IIElTLLEu
	FHxqGmCNiIORCxyr1DbwJloBhrtWNuBfWONpqgTwmPL3l0fd3GKcOivYqmOJlgnbyO231LgPjaD7Z
	pXHEYGVQlqGm/htsnrc+pUUoOyDob9M1DAQ21KSzsa3v1KX0xfQYwRvAnZJBU6ARzaP1JLVsAI+c3
	41vlI88tCqe4PF/EP5QaGHLoX7wMiPEIpZNKzPjTVEkmvKxnV7VDCqFX/Z7OctTeNS/9CQ3TJ0egw
	uW6qxueDHoxg3mYxmpnYoN8JyFXRmInU461W8RR+nrzl+xhozPyJ8lkssFE0bMeovl025cPoIvyRm
	dYi7BpCHMPsCfSu8m9Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j03ea-0000uC-Q0; Fri, 07 Feb 2020 13:26:40 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j03eX-0000sz-L3
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 13:26:39 +0000
Received: by mail-qv1-xf43.google.com with SMTP id n8so966449qvg.11
 for <linux-mediatek@lists.infradead.org>; Fri, 07 Feb 2020 05:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6DLdx59m7mdSNjXwgrV5ORcqFDOMlsVb2GMSq54KHXw=;
 b=db7an+6Q+QD8AZ5ZFhfpIkf54OZDuXo/vtbZyKe3PIOFoU02y1jTlbqAi0hbfFiExs
 aep0FdA8N0e2j3cFYR7Oq70dRRtnTbJdjNinDJpixDimYL3uDFNiDg9F9NloINqq6zjg
 S+l+omYHxziezVvaZ+GBkXSJwMxOKcNAOFCwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6DLdx59m7mdSNjXwgrV5ORcqFDOMlsVb2GMSq54KHXw=;
 b=c1qWNm+LlmJ1jz6eUVFpb0wOGFd7Dpw3w13RP0VO1fzgZe7Bgsjya7IIcqzUgGqAa2
 GGjQHXSlz1+igIwi15w7TeFaCy3DJmU1o8GaCFm2/e5HKY8Ak4MKGTzj6CFsf+XOD5al
 CDsaCKRnGr+8hL0+tZZ9AJT3BuF/3T4KzZGoDAPqbNl8uusRwFNVUurnr44WODQkayi7
 sAKt93Do5E7iXO7jDPrhaWhFBgu4B8HTfJmGGuNr0eY3hjcXoHQ9x6d3br8mvP/CEpgP
 nCoNWkpDTQ1ajfh51EMDtHlk5d0/2BUMiD6POKrR7bsUUfd5mAO06FN578zhLd3gt7FF
 GpTw==
X-Gm-Message-State: APjAAAUKRQu48G6Z3yuy/kSa5BZjQe/YM/Cp8X9RTEGvDKS77sxxtUUm
 6Nn+DnbbDFkTOgr318kOVZ9Z+Q==
X-Google-Smtp-Source: APXvYqzotbC6frxCqF3Z9GOiUce3RSyRDFse+s1myciWq+Xb3pUnMz4Mr1iKW+t4YLOtiL1efEZHzA==
X-Received: by 2002:ad4:4b08:: with SMTP id r8mr6882597qvw.250.1581081996011; 
 Fri, 07 Feb 2020 05:26:36 -0800 (PST)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id 24sm1325047qka.32.2020.02.07.05.26.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 05:26:35 -0800 (PST)
Date: Fri, 7 Feb 2020 08:26:35 -0500
From: Joel Fernandes <joel@joelfernandes.org>
To: Frankie Chang <Frankie.Chang@mediatek.com>
Subject: Re: [PATCH v1 1/1] binder: transaction latency tracking for user build
Message-ID: <20200207132635.GB121785@google.com>
References: <1580885572-14272-1-git-send-email-Frankie.Chang@mediatek.com>
 <20200205093612.GA1167956@kroah.com>
 <20200205154943.GE142103@google.com>
 <1581045023.22229.46.camel@mtkswgap22>
 <20200207031759.GA121785@google.com>
 <1581056939.22229.55.camel@mtkswgap22>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581056939.22229.55.camel@mtkswgap22>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_052637_700462_D0A2630E 
X-CRM114-Status: GOOD (  32.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Jian-Min.Liu@mediatek.com, linux-mediatek@lists.infradead.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 02:28:59PM +0800, Frankie Chang wrote:
> On Thu, 2020-02-06 at 22:17 -0500, Joel Fernandes wrote:
> > On Fri, Feb 07, 2020 at 11:10:23AM +0800, Frankie Chang wrote:
> > > On Wed, 2020-02-05 at 10:49 -0500, Joel Fernandes wrote:
> > > > On Wed, Feb 05, 2020 at 09:36:12AM +0000, Greg Kroah-Hartman wrote:
> > > > > On Wed, Feb 05, 2020 at 02:52:52PM +0800, Frankie Chang wrote:
> > > > > > Record start/end timestamp to binder transaction.
> > > > > > When transaction is completed or transaction is free,
> > > > > > it would be checked if transaction latency over threshold (2 sec),
> > > > > > if yes, printing related information for tracing.
> > > > > > 
> > > > > > Signed-off-by: Frankie Chang <Frankie.Chang@mediatek.com>
> > > > > > ---
> > > > > >  drivers/android/Kconfig           |    8 +++
> > > > > >  drivers/android/binder.c          |  107 +++++++++++++++++++++++++++++++++++++
> > > > > >  drivers/android/binder_internal.h |    4 ++
> > > > > >  3 files changed, 119 insertions(+)
> > > > > > 
> > > > > > diff --git a/drivers/android/Kconfig b/drivers/android/Kconfig
> > > > > > index 6fdf2ab..7ba80eb 100644
> > > > > > --- a/drivers/android/Kconfig
> > > > > > +++ b/drivers/android/Kconfig
> > > > > > @@ -54,6 +54,14 @@ config ANDROID_BINDER_IPC_SELFTEST
> > > > > >  	  exhaustively with combinations of various buffer sizes and
> > > > > >  	  alignments.
> > > > > >  
> > > > > > +config BINDER_USER_TRACKING
> > > > > > +	bool "Android Binder transaction tracking"
> > > > > > +	help
> > > > > > +	  Used for track abnormal binder transaction which is over 2 seconds,
> > > > > > +	  when the transaction is done or be free, this transaction would be
> > > > > > +	  checked whether it executed overtime.
> > > > > > +	  If yes, printing out the detail info about it.
> > > > > > +
> > > > > >  endif # if ANDROID
> > > > > >  
> > > > > >  endmenu
> > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > > index e9bc9fc..5a352ee 100644
> > > > > > --- a/drivers/android/binder.c
> > > > > > +++ b/drivers/android/binder.c
> > > > > > @@ -76,6 +76,11 @@
> > > > > >  #include "binder_internal.h"
> > > > > >  #include "binder_trace.h"
> > > > > >  
> > > > > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > > > > +#include <linux/rtc.h>
> > > > > > +#include <linux/time.h>
> > > > > > +#endif
> > > > > > +
> > > > > >  static HLIST_HEAD(binder_deferred_list);
> > > > > >  static DEFINE_MUTEX(binder_deferred_lock);
> > > > > >  
> > > > > > @@ -591,8 +596,104 @@ struct binder_transaction {
> > > > > >  	 * during thread teardown
> > > > > >  	 */
> > > > > >  	spinlock_t lock;
> > > > > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > > > > +	struct timespec timestamp;
> > > > > > +	struct timeval tv;
> > > > > > +#endif
> > > > > >  };
> > > > > >  
> > > > > > +#ifdef CONFIG_BINDER_USER_TRACKING
> > > > > > +
> > > > > > +/*
> > > > > > + * binder_print_delay - Output info of a delay transaction
> > > > > > + * @t:          pointer to the over-time transaction
> > > > > > + */
> > > > > > +static void binder_print_delay(struct binder_transaction *t)
> > > > > > +{
> > > > > > +	struct rtc_time tm;
> > > > > > +	struct timespec *startime;
> > > > > > +	struct timespec cur, sub_t;
> > > > > > +
> > > > > > +	ktime_get_ts(&cur);
> > > > > > +	startime = &t->timestamp;
> > > > > > +	sub_t = timespec_sub(cur, *startime);
> > > > > > +
> > > > > > +	/* if transaction time is over than 2 sec,
> > > > > > +	 * show timeout warning log.
> > > > > > +	 */
> > > > > > +	if (sub_t.tv_sec < 2)
> > > > > > +		return;
> > > > > > +
> > > > > > +	rtc_time_to_tm(t->tv.tv_sec, &tm);
> > > > > > +
> > > > > > +	spin_lock(&t->lock);
> > > > > > +	pr_info_ratelimited("%d: from %d:%d to %d:%d",
> > > > > > +			    t->debug_id,
> > > > > > +			    t->from ? t->from->proc->pid : 0,
> > > > > > +			    t->from ? t->from->pid : 0,
> > > > > > +			    t->to_proc ? t->to_proc->pid : 0,
> > > > > > +			    t->to_thread ? t->to_thread->pid : 0);
> > > > > > +	spin_unlock(&t->lock);
> > > > > > +
> > > > > > +	pr_info_ratelimited(" total %u.%03ld s code %u start %lu.%03ld android %d-%02d-%02d %02d:%02d:%02d.%03lu\n",
> > > > > > +			    (unsigned int)sub_t.tv_sec,
> > > > > > +			    (sub_t.tv_nsec / NSEC_PER_MSEC),
> > > > > > +			    t->code,
> > > > > > +			    (unsigned long)startime->tv_sec,
> > > > > > +			    (startime->tv_nsec / NSEC_PER_MSEC),
> > > > > > +			    (tm.tm_year + 1900), (tm.tm_mon + 1), tm.tm_mday,
> > > > > > +			    tm.tm_hour, tm.tm_min, tm.tm_sec,
> > > > > > +			    (unsigned long)(t->tv.tv_usec / USEC_PER_MSEC));
> > > > > > +}
> > > > > 
> > > > > Ick, why not use a tracepoint for this instead?
> > > > > 
> > > > > And what is userspace supposed to do with this if they see it?
> > > > 
> > > > Or another option is to implement this separately outside of binder.c using
> > > > register_trace_* on the existing binder tracepoints, similar to what say the
> > > > block tracer or preempt-off tracers do. Call it, say, "binder-latency tracer".
> > > > 
> > > > That way all of this tracing code is in-kernel but outside of binder.c.
> > > > 
> > > > thanks,
> > > > 
> > > >  - Joel
> > > > 
> > > Time limitation of recording is the reason why we don't use tracepoint.
> > > In some situations, the exception is caused by a series of transactions
> > > interaction.
> > > Some abnormal transactions may be pending for a long time ago, they
> > > could not be recorded due to buffer limited.
> > 
> > register_trace_* does not use the trace buffer so I am not sure what you
> > mean. I am asking you to use tracepoints, not ftrace events.
> > 
> > thanks,
> > 
> >  - Joel
> > 
> The existing binder tracepoint may not be precise enough because there
> is no proper tracepoint which can represent the real finished time of
> transaction.

May be you can add such TP then?

> The reason why we don't put the code outside binder.c is that structure
> of binder_transaction didn't put in header file.
> If it could be moved to binder_internal.h, then we can add
> "binder-latency tracer" as you mentioned earlier.

That should be doable.

The reason I don't like custom tracing logic in core files as your patch is
doing, is that it is doubtful if a lot of people would use it to warrant
adding into a core file. In this case, probably a separate tracer (outside of
binder.c) is a better option so as to not pollute the core files.

thanks,

 - Joel


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
