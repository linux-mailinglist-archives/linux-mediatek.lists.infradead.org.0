Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A8F4EE2E
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Jun 2019 19:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50JiyR4QPgJORfSQNyaely2jnijBss2UP1abhr9+jaY=; b=SktWZx9RK8Zh2g
	aMXI4uom2lYlPNPPv7JHvxkitFkvHE9Xa5jIqy8vjeCNoy18+BSURf5C9XtZAo+VN/fJ30EgmQ9HN
	jNpfxYyltCSPS7b1vYiM5Blv747YUo/e57oxNzBKWoWYZJ06vYxHhh7OLprsO6dVhTgX5Su2bJixQ
	4eUxhxSS4W22OhsR/jssrQbzSXkwl7M7yinaaaDQHy/qJtnpdFUbXnCm8eL4FwWaNJFHgof6SRbVz
	XPwnlYAKerTUBd/yO4IoN0DMsz2E9zPYfrAXs3bKsO7JQ/xHfkll+fgsq9UsIflaV28MEgtQGImbn
	WsAo718K17kJTDqCp14g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heNhi-0000CG-14; Fri, 21 Jun 2019 17:52:02 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heNhQ-0008R4-ME; Fri, 21 Jun 2019 17:51:46 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 203FC80436;
 Fri, 21 Jun 2019 19:51:35 +0200 (CEST)
Date: Fri, 21 Jun 2019 19:51:34 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: Re: [PATCH] kbuild: compile-test global headers to ensure they are
 self-contained
Message-ID: <20190621175134.GB16409@ravnborg.org>
References: <20190621163931.19397-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621163931.19397-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=HbLmmMm3CJfoB4MaM3cA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_105144_901827_FDB04230 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Masahiro.

On Sat, Jun 22, 2019 at 01:39:31AM +0900, Masahiro Yamada wrote:
> Make as many headers self-contained as possible so that they can be
> included without relying on a specific include order.
It is very nice finally to get some infrastructure to validate header
files.

But to avoid too many conflicts while including more and more headers
that are selfcontained we really need something that is more
distributed.
So for example all header files in include/drm/* could be in one
Makefile, incl. sub-directories, but the same Makefile would not include
the files in include/soc/

If you just show how ot do it, others can follow-up with the
relevant directories.

	Sam

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
