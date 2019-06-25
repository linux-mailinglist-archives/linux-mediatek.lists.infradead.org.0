Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAAB54E9C
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Jun 2019 14:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0KtQel4tYXNIuV9wJsetz4FVIgPGSB2mYf0W5QtMnk=; b=NwjmdB7y/ZbnWf
	zSdUYk9tWEdUiEfChK7JnHXaMnvFarHCpLFY3F1Gy0asooSGMqQEMV/s5+bP/S0dVz91YdJg5810Q
	NdND63/xo7i38Eqj9CnPRE3H+o1jlJ4rC0GExilVAkt3Qh43XDB9qNbUJJCUuink8hBY0HNmGeJfW
	mBCiFHeNgZx1ZWktP2SCgzJ/cGCcriv8XX4SszVVjf+T/QPSiG8SH5O+t8+Cx2bksBO4wCHEktVWx
	lAujGHAC3/CWsafX3+HOoHGl9k+JCilGVUzinfSAJbIkJBn0o9iWbCmNsUGWt6iL4/5N5EtBS75oY
	qrVh7BRSn/OD7B/qk3mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkMr-0003wJ-QM; Tue, 25 Jun 2019 12:16:09 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkJP-0007VO-Db
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 12:12:38 +0000
Received: by mail-oi1-f195.google.com with SMTP id w196so12281269oie.7
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 05:12:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xtX13vSVbmx57mGL/Q0hXK8kpnRo7HFPa5oOdLxipaM=;
 b=hOQYZo6uoZWhI8dNAxff4eLxF8JGcPlzD/xx9Rh2U+u5DHlr3J7htsEyaHSpi+sYaQ
 R/YT9fnHFHfyeclYVCMkU7pOWC3nLSpuAFWUwNXqC8qE++cryPtgRN0gBXk/GExrZOsO
 6xPwxdf6cpIudbI1It43BvWvU52Dq2OnGCHiSQnlxzrfQ4PuJRaaY7MqscSxNGGUxqJG
 y6n85IL1owBusufoHIUKDZhQHr37KNg3iqddkS3cNCwZ9DtPu3vQxeTf0LKgmAGhJGze
 uabF9SnJBLc1W7PW9x44/xzt9GXsTHtNiDZIuz2H3JVuYkpeSufcCteHwOQY6S/9/paP
 3/ug==
X-Gm-Message-State: APjAAAVKPUXrMQjpXGE4fPkBo0HbYcN4K0xcEME72Oa0z22FssmuTCHl
 h4V+GbVsUO85L+l3FaB6Eiah1n5awNzDt/E6stNWlg==
X-Google-Smtp-Source: APXvYqzIF0shhnL3kTWbxYnFTIfJoQ9NWdzzlYJbdr7wT1RELz57W5jZU6ihqAiJYZbsgta0nM0Q5SDLuZyhNwwIoP0=
X-Received: by 2002:aca:b58b:: with SMTP id
 e133mr14182998oif.147.1561464753642; 
 Tue, 25 Jun 2019 05:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190624165012.GH3436@hirez.programming.kicks-ass.net>
 <CAHc6FU7j5iW7WQoxN_OSfvK4zxv_MxTWJpiNsqFW8TEDMX1rjw@mail.gmail.com>
 <20190625103430.GW3402@hirez.programming.kicks-ass.net>
In-Reply-To: <20190625103430.GW3402@hirez.programming.kicks-ass.net>
From: Andreas Gruenbacher <agruenba@redhat.com>
Date: Tue, 25 Jun 2019 14:12:22 +0200
Message-ID: <CAHc6FU6zUCdQZ1AfN2KYcPYVKc5bwvc0bD7=-KZpFXws+F9QZQ@mail.gmail.com>
Subject: Re: [RFC][PATCH] wake_up_var() memory ordering
To: Peter Zijlstra <peterz@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_051235_499491_BDCA250B 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Tue, 25 Jun 2019 at 12:36, Peter Zijlstra <peterz@infradead.org> wrote:
> On Tue, Jun 25, 2019 at 11:19:35AM +0200, Andreas Gruenbacher wrote:
> > > diff --git a/fs/gfs2/glops.c b/fs/gfs2/glops.c
> > > index cf4c767005b1..666629ea5da7 100644
> > > --- a/fs/gfs2/glops.c
> > > +++ b/fs/gfs2/glops.c
> > > @@ -227,6 +227,7 @@ static void gfs2_clear_glop_pending(struct gfs2_inode *ip)
> > >                 return;
> > >
> > >         clear_bit_unlock(GIF_GLOP_PENDING, &ip->i_flags);
> > > +       smp_mb__after_atomic();
> > >         wake_up_bit(&ip->i_flags, GIF_GLOP_PENDING);
> >
> > This should become clear_and_wake_up_bit as well, right? There are
> > several more instances of the same pattern.
>
> Only if we do as David suggested and make clean_and_wake_up_bit()
> provide the RELEASE barrier.

(It's clear_and_wake_up_bit, not clean_and_wake_up_bit.)

> That is, currently clear_and_wake_up_bit() is
>
>         clear_bit()
>         smp_mb__after_atomic();
>         wake_up_bit();
>
> But the above is:
>
>         clear_bit_unlock();
>         smp_mb__after_atomic();
>         wake_up_bit()
>
> the difference is that _unlock() uses RELEASE semantics, where
> clear_bit() does not.
>
> The difference is illustrated with something like:
>
>         cond = true;
>         clear_bit()
>         smp_mb__after_atomic();
>         wake_up_bit();
>
> In this case, a remote CPU can first observe the clear_bit() and then
> the 'cond = true' store. When we use clear_bit_unlock() this is not
> possible, because the RELEASE barrier ensures that everything before,
> stays before.

Now I'm confused because clear_and_wake_up_bit() in mainline does use
clear_bit_unlock(), so it's the exact opposite of what you just said.

Thanks,
Andreas

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
