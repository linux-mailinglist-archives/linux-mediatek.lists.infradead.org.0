Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153AEF393F
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 Nov 2019 21:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TgMkz1p4gIbTNhzK7fqgBz677vBvaoqj8kfE+E2txsA=; b=RwUxmi1ZSmueq6
	gL21Lv2uUNmOyNoNL7lotGnkcedhy+T9kJ2kMgtAFcGO7s194gDzZ15GTLIMHZ3knuABERdVGCGYu
	SAMwbMgIWQ1RC+pv+j24mLjQ+LDEayJFmaKgyVPMwTKSZKIibRjThMiNIKCktO8NYzXLTsUZEWmt6
	P75psnpeJDzjQrhAMQLYFAD2DPHsaVseoebQogv4/c6l9tEtuEo5Vjh0wr+83guHAn9AxL01477Tq
	h/soIQrNzvCWYgh4n1+1QIPVI26HM4TCyb4ljmw95v33ZRhq0SecZKNZjdbyeMgbbWe1B1VJfB8LT
	PPRTUXV6uioCotwYyUFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSo7L-0003t3-IB; Thu, 07 Nov 2019 20:10:55 +0000
Received: from ms.lwn.net ([45.79.88.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSo7J-0003sW-6X
 for linux-mediatek@lists.infradead.org; Thu, 07 Nov 2019 20:10:54 +0000
Received: from lwn.net (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ms.lwn.net (Postfix) with ESMTPSA id D35BD2C1;
 Thu,  7 Nov 2019 20:10:52 +0000 (UTC)
Date: Thu, 7 Nov 2019 13:10:51 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Miles Chen <miles.chen@mediatek.com>
Subject: Re: [PATCH] docs: printk-formats: add ptrdiff_t type to printk-formats
Message-ID: <20191107131051.61308a05@lwn.net>
In-Reply-To: <20191001100449.19481-1-miles.chen@mediatek.com>
References: <20191001100449.19481-1-miles.chen@mediatek.com>
Organization: LWN.net
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_121053_243717_072D30F5 
X-CRM114-Status: UNSURE (   7.19  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 1 Oct 2019 18:04:49 +0800
Miles Chen <miles.chen@mediatek.com> wrote:

> When print the difference between two pointers, we should use
> the ptrdiff_t modifier %t.
> 
> Signed-off-by: Miles Chen <miles.chen@mediatek.com>
> ---
>  Documentation/core-api/printk-formats.rst | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)

Applied, thanks.

jon

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
