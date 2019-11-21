Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0921A105249
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 13:31:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ytyrGD6h8zfkjdQx8HaiY/WDxuw4ahLI8EmRjG66Yk=; b=aC6BrqUFucKrrR
	Kpabkw0kIHzog38eEPyFwX8wDM26U2BidW0hr7qHBWhkTkj2jBon7rXFRHZpzw01a5LhbfjJldyp6
	VFKo97K0RtKTKNpGmbkvTnruRsyMLgqWoQZlG5F2iaTK59FjlTo2KKpJVZzfBB/jyQJsRFIv4Mlk0
	fPtntsWOaoxu88kvSIsr0bf5T71LwpauHrn28BLjabvWFRcYx/f7aiWp4ysO/6q3WfG+njc88qxOL
	JNTtaKzJu/i3vlt8isLnLj0PKseWw7nnQ3mwehRLbWE2fdJnX4Y1TvZ9JHPUtWhlOasHrKmm+xyAp
	KLEeNgQLKNPlyqZIn9Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXlbw-00041U-MH; Thu, 21 Nov 2019 12:31:00 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXlbn-0003sd-7d; Thu, 21 Nov 2019 12:30:51 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1FEC030068E;
 Thu, 21 Nov 2019 13:29:38 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 02224201DD6AF; Thu, 21 Nov 2019 13:30:48 +0100 (CET)
Date: Thu, 21 Nov 2019 13:30:48 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: YT Chang <yt.chang@mediatek.com>
Subject: Re: [PATCH 1/1] sched: panic, when call schedule with preemption
 disable
Message-ID: <20191121123048.GQ4097@hirez.programming.kicks-ass.net>
References: <1574323985-24193-1-git-send-email-yt.chang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1574323985-24193-1-git-send-email-yt.chang@mediatek.com>
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 04:13:05PM +0800, YT Chang wrote:
> When preemption is disable, call schedule() is incorrect behavior.
> Suggest to panic directly rather than depend on panic_on_warn.

Why!?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
