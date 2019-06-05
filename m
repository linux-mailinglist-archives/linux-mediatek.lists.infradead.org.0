Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3673D35DFC
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 15:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rfPaanmDyK8ANvhiYzUoiEaBnVlFgbzG/mP616rZ0nQ=; b=nuErahwfzd3A7W
	aXJm5xMqYkw4jHTckdefINMC1jTfEUzn/CECv9FfjCKnqg3f+qNWw1QazCiSu1giK6IEf01aS1WEg
	Chr2xGzhmpbqkXrHMwwq4FoEt+ueZ7U+68z2k92w9R+RHXGvPDjTnlpwNNoraUKUPK8NM/gYacaFu
	oxhy2wDngULWvSc3LYNw/yckzMXfpk9v/kzOaBdmzQ5pQqNTZhdLH3pckv+xETpdW9AmaWYNOTQOJ
	8lrMkdELrzefE+sLIGPBCksrcWrDyIAJTTx7W/MFRNpSdtXzLEL9kUE43fKMpPqxydS4KJuuLXNAt
	KYmar94Hsr/TCVfhwW8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYW57-0001Ob-5D; Wed, 05 Jun 2019 13:35:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYW55-0001OP-4a
 for linux-mediatek@bombadil.infradead.org; Wed, 05 Jun 2019 13:35:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=P1+fW1PPTiIie9P8lhC5eebUVAEeMvr7xd6pNvurfAs=; b=PpmAast+LnxIikTrYPfxApTuq
 JWZrZ3f9tvN5BAfBWaFhAb/N0WeQOXQBB/ydyUKy4SQp5mWlT5uwUiww7PM2xBML3Pm34dSbeXi45
 j6KnS+yxz2oPjmY5vL62mEnaGcvdh2zxfuYJUtegK4p2lnxTwxHSqFSARHjipZVnX7sO8yOhIaKgH
 R/vDw+is8sCNO/cz9fXfKfvkLzfwa6AvyqSqCEW1hC5hSXTt7jIsXbUz8uO0vUCHusxTs4HKYnRaG
 /Mk+8uLTbo22t+oXn/f/Oab9P6zSxyW6bfdTB0QQLKE1HbDnr7eIzrUL2GEGt8XRpkiOHipGL73Z/
 eFja6YhxQ==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYW52-0006zz-5t; Wed, 05 Jun 2019 13:35:52 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id EB19F202674D6; Wed,  5 Jun 2019 15:35:50 +0200 (CEST)
Date: Wed, 5 Jun 2019 15:35:50 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] locking/lockdep: Remove unnecessary DEBUG_LOCKS_WARN_ON()
Message-ID: <20190605133550.GZ3402@hirez.programming.kicks-ass.net>
References: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
 <20190605124633.GM15030@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605124633.GM15030@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Eason Lin <eason-yh.lin@mediatek.com>, Ingo Molnar <mingo@redhat.com>,
 linux-mediatek@lists.infradead.org, wsd_upstream@mediatek.com,
 Kobe Wu <kobe-cp.wu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 01:46:33PM +0100, Will Deacon wrote:
> On Thu, May 30, 2019 at 07:59:35PM +0800, Kobe Wu wrote:
> > DEBUG_LOCKS_WARN_ON() will turn off debug_locks and 
> > makes print_unlock_imbalance_bug() return directly.
> > 
> > Remove a redundant whitespace.
> > 
> > Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
> > ---
> >  kernel/locking/lockdep.c |    4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
> > index d06190f..37c0a5e 100644
> > --- a/kernel/locking/lockdep.c
> > +++ b/kernel/locking/lockdep.c
> > @@ -4049,8 +4049,8 @@ static int __lock_downgrade(struct lockdep_map *lock, unsigned long ip)
> >  	 * So we're all set to release this lock.. wait what lock? We don't
> >  	 * own any locks, you've been drinking again?
> >  	 */
> > -	if (DEBUG_LOCKS_WARN_ON(depth <= 0))
> > -		 return print_unlock_imbalance_bug(curr, lock, ip);
> > +	if (depth <= 0)
> > +		return print_unlock_imbalance_bug(curr, lock, ip);
> 
> Hmm, feels more like we should keep the DEBUG_LOCKS_WARN_ON but just
> return 0 when it fires.
> 
> Peter?

Nah, we should definitely print something when we try and release a lock
while not holding any. I think I'll take this one as is.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
