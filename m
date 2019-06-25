Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6887D52FF3
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 12:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wqoOyYx0dsy+M/bxJLLyJ+dCCs7ijbhYXS0Exq6lJg=; b=Tqbww++IstI3JM
	r/93YMun1nNi0LP6N7bVj1IDB6OsDTcAKC76eW1bhhsp+K57eFQxQjtAVKRI6RglmYQulHw1gfw+r
	z+81QVzj9HLfkml6/EcmRyYRq2YsccSJPTtzdqTqb0RPuDqBLjdX79WAmAXGVgF2FezKuqyG1+if+
	n+LP6eVf/HagrjBNPJgCj9u0AJOGwTdFBgSrLItltOF2uW73iBKIytH3Tzd6J98LDgSJ7gF2Mplul
	6H05vRu6zv4zJHuCUjFDjYT4rNpVz2JqmTUviOp9Ekhct+S6RMdCtSUyXyimgJrbb3x5jlejV3YI2
	x3loA6w/lk6LeD1Tx6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfimi-0008MK-35; Tue, 25 Jun 2019 10:34:44 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfimX-0008Ce-Ev; Tue, 25 Jun 2019 10:34:33 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 11FC12063D031; Tue, 25 Jun 2019 12:34:30 +0200 (CEST)
Date: Tue, 25 Jun 2019 12:34:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Andreas Gruenbacher <agruenba@redhat.com>
Subject: Re: [RFC][PATCH] wake_up_var() memory ordering
Message-ID: <20190625103430.GW3402@hirez.programming.kicks-ass.net>
References: <20190624165012.GH3436@hirez.programming.kicks-ass.net>
 <CAHc6FU7j5iW7WQoxN_OSfvK4zxv_MxTWJpiNsqFW8TEDMX1rjw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHc6FU7j5iW7WQoxN_OSfvK4zxv_MxTWJpiNsqFW8TEDMX1rjw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Martin Brandenburg <martin@omnibond.com>, linux-cachefs@redhat.com,
 Mike Snitzer <snitzer@redhat.com>, linux-aio@kvack.org,
 David Airlie <airlied@linux.ie>,
 samba-technical <samba-technical@lists.samba.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Will Deacon <will.deacon@arm.com>, dri-devel@lists.freedesktop.org,
 David Howells <dhowells@redhat.com>, Chris Mason <clm@fb.com>,
 dm-devel@redhat.com, keyrings@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 linux-afs@lists.infradead.org, Alasdair Kergon <agk@redhat.com>,
 Mike Marshall <hubcap@omnibond.com>, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 James Morris <jmorris@namei.org>, cluster-devel <cluster-devel@redhat.com>,
 Antti Palosaari <crope@iki.fi>, Matthias Brugger <matthias.bgg@gmail.com>,
 Paul McKenney <paulmck@linux.vnet.ibm.com>, intel-gfx@lists.freedesktop.org,
 devel@lists.orangefs.org, "Serge E. Hallyn" <serge@hallyn.com>,
 Santosh Shilimkar <santosh.shilimkar@oracle.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Sean Wang <sean.wang@mediatek.com>, Josef Bacik <josef@toxicpanda.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Sterba <dsterba@suse.com>,
 MauroCarvalho Chehab <mchehab@kernel.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 linux-arm-kernel@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 Linux NFS Mailing List <linux-nfs@vger.kernel.org>, netdev@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Steve French <sfrench@samba.org>,
 linux-bluetooth@vger.kernel.org, LSM <linux-security-module@vger.kernel.org>,
 Benjamin LaHaise <bcrl@kvack.org>, Daniel Vetter <daniel@ffwll.ch>,
 Bob Peterson <rpeterso@redhat.com>, linux-media@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 11:19:35AM +0200, Andreas Gruenbacher wrote:
> > diff --git a/fs/gfs2/glops.c b/fs/gfs2/glops.c
> > index cf4c767005b1..666629ea5da7 100644
> > --- a/fs/gfs2/glops.c
> > +++ b/fs/gfs2/glops.c
> > @@ -227,6 +227,7 @@ static void gfs2_clear_glop_pending(struct gfs2_inode *ip)
> >                 return;
> >
> >         clear_bit_unlock(GIF_GLOP_PENDING, &ip->i_flags);
> > +       smp_mb__after_atomic();
> >         wake_up_bit(&ip->i_flags, GIF_GLOP_PENDING);
> 
> This should become clear_and_wake_up_bit as well, right? There are
> several more instances of the same pattern.

Only if we do as David suggested and make clean_and_wake_up_bit()
provide the RELEASE barrier.

That is, currently clear_and_wake_up_bit() is

	clear_bit()
	smp_mb__after_atomic();
	wake_up_bit();

But the above is:

	clear_bit_unlock();
	smp_mb__after_atomic();
	wake_up_bit()

the difference is that _unlock() uses RELEASE semantics, where
clear_bit() does not.

The difference is illustrated with something like:

	cond = true;
	clear_bit()
	smp_mb__after_atomic();
	wake_up_bit();

In this case, a remote CPU can first observe the clear_bit() and then
the 'cond = true' store. When we use clear_bit_unlock() this is not
possible, because the RELEASE barrier ensures that everything before,
stays before.

> >  }
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
