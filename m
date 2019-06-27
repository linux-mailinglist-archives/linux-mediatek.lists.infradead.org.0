Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7E758ECE
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Jun 2019 01:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WflvicsSw9IDP9l7EHG/CFE63FzTycDU+ny8pvXQUnA=; b=iETxAAOfdbBLYk
	pHGvVXiC81LOTUkmn6RA5w1jibRz4F9qtSefcoxL/Ld7S0IUeTkcg5HY/lyYvx36We3146fHr4nXN
	QySjB/bY2VYMOg8VZWNZb0DLJ5Fb4+eyxf49yldbYQ2Ou1iGKpDIyjhH17BFVPj4+woiAKFMaKSHF
	AQSJK0kSoAUuOgWwnuFIqJc+DHJXzgVk9jJAkSjWAXuZfMuK0WTS+AAsEBmz+m/HunMYgOlIVcTxf
	HSr8uCa+kiIJZPdrqoBAAcMNGMdvnFS3cldZgaIMVumRwY7IX5QQoIxe+VM3RhZQ2MwKh0yWnbOSW
	DluhOssf6gfiysk5Ms9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgeBj-0002z8-Kp; Thu, 27 Jun 2019 23:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgeBW-0002m9-Pp; Thu, 27 Jun 2019 23:52:12 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E247D20815;
 Thu, 27 Jun 2019 23:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561679527;
 bh=TLxkXBYcOQkQ2yiDZYNy+ckFRMqJ/xF6bF/ER5dH6oo=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=brVVYSMICoK5hJs7dp/cs8rUY0QUpRVWtXg25ZwxXq52vfljx9TT0QgDsRoejgLlf
 4QJuOH7kQ5OusWkYZryl5zcVBZmswpFhB4Unz5099QZkzeLozf+kVTfZJeVXqx0iIO
 FFRAtvZJfHgfRH+t8U0NVC+bZMYFqGVF/oaItmBQ=
MIME-Version: 1.0
In-Reply-To: <20190627221507.83942-1-nhuck@google.com>
References: <20190627221507.83942-1-nhuck@google.com>
To: Nathan Huckleberry <nhuck@google.com>, fparent@baylibre.com,
 matthias.bgg@gmail.com, mturquette@baylibre.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: mediatek: Fix -Wunused-const-variable
User-Agent: alot/0.8.1
Date: Thu, 27 Jun 2019 16:52:06 -0700
Message-Id: <20190627235206.E247D20815@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_165210_861579_4A0CA91C 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Nathan Huckleberry (2019-06-27 15:15:07)
> Clang produces the following warning
> 
> drivers/clk/mediatek/clk-mt8516.c:234:27: warning: unused variable
> 'ddrphycfg_parents' [-Wunused-const-variable] static const char * const
> ddrphycfg_parents[] __initconst = {
> 
> This variable has never been used. Deleting it to cleanup the warning.
> 
> Cc: clang-built-linux@googlegroups.com
> Link: https://github.com/ClangBuiltLinux/linux/issues/523
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

This patch has already been applied. It would be great if you could try
applying the patch to linux-next first before sending patches to make
sure they're still relevant.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
