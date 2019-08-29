Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A82C5A1661
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 12:38:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iLzhfF17LlTml71WqKaezQH+rIdct4GP1mpe4vfosY=; b=Exj9iIwrNwE6Dw
	VmBc0l8kNgJ3UnGUBW1ItHHIlB5KQCDdi1xUgCjp7Rk73rnKrhAEDd68YluJaymGvRz3kfVWo69Gd
	2MwPHOjhRxrzh2dBvkkxW++eJ7PWjvrBnqQ72/ReCgZ87577p9rwe9enaAWHARr/JQZO19CR6l/Vl
	ekuBp21ph3zSYe6cumyAXGe16ohRvh8DecHJzzF9+3hlsHd1EQFVCBztK99fTe7OZA4LnnMaHLAUF
	4pTIjPLCcOQdtKpoeBfLG6vD1BcKY+HD94KEoN43ibr3aYmfhT5teBsjPLOYHEKhX5yFhmisyPZk1
	8OiI00hLYjZ1PiwQStpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3HpJ-0003nN-0J; Thu, 29 Aug 2019 10:38:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Hp1-0003cJ-Cy; Thu, 29 Aug 2019 10:38:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D896B360;
 Thu, 29 Aug 2019 03:38:28 -0700 (PDT)
Received: from [10.1.194.37] (e113632-lin.cambridge.arm.com [10.1.194.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CE9F53F59C;
 Thu, 29 Aug 2019 03:38:27 -0700 (PDT)
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Jing-Ting Wu <jing-ting.wu@mediatek.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
From: Valentin Schneider <valentin.schneider@arm.com>
Message-ID: <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
Date: Thu, 29 Aug 2019 11:38:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_033831_481061_893CC25B 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, wsd_upstream@mediatek.com,
 Qais Yousef <qais.yousef@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 29/08/2019 04:15, Jing-Ting Wu wrote:
> At original linux design, RT & CFS scheduler are independent.
> Current RT task placement policy will select the first cpu in
> lowest_mask, even if the first CPU is running a CFS task.
> This may put RT task to a running cpu and let CFS task runnable.
> 
> So we select idle cpu in lowest_mask first to avoid preempting
> CFS task.
> 

Regarding the RT & CFS thing, that's working as intended. RT is a whole
class above CFS, it shouldn't have to worry about CFS.

On the other side of things, CFS does worry about RT. We have the concept
of RT-pressure in the CFS scheduler, where RT tasks will reduce a CPU's
capacity (see fair.c::scale_rt_capacity()).

CPU capacity is looked at on CFS wakeup (see wake_cap() and
find_idlest_cpu()), and the periodic load balancer tries to spread load
over capacity, so it'll tend to put less things on CPUs that are also
running RT tasks.

If RT were to start avoiding rqs with CFS tasks, we'd end up with a nasty
situation were both are avoiding each other. It's even more striking when
you see that RT pressure is done with a rq-wide RT util_avg, which
*doesn't* get migrated when a RT task migrates. So if you decide to move
a RT task to an idle CPU "B" because CPU "A" had runnable CFS tasks, the
CFS scheduler will keep seeing CPU "B" as not significantly RT-pressured
while that util_avg signal ramps up, whereas it would correctly see CPU
"A" as RT-pressured if the RT task previously ran there.

So overall I think this is the wrong approach.

> Signed-off-by: Jing-Ting Wu <jing-ting.wu@mediatek.com>
> ---

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
