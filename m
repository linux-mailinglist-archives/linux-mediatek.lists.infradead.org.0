Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9AB1CFA7B
	for <lists+linux-mediatek@lfdr.de>; Tue, 12 May 2020 18:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyD7AyjRNL+VKdr2iFYpG8FKbtaX/qiG6n7MxNIyI8c=; b=smU0X0nHSBYXkZ
	KiAAxX0yQaO76m0ZS3ieZMpaQ7PITUbnrEVE3gITZY/0VveOBdNlMhoFdkIYghh6Qby2KbSc/OWkq
	zBK25N9s6jMb3UlOvR6THUG/Ly0Zx/1aeCbR/hxGiVfvIYWGUdDrJ7vJwSEGT5F3+wWBz0BPKtdJa
	pYMwa9XOPMSci7E7/jdfkF5u31RNMEuhDyQQSFo+ZCUCY/aW91vZvauKzceEycdZ3tZf85w6YyyLk
	cwUkRugfeEHOi79u8A7ka1nFU9roqxUk+ovZMVDIeOLRawIKTzoXyMdYnR3riYKZWriv7LydeCWBV
	EJwihcsW1WPv35GT15Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYXfj-00061Q-8Z; Tue, 12 May 2020 16:22:23 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYXfd-0005vo-2r
 for linux-mediatek@lists.infradead.org; Tue, 12 May 2020 16:22:20 +0000
Received: by mail-qk1-x742.google.com with SMTP id z80so8671921qka.0
 for <linux-mediatek@lists.infradead.org>; Tue, 12 May 2020 09:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UEnxThmKo9eCKn9Sp5S//SCIqt2NuliFRLICXjN1F8w=;
 b=qpJ2/f9jFEw2XCnsQfklOx5O1EFTzceVHfXu1J5e7cHafuTXCDfUb5YnDchiAFVf3s
 jX+crR2gfyQv5H41/px3hC3d8mYCDhouCowZVS8ZR2Dj7msbcJs+/OAa7zYP3Z3P2tZO
 au5612/l0fzYXDXwkAO7TOJKK0LaFe81pNNxI1qiP5qaeHGELr1uXlTgF66qkpZQDsHP
 iFNxirnEGsp23l/WTFAlAkszfOh7yopgd1UpMaNaY9Owii6rSyCyYgYt1WgCqEkwmVxK
 6478KCl4hBT/j869nxatLWU+X7EJihyrXYrU+t9IAOe+24XJuiL7iK5VxObMn0tyheZZ
 k8Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UEnxThmKo9eCKn9Sp5S//SCIqt2NuliFRLICXjN1F8w=;
 b=kEBosqfr/SoH4sS4UB6FkCVS1Pzs0RCMLrRS6yTopexUJquwhd3Jhc40I93S2W2u0l
 G47C1hXMwYSClyA7ZgnRSI45UvXup23lY2C6otQiR/wSody6/83AbjkgyO/H+JTPP9IY
 A9Ft7AAFa0QnBvWg7O13GmRKjoAhqPrGgpdQ9/AvXSvyggK0H1gLWHqdzujk92tHsZCV
 XagLlxMzslEMFMIPOUx/kl+dNV6MmtyvHJD2QAqkceHFlC++Ck1NQ5XwQLHQVF8bmttR
 nMMh5DBCEFLL0FxiHhhJr1u37bwZMpnyIxyDOFCAApwwYvK+QExFx2mMJmMacB1wKhBr
 tJjg==
X-Gm-Message-State: AGi0PuayJIbQMmqpRErGWiGwdwwi7xAKA9z/TiBnreHPsibaqdG2H/We
 0nms19TO9UV2EMIob/I5p/LZT17dLLlV9i5SksTBHg==
X-Google-Smtp-Source: APiQypKKckVKHehHC9iDuSvbV8NCQd5IuVhMLPefx6OQwHvGRV3/irI6drHoBEN1CdZ/5EKC+/bJI5vBQ8VqJXPyZZQ=
X-Received: by 2002:a37:9d55:: with SMTP id g82mr18935803qke.407.1589300535553; 
 Tue, 12 May 2020 09:22:15 -0700 (PDT)
