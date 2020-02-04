Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D3D151816
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Feb 2020 10:46:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5GmDJbbclswfKTcdcSS9BakyyYhSzQ86CBw12uZh5A=; b=eY0NPsjZJmPKYV
	7nr/nyQ+TOXE5gw8sIjqKzPA+Ucl7+2dqO1NIY50U2jqNek5e4NVTKF3wbZECBfj/hZdqH43XeFe0
	gx6sSzai5I5UUsLn4VdfmF28tovFqMid9Re4urUBhwUyHQwQA0TqQ/sq+zTZ7rUJKZpixEzDVK3Gr
	oqPl3OZYK2h9S+4g8q038t9eRDmGgEKA8TCwcaz6ZO7FfHpXxoBvGAbmGFaQHu4kVStHspbfC+8Kw
	qzhj3Cjd+a0iHMgXF1rEtof3V+/4aTvbB7457jG3uK/QapJ2z3vjQAQnmMQzFtrrj04cgwqYVIrl+
	bOn99zPGaCpB0WGwk2ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyumq-0000tG-SG; Tue, 04 Feb 2020 09:46:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyumo-0000sl-9v
 for linux-mediatek@lists.infradead.org; Tue, 04 Feb 2020 09:46:27 +0000
Received: from localhost (unknown [212.187.182.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE5402166E;
 Tue,  4 Feb 2020 09:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580809585;
 bh=VlRUtSRrLeKtQYvR52+rIA5unH+BH0HRF/MnHJy83kk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=b5PHGApGK7OQ/RMddsZTNIgFSoKnxB9nwQn7TXLjHH+MkD0ucqoOeNcr37GUUzZZ+
 rXwkNkMpjgWmAID/1pZ/hlYqkKIdQ4WILvySL4U7M7q6BkYr+6hOrZ8U7tal15BVQE
 pjf4lmHARICAsPMOWYwHIvGlQzGVlB+8nz169FUI=
Date: Tue, 4 Feb 2020 09:46:22 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Frankie Chang <Frankie.Chang@mediatek.com>
Subject: Re: [PATCH v1] binder: transaction latency tracking for user build
Message-ID: <20200204094622.GA1087870@kroah.com>
References: <1580807715-26609-1-git-send-email-Frankie.Chang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1580807715-26609-1-git-send-email-Frankie.Chang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_014626_372356_6B50E344 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Todd Kjos <tkjos@android.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Jian-Min.Liu@mediatek.com, linux-mediatek@lists.infradead.org,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Feb 04, 2020 at 05:15:14PM +0800, Frankie Chang wrote:
> Record start/end timestamp to binder transaction.
> When transaction is completed or transaction is free,
> it would be checked if transaction latency over threshold (2 sec),
> if yes, printing related information for tracing.
> 
> 
> Frankie Chang (1):
>   binder: transaction latency tracking for user build
> 
>  drivers/android/Kconfig           |    8 +++
>  drivers/android/binder.c          |  107 +++++++++++++++++++++++++++++++++++++
>  drivers/android/binder_internal.h |    4 ++
>  3 files changed, 119 insertions(+)

There is no patch here :(

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
