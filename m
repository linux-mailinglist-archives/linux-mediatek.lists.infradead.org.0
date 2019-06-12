Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB5E41DD6
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 09:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJa/nTr7/mR7WKGISkdJSKmMP9i9vefiSE9gvVZzeJs=; b=dF76m3/VwQvB1m
	VAKr/aWUqPDqh3+qD/tBuDyax08CLy8RULo/Z+bhIwEcTpmKHEt4z39ajHh6M1wOhDVfxdBLpTjXA
	OPycTszwCtekRsyvIE43PDj0BSK6Qr+jsdtVecVPK72dEU+K9tqzzKNZcfRjDBjlIegd8nfrS8VAN
	VnHhE+S5uoO5x3pXBcPbsTprcb+LwSTxsUXYJknp+HGYlIA+MWjmT/hqY1vsW1fvlPFQvc5BYI2EN
	fbLwTWs5toIX+NNVTZw21XTulw1lnatyhiEn4Hp/k1+ykB8+BdUL+ttilmq73jOOzLz8lzHZqzBn3
	mfJF4Uz8yuwFRRK0FIxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haxmG-0003pi-RR; Wed, 12 Jun 2019 07:34:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haxmD-0003pc-UZ
 for linux-mediatek@bombadil.infradead.org; Wed, 12 Jun 2019 07:34:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jBDIAeIRS2SozSLknVU3YAvBw/DUL0oz2roJDkB2aJ0=; b=SMQruRvjU1LtEm2/zbP/APP9Y
 E6ZddySRQRdDZgiM0M+GHocoooxi0/UFum/JtD9T6InntcSLluniorF5i7pbnaJXaX4LXy5B8QB2P
 XLvmTVryjaXQBX7xVjjkzaHX999JgJPPmzEAFZ+N64BDi0cJxs3rcEqPYxvwUx2oOYhVgX2nprEph
 q+mTVdRThFKJZN/6DMv++xMmmYF2Jwgto6jZfoSBA/jjA95yoFi0m/ZOgHR/5DuyVDkYrtTjDYnXQ
 1ZhC3Ou9bXor1f2TIqqqop0Y1dgFDmZmJ50a/gbWYBhIv02DPeO87Z0kLaP4m529MnkfaWPhBDyeS
 6BkV/vCXg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haxm8-00042Q-Mz; Wed, 12 Jun 2019 07:34:29 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B2CEA20259523; Wed, 12 Jun 2019 09:34:25 +0200 (CEST)
Date: Wed, 12 Jun 2019 09:34:25 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kobe Wu <kobe-cp.wu@mediatek.com>
Subject: Re: [PATCH] locking/lockdep: Fix UBSAN warnings
Message-ID: <20190612073425.GD3436@hirez.programming.kicks-ass.net>
References: <1560318544-27635-1-git-send-email-kobe-cp.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560318544-27635-1-git-send-email-kobe-cp.wu@mediatek.com>
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

On Wed, Jun 12, 2019 at 01:49:04PM +0800, Kobe Wu wrote:
> Fix complaints from UBSAN about signed integer overflow.
> 
> ========================================================================
> UBSAN: Undefined behaviour in kernel/locking/lockdep.c:2998:3
> signed integer overflow:

I don't mind the patch, but this is an UBSAN bug and cannot therefore be
a reason.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
