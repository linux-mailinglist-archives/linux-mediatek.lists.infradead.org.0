Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33996B7CE2
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 16:33:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9JQMKhMWPzMN7nk0hfxaX/wsB3+lPNXJK6T84CiuGeg=; b=dHTrYspkTT85uc
	a+V4t7xpjJ7UkzsxVMDzbun/cF604DmytKG/EFfZ++pWtAihbJW+kbKu9QZ+TAn6WfdC4diOhDcjW
	NHnxu3n5oKuTxC7E2Uwv4doCK0dp9IzXpfHvJfQAjQimaNMAj/tas1aMB6E+YOWNSl290bgREpBP1
	yiZqEOSrrNMn6OjLPr/KYMMqumgVJ0JKa3z+FveK0D1tgKsj9KtgTdA+MG9OJ6ws4/nCPENPlqYi4
	Y/XrN3GksYzQkgYfzJUT4SeIxqGn/uG5lwRxJCon3kWsp4gQNMgcwf2crnG7oM1AQqTIZ3KMZGQa9
	5M0/GvtqkuGwMsAa/YXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAxV3-00051h-Vm; Thu, 19 Sep 2019 14:33:38 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAxUb-0004nR-4h
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 14:33:10 +0000
Received: by mail-lj1-x242.google.com with SMTP id y23so3813798lje.9
 for <linux-mediatek@lists.infradead.org>; Thu, 19 Sep 2019 07:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+iAm9PNcP/MqvjLYI90Q8a9MlSIBggvtRha4/yfxSjo=;
 b=LL11A7S9PPhZPUMJHeB72Hs8rvCUbc4npJmhdqAx0R3688k13FcJsaavtQI4Gie6D6
 5bE4wdOBlMEb3cNjI70eyY8TMxrSzSMhJMYt5DWDOgVxOmeId8uLKGhhSHFUOpCIs5ck
 TDT9zKzbnrwe1RQ3sKU570sKKD0UsSAlBaCUdQJp6r4gXSlnb5zoKVuiUp6AfLfMh15H
 JTSLVS/JwRuWUptwlfWXp7fFLim+S0v6IPlk9b9mNLKBUvjezs/MfOxUwU6v5XDmbI6C
 atjg8zRfPFuPa5Yk9ReJYTu3uLIMxbs+VYktJfNtBQNhMTtIZGNJXVwhJr31fRuJVkhl
 +sVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+iAm9PNcP/MqvjLYI90Q8a9MlSIBggvtRha4/yfxSjo=;
 b=h7iOQK9ONiDXVPtRS1zAsBbGRwaqwH6p/IvPQztnGXBlbU+oox8NQvmd3lAj3ncQBp
 zkqS6SgmqTnfnKRFGpbMkOXX7K7X+VJGaW7Bx8ioDwHhgtltRFxNX2EPUBoCN9yIdFke
 /ASBt/aU6f4jlOlsH/Pe6jVih7thKkGVyNmhX+npYWaGij1mfwy36Tgepk3bBmPldseU
 xZu1M/FpF6KmU4+CM7NLShhhiNDc1YW+wYYnl3I2FqW/8BxFW/fB/tMEX5gPjDqhPhSM
 ymcToHVYti+lPjuwwnF6t7e/c9Rs4fcsxuW7pMyEJFRWDkdLvjbHbsvWYjND0JpgopOn
 dn1Q==
X-Gm-Message-State: APjAAAVSwmrkN30divuYlIBTGVB/3wcftjd5X6IlzUSoEYkXrg18fN2B
 1nNx7XnqNjXeFsapSO1YE+eCsnTNYhFGM2EImXYjxw==
X-Google-Smtp-Source: APXvYqyfccvz9I3VLff61MNvieg7GcINgTmqho338fZr4EkAQ0b8VLL9XABOtj1AY6IXkT0A6Bp+jQVUf9txqZahj8Y=
X-Received: by 2002:a2e:1b56:: with SMTP id b83mr5621468ljb.107.1568903586009; 
 Thu, 19 Sep 2019 07:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <1567048502-6064-1-git-send-email-jing-ting.wu@mediatek.com>
 <d5100b2d-46c4-5811-8274-8b06710d2594@arm.com>
 <20190830145501.zadfv2ffuu7j46ft@e107158-lin.cambridge.arm.com>
 <1567689999.2389.5.camel@mtkswgap22>
 <CAKfTPtC3txstND=6YkWBJ16i06cQ7xueUpD5j-j-UfuSf0-z-g@mail.gmail.com>
 <1568892135.4892.10.camel@mtkswgap22>
 <CAKfTPtCuWrpW_o6r5cmGhLf_84PFHJhBk0pJ3fcbU_YgcBnTkQ@mail.gmail.com>
 <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
In-Reply-To: <20190919142315.vmrrpvljpspqpurp@e107158-lin.cambridge.arm.com>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 19 Sep 2019 16:32:53 +0200
Message-ID: <CAKfTPtA9-JLxs+DdLYjBQ6VfVGNxm++QYYi1wy-xS6o==EAPNw@mail.gmail.com>
Subject: Re: [PATCH 1/1] sched/rt: avoid contend with CFS task
To: Qais Yousef <qais.yousef@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_073309_197667_E5A5F6BD 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: wsd_upstream@mediatek.com, Peter Zijlstra <peterz@infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Jing-Ting Wu <jing-ting.wu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 19 Sep 2019 at 16:23, Qais Yousef <qais.yousef@arm.com> wrote:
>
> On 09/19/19 14:27, Vincent Guittot wrote:
> > > > > But for requirement of performance, I think it is better to differentiate between idle CPU and CPU has CFS task.
> > > > >
> > > > > For example, we use rt-app to evaluate runnable time on non-patched environment.
> > > > > There are (NR_CPUS-1) heavy CFS tasks and 1 RT Task. When a CFS task is running, the RT task wakes up and choose the same CPU.
> > > > > The CFS task will be preempted and keep runnable until it is migrated to another cpu by load balance.
> > > > > But load balance is not triggered immediately, it will be triggered until timer tick hits with some condition satisfied(ex. rq->next_balance).
> > > >
> > > > Yes you will have to wait for the next tick that will trigger an idle
> > > > load balance because you have an idle cpu and 2 runnable tack (1 RT +
> > > > 1CFS) on the same CPU. But you should not wait for more than  1 tick
> > > >
> > > > The current load_balance doesn't handle correctly the situation of 1
> > > > CFS and 1 RT task on same CPU while 1 CPU is idle. There is a rework
> > > > of the load_balance that is under review on the mailing list that
> > > > fixes this problem and your CFS task should migrate to the idle CPU
> > > > faster than now
> > > >
> > >
> > > Period load balance should be triggered when current jiffies is behind
> > > rq->next_balance, but rq->next_balance is not often exactly the same
> > > with next tick.
> > > If cpu_busy, interval = sd->balance_interval * sd->busy_factor, and
> >
> > But if there is an idle CPU on the system, the next idle load balance
> > should apply shortly because the busy_factor is not used for this CPU
> > which is  not busy.
> > In this case, the next_balance interval is sd_weight which is probably
> > 4ms at cluster level and 8ms at system level in your case. This means
> > between 1 and 2 ticks
>
> But if the CFS task we're preempting was latency sensitive - this 1 or 2 tick
> is too late of a recovery.
>
> So while it's good we recover, but a preventative approach would be useful too.
> Just saying :-) I'm still not sure if this is the best longer term approach.

like using a rt task ?

>
> --
> Qais Yousef

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
