Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEDE35D2C
	for <lists+linux-mediatek@lfdr.de>; Wed,  5 Jun 2019 14:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mI2JnX9gkIkBedW08oLqTCGlTZ0PImF4P8Eg5fpQAJs=; b=Jmp0d9c0199rBi
	n1aoTblCt9IG6A1+BrQhfgAAUOoZVu1TfVml+z3KOxSD6JkBUDbT4cgmbuIQ6EzeW9QCu3RB8+nBF
	6pE0L3JgpBhCi+85g1Nx0ydpEr8ueBPUUiWt+RCJQnhQ1b5xNv/X+FbhcQ0xIWOFUGwmsiMFyRFZt
	B4fYleJa3b0s14bNAAwSFzm2a5JPWpeVpXLp2lQKnjrkw+Ug1fTvSS0xSLLJ87S2Yi4V68q056d3I
	ObksLyfU4TlHy4nWqZEnUw9luwv7g2rDdTNsikvnaptlmhpOqgyxrWUN4fZNxueKsnqdIVx5sPWfS
	96t2+W1qxN9sEV9Im9GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVJR-0006w9-3n; Wed, 05 Jun 2019 12:46:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVJN-0006vg-LD
 for linux-mediatek@lists.infradead.org; Wed, 05 Jun 2019 12:46:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA0CB80D;
 Wed,  5 Jun 2019 05:46:36 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 95D733F246;
 Wed,  5 Jun 2019 05:46:35 -0700 (PDT)
Date: Wed, 5 Jun 2019 13:46:33 +0100
From: Will Deacon <will.deacon@arm.com>
To: Kobe Wu <kobe-cp.wu@mediatek.com>
Subject: Re: [PATCH] locking/lockdep: Remove unnecessary DEBUG_LOCKS_WARN_ON()
Message-ID: <20190605124633.GM15030@fuggles.cambridge.arm.com>
References: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559217575-30298-1-git-send-email-kobe-cp.wu@mediatek.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_054637_700912_6D024BB6 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Eason Lin <eason-yh.lin@mediatek.com>, Ingo Molnar <mingo@redhat.com>,
 linux-mediatek@lists.infradead.org, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 07:59:35PM +0800, Kobe Wu wrote:
> DEBUG_LOCKS_WARN_ON() will turn off debug_locks and 
> makes print_unlock_imbalance_bug() return directly.
> 
> Remove a redundant whitespace.
> 
> Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>
> ---
>  kernel/locking/lockdep.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/locking/lockdep.c b/kernel/locking/lockdep.c
> index d06190f..37c0a5e 100644
> --- a/kernel/locking/lockdep.c
> +++ b/kernel/locking/lockdep.c
> @@ -4049,8 +4049,8 @@ static int __lock_downgrade(struct lockdep_map *lock, unsigned long ip)
>  	 * So we're all set to release this lock.. wait what lock? We don't
>  	 * own any locks, you've been drinking again?
>  	 */
> -	if (DEBUG_LOCKS_WARN_ON(depth <= 0))
> -		 return print_unlock_imbalance_bug(curr, lock, ip);
> +	if (depth <= 0)
> +		return print_unlock_imbalance_bug(curr, lock, ip);

Hmm, feels more like we should keep the DEBUG_LOCKS_WARN_ON but just
return 0 when it fires.

Peter?

Will

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
