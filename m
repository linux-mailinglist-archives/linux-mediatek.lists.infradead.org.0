Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA98250974
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 13:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tccJRu6os1NBSWn8kFtyWdsQs7feD8xcGi55JQi6u9c=; b=UWTjTTXT3tQAxc
	N3xkV7lomeFY1P+XI/iAp3Eubcb0EmNOIASp8XmELJONxt477hAqQLRpFLRM9lz+JTvWzRtKnOIBg
	xUQRTFZMocfbQ4n24U9U0TIW/QKiM+6/0jI75uc6JmjwYszVJkmW3SlMBvEMz2mlS/l2Q1L8Bkj8L
	gtvxvz/0sD0AIn7gMYTrkRi+/sQCy1MHHHLlR3gIXXzk9KhnX9z6KjPNpYkqfzd/D4ADZ2VvW6sMN
	UxD9as50vrc7Kefkk5rja1oUvl+3tUZRXnwj7kBqLs+/eOVhGjY7vjTQ3elrhdpPhB9UzFplB6Bwu
	d7/mUisMV+UeT1LN9kgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMqN-0005KE-4p; Mon, 24 Jun 2019 11:09:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMqL-0005K3-0v
 for linux-mediatek@bombadil.infradead.org; Mon, 24 Jun 2019 11:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQxPxAScvNTcWtPkf++eXOMhlPm8mIyJg2MRpmT3uIE=; b=FYekUYaKVsBjuVv2nmuoUzwUd
 WaVp6vf/1NmHwBwyUH87j/5zOblDR2DcWtgUgIgGwrnUaJId5eIGPMXV5DAXKlxw/KRm3No3SruSm
 zHNkILGZRyctJGD8KG4085YNGYOJx+NgmUJ1H2UXVPaWNew6YRoz2ttfSpi9ZFIw4G5pY9q6IKvEW
 +d1tyKf3X+jT9yge1uxGCLa+m/9hF+rJjcGTKO9TLfquPVuyp2SoX2OZJmaD20MorZOlwcQoHPg1c
 8Z/xorFI5LUiQ69ygzVNOTj0/aJgwQOi4xCWZBmBFUU+P57WRFBKMLdOrHkJ02psn5+2HwEOsPP9S
 YkWWzNktg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMqE-0007sd-R2; Mon, 24 Jun 2019 11:08:55 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 44162203C694B; Mon, 24 Jun 2019 13:08:52 +0200 (CEST)
Date: Mon, 24 Jun 2019 13:08:52 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kobe Wu <kobe-cp.wu@mediatek.com>
Subject: Re: [PATCH] locking/lockdep: Save and display stack trace of held
 locks
Message-ID: <20190624110852.GV3419@hirez.programming.kicks-ass.net>
References: <1561363259-14705-1-git-send-email-kobe-cp.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561363259-14705-1-git-send-email-kobe-cp.wu@mediatek.com>
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
Cc: linux-mediatek@lists.infradead.org, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>, wsd_upstream@mediatek.com,
 Eason Lin <eason-yh.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 04:00:59PM +0800, Kobe Wu wrote:
> Save the stack trace of held locks when lock_acquire() is invoked
> and display the stack trace when lockdep_print_held_locks() is
> invoked. The runtime stack trace of held locks are helpful in
> analyzing code flow and lockdep's warning.
> 
> Save stack trace of each held lock will increase runtime overhead
> and memory consumption. The operation will be activated under
> CONFIG_LOCKDEP_TRACE_HELD_LOCK. So the impact will only occur
> when CONFIG_LOCKDEP_TRACE_HELD_LOCK=y.

Yeah, I don't see the point of this. If you cannot find where the lock
got taken you've bigger problems.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
