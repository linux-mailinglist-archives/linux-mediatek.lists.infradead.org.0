Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D51A8B61
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 21:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wylxy90sWNajbShWcksKac9ZputKQ1pSEF0rt8wX7xI=; b=qdocK2Odw4DhVQ
	Jbm+aQPRhWXSplVY1apoEznRlRQZgGZmvwhsol4ocUHjFenOExNYhXob7TJN0sMZi738zMZ00O2iM
	bkki338fCj2Pr75NYPAj1urb+67ELCmBHi6qCOPpIC+IcuwmDBWufsrLFsKQ8tYE9yg2xw7xF8RWr
	+1yZLj41YglXCon9S3WHDprWKj40MXc9HMsxx/fOURzR+6IbWnW7mVPVmlbP9IOXu72PUDoHJ4KMl
	lQbvLdifK+BgmKqsap+swgmzppXAOdE6W4gOH9oSztyIXimHgOeGVrpdv+bxAZkFWokVDdG3TqcMF
	H1p+CtPfHgovo/tA+zJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jORWs-0003YK-I7; Tue, 14 Apr 2020 19:47:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jORWo-0003Tw-Hr
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 19:47:28 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so700172ljg.8
 for <linux-mediatek@lists.infradead.org>; Tue, 14 Apr 2020 12:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JJK+Q+UKkDQaruBYiWcWjNudKJdkietMzkyNFKfwUfY=;
 b=NI2CbHQmy0JJhl4ytQt1TbKJDLFhbGdB6cugYS+62mNdDgladQHA0hgMSpm0uXhk9o
 OenLF/9qzYoyXCkuv5tboOvQ6DYSBgPak6ZedVQ8kUkb2+i3/FPQaVyVDxSnO7vm1ajm
 O8Ee2EwUzbtxLpnuvL5B21vXVbTPdRKawqDL3gkIiIr+Jrz202HaTyAyl3ggcMnK6bgF
 aHJmI2L8Q4H3BoMBCL08Cbenfkc2Ktqw+9w5IwhZlfXIkOWQjb/acdtVBaaBe5mpT7GX
 kwMHIbu70LH9UdN5hfijW4qXB2bKDyy7J84+hu3Wd69S/RaX2rI2sxEYDfE0xTjOAuIN
 MV3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JJK+Q+UKkDQaruBYiWcWjNudKJdkietMzkyNFKfwUfY=;
 b=GRKhZt7Xx3HY8BplMyh+rkhMKHFaB/bJb4aKRgXt682WOpVhvGltoUbAv/W8j4ChOE
 GSEqFJerTLlL9Q0VVStLoupp1Mb3n2QJ0/KOx6aXr3g+kXjF92X96ozF2B4WQmyDzN8S
 AG4JyEVE11HRGcxfP0+RF3vDJYTm3IJ148zB9xpwK1rGb+koG01Iwh/iZ/ybrBFcCgek
 s/7R9lNSQgtZMo8Y7FErXqc2/W+GhZ7doSqcOLavsK+317U7csoqEX0W1k866QLl/siO
 aDFuQLn4z3PKVpVG0X9mF2ECW3ZTHba5zATZNxnDmeE2WYIqJvtGs85AJibiXduUiL+A
 epdQ==
X-Gm-Message-State: AGi0PuZSIi+Om6CXAG/IUlrlR3tK8krUkv08CXOD1B37HMCLWF6/OJnN
 KkL0UUYYxgM7jRzYxca2FuEgA61vk72bO+/ouMEdxoqc
X-Google-Smtp-Source: APiQypLGUYk3suy/eSUDKH5ICT7nYCw/nP+Vjdcx+EdWiVN7l3yhVL9RbojbaGVteYNrgDbwy7b43T8oKlKY7EU+/X4=
X-Received: by 2002:a2e:6c05:: with SMTP id h5mr1012285ljc.217.1586893643490; 
 Tue, 14 Apr 2020 12:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200407095107.1988-1-miles.chen@mediatek.com>
 <20200407181908.GB94792@iweiny-DESK2.sc.intel.com>
In-Reply-To: <20200407181908.GB94792@iweiny-DESK2.sc.intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Wed, 15 Apr 2020 01:25:07 +0530
Message-ID: <CAFqt6zYztssQEgMJtafr_ZdMYvBwAU-BZ4Z4tOWQPJ6eFnHq2Q@mail.gmail.com>
Subject: Re: [PATCH] mm/gup: fix null pointer dereference detected by coverity
To: Ira Weiny <ira.weiny@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_124726_606040_D0A50C4D 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jrdr.linux[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Linux-MM <linux-mm@kvack.org>, Miles Chen <miles.chen@mediatek.com>,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 11:49 PM Ira Weiny <ira.weiny@intel.com> wrote:
>
> On Tue, Apr 07, 2020 at 05:51:07PM +0800, Miles Chen wrote:
> > In fixup_user_fault(), it is possible that unlocked is NULL,
> > so we should test unlocked before using it.
> >
> > For example, in arch/arc/kernel/process.c, NULL is passed
> > to fixup_user_fault().
> >
> > SYSCALL_DEFINE3(arc_usr_cmpxchg, int *, uaddr, int, expected, int, new)
> > {
> > ...
> >       ret = fixup_user_fault(current, current->mm, (unsigned long) uaddr,
> >                              FAULT_FLAG_WRITE, NULL);
> > ...
> > }
> >
> > Fixes: 4a9e1cda2748 ("mm: bring in additional flag for fixup_user_fault to signal unlock")
> > Signed-off-by: Miles Chen <miles.chen@mediatek.com>
>
> Reviewed-by: Ira Weiny <ira.weiny@intel.com>

Acked-by: Souptick Joarder <jrdr.linux@gmail.com>

>
> > ---
> >  mm/gup.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/mm/gup.c b/mm/gup.c
> > index da3e03185144..a68d11dc232d 100644
> > --- a/mm/gup.c
> > +++ b/mm/gup.c
> > @@ -1230,7 +1230,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
> >       if (ret & VM_FAULT_RETRY) {
> >               down_read(&mm->mmap_sem);
> >               if (!(fault_flags & FAULT_FLAG_TRIED)) {
> > -                     *unlocked = true;
> > +                     if (unlocked)
> > +                             *unlocked = true;
> >                       fault_flags |= FAULT_FLAG_TRIED;
> >                       goto retry;
> >               }
> > --
> > 2.18.0
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