MIME-Version: 1.0
References: <20200511023111.15310-1-walter-zh.wu@mediatek.com>
 <20200511180527.GZ2869@paulmck-ThinkPad-P72>
 <1589250993.19238.22.camel@mtksdccf07>
 <CACT4Y+b6ZfmZG3YYC_TkoeGaAQjSEKvF4dZ9vHzTx5iokD4zTQ@mail.gmail.com>
 <20200512142541.GD2869@paulmck-ThinkPad-P72>
 <CACT4Y+ZfzLhcG2Wy_iEMB=hJ5k=ib+X-m29jDG2Jcs7S-TPX=w@mail.gmail.com>
 <20200512161422.GG2869@paulmck-ThinkPad-P72>
In-Reply-To: <20200512161422.GG2869@paulmck-ThinkPad-P72>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 12 May 2020 18:22:04 +0200
Message-ID: <CACT4Y+aWNDntO6+Rhn0a-4N1gLOTe5UzYB9m5TnkFxG_L15cXA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] rcu/kasan: record and print call_rcu() call stack
To: "Paul E. McKenney" <paulmck@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_092217_980951_4C94FFA2 
X-CRM114-Status: GOOD (  23.65  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh Triplett <josh@joshtriplett.org>,
 kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>,
 Joel Fernandes <joel@joelfernandes.org>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 6:14 PM Paul E. McKenney <paulmck@kernel.org> wrote:
> > > > > > > This feature will record first and last call_rcu() call stack and
> > > > > > > print two call_rcu() call stack in KASAN report.
> > > > > >
> > > > > > Suppose that a given rcu_head structure is passed to call_rcu(), then
> > > > > > the grace period elapses, the callback is invoked, and the enclosing
> > > > > > data structure is freed.  But then that same region of memory is
> > > > > > immediately reallocated as the same type of structure and again
> > > > > > passed to call_rcu(), and that this cycle repeats several times.
> > > > > >
> > > > > > Would the first call stack forever be associated with the first
> > > > > > call_rcu() in this series?  If so, wouldn't the last two usually
> > > > > > be the most useful?  Or am I unclear on the use case?
> > > >
> > > > 2 points here:
> > > >
> > > > 1. With KASAN the object won't be immediately reallocated. KASAN has
> > > > 'quarantine' to delay reuse of heap objects. It is assumed that the
> > > > object is still in quarantine when we detect a use-after-free. In such
> > > > a case we will have proper call_rcu stacks as well.
> > > > It is possible that the object is not in quarantine already and was
> > > > reused several times (quarantine is not infinite), but then KASAN will
> > > > report non-sense stacks for allocation/free as well. So wrong call_rcu
> > > > stacks are less of a problem in such cases.
> > > >
> > > > 2. We would like to memorize 2 last call_rcu stacks regardless, but we
> > > > just don't have a good place for the index (bit which of the 2 is the
> > > > one to overwrite). Probably could shove it into some existing field,
> > > > but then will require atomic operations, etc.
> > > >
> > > > Nobody knows how well/bad it will work. I think we need to get the
> > > > first version in, deploy on syzbot, accumulate some base of example
> > > > reports and iterate from there.
> > >
> > > If I understood the stack-index point below, why not just move the
> > > previous stackm index to clobber the previous-to-previous stack index,
> > > then put the current stack index into the spot thus opened up?
> >
> > We don't have any index in this change (don't have memory for such index).
> > The pseudo code is"
> >
> > u32 aux_stacks[2]; // = {0,0}
> >
> > if (aux_stacks[0] != 0)
> >     aux_stacks[0] = stack;
> > else
> >    aux_stacks[1] = stack;
>
> I was thinking in terms of something like this:
>
> u32 aux_stacks[2]; // = {0,0}
>
> if (aux_stacks[0] != 0) {
>     aux_stacks[0] = stack;
> } else {
>    if (aux_stacks[1])
>         aux_stacks[0] = aux_stacks[1];
>    aux_stacks[1] = stack;
> }
>
> Whether this actually makes sense in real life, I have no idea.
> The theory is that you want the last two stacks.  However, if these
> elements get cleared at kfree() time, then I could easily believe that
> the approach you already have (first and last) is the way to go.
>
> Just asking the question, not arguing for a change!

Oh, this is so obvious... in hindsight! :)

Walter, what do you think?

I would do this. I think latter stacks are generally more interesting
wrt shedding light on a bug. The first stack may even be "statically
known" (e.g. if object is always queued into a workqueue for some lazy
initialization during construction).

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
