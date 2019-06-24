Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD875060D
	for <lists+linux-mediatek@lfdr.de>; Mon, 24 Jun 2019 11:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQOEAYgkVGu4zRnfjWpTNMVExG01QGbDGSqLGiUrshg=; b=JiP6iA6LQ0Ls/i
	qL9isKwKPWrASwRF4Qhs57gWsxl/38b6U9vqnkb0XZB9yPzJK84B8NNQcz6PyeJLpjfdSJPMUWF4S
	2L3aWL5+w9nzmSxugADRgqSQz30DuAHoXmskectEvXbHlEAHrFAFDsSIUdW3Yoxzz6xhGpgrxbgjr
	lljZeM2WlhFX0QsO9Dtl/e9f/7Wxc2CgqUuNR/7JSLAWdbGokX9PfSw7nCIwUX3aqm+4GqqQ/9+0m
	bfXgQTD+aUC/rKZ6wxNDX9+91L7Dc6GDr422jnk+AAmWW5bvl6IVPfyZj/8kA8t7IURG+vCO4Py1A
	nzusFGa3hCqSOkzoi0dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLYq-0000M3-5j; Mon, 24 Jun 2019 09:46:52 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLYn-0000LW-5L; Mon, 24 Jun 2019 09:46:49 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 3B2B22021621E; Mon, 24 Jun 2019 11:46:47 +0200 (CEST)
Date: Mon, 24 Jun 2019 11:46:47 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Kobe Wu <kobe-cp.wu@mediatek.com>
Subject: Re: [PATCH] locking/lockdep: increase size of counters for lockdep
 statistics
Message-ID: <20190624094647.GD3436@hirez.programming.kicks-ass.net>
References: <1561365348-16050-1-git-send-email-kobe-cp.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561365348-16050-1-git-send-email-kobe-cp.wu@mediatek.com>
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

On Mon, Jun 24, 2019 at 04:35:48PM +0800, Kobe Wu wrote:
> When system has been running for a long time, signed integer
> counters are not enough for some lockdep statistics. Using
> unsigned long counters can satisfy the requirement. Besides,
> most of lockdep statistics are unsigned. It is better to use
> unsigned int instead of int.
> 
> Remove unused variables.
> - max_recursion_depth
> - nr_cyclic_check_recursions
> - nr_find_usage_forwards_recursions
> - nr_find_usage_backwards_recursions
> 
> Signed-off-by: Kobe Wu <kobe-cp.wu@mediatek.com>

Thanks!

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
