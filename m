Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B27992621
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 16:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QS3VM1FCvtnml12ro0fNEHbNYXGCYF4HbNBr4Ssbojs=; b=F/6vLgcUKCLvgB
	/cTPvQLOhvqYK2Xrh+ao99IVc0nw1WwhvrcItjDQA49hxDA50+clbgp3sSEVjGUPEVvWOI3v5cu2e
	aBAITRKUK4D2Uz7fiZ6gUqEKzGaRJas6eSK+VwUY2hw5EuUNUKswY7nypP8Z25Aqf9tWuV1xizRTz
	PJgXbGKmEVDE8Cxn5OcPntLkOcy2jF9m+8eow0H9TvAsiOrZHRhh+PNCP7uTDGYCiU0PqhpGzN4UO
	PRdbJxbX8kVDXWCysj4jZQB/C78EwmI8P6X4YwEBSsWh4NGik/Fr7p8yxZhYLribEyZi86ykQLL9h
	m0s9pOdOBkyHScZhydTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziJR-0000oQ-JO; Mon, 19 Aug 2019 14:07:09 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziHv-0007Jb-85
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 14:05:37 +0000
Received: by mail-pf1-x441.google.com with SMTP id w26so1223481pfq.12
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 07:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T3UxKUOZ72VWnnQkB3XywWd1zjsE0svXI0cagmUyoZs=;
 b=NdMgf9Mvh/iqzzLFR9x9Aa7SMVofRb6bFd1a7mU0I+5Bl878oLfmmuWz7zgmMymQNH
 HE/V62KfSHt3cADSjza/dXKtyTsdQxsi6srm1SR2FzQSZoYkC6ZN53f1M56K+kwHqjK/
 nUtCHhui1nDMmHS3a3EzZmX7bm4JrpGwgIqsEcpc72o2sCuTgWgbqXvdOovloYYnQs6W
 yugyH0T81fx5aBwnJlHeJU81YjjhdnWMjuW/vSEoyuoU6gTHGLjs7Z+F8LU/annLcJxw
 Pr2ktzgLX9TGWDFEzOd1iVKz33xu+TF+JT74tnb2H24/SySDOdXcTbeNNBqJsTl15iq4
 UzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T3UxKUOZ72VWnnQkB3XywWd1zjsE0svXI0cagmUyoZs=;
 b=XVRdYZw0LuTa5ltEKCdlKsRAFvBd74JPx7hevm6VJQ+d8DQ5LSEBg3MCiVyZGk+16I
 nUIi4CBfZzYo9G13xQOqMBvIqBlQ5sTf+Nepy/nKVl7r5+4ATQcwRZR4Rdz83/EivVh7
 uubMyyNwVa/pskxbWaJYKazCOswkWtHQr3ojPT4LyPsugd23A/vYIwcV8CPiNzuVYyTO
 RsGNJsqAo6RLPTnrKcwrL064unUZpsp2qZfkoWJ6Lc8NL5ASHtPiMdA4IfyPr065X+Ks
 NITRBvu+Dq5lSfm8O3+Unzpzx0luomOr9LxxIFhrpYrNZoPPfUEm49h/H4Wwgpn2oCf4
 fOSg==
X-Gm-Message-State: APjAAAVh+/3B6/vYPfiMM2vpKnf/tYfsiV7MukgMw2izxOqU1dw6VVVC
 12r0wX3Ga5ABFrWZu2cegCh7UUnOlaVEOg+KHuvCtw==
X-Google-Smtp-Source: APXvYqx4pbIsB+cFpu0G/IqI4DkfdfDjGIBK/bhaAJTV+87+s3gR5xLbvUgBQ8wEn3A9ZynN/j2XHk6NucfBsWzekek=
X-Received: by 2002:a17:90a:c20f:: with SMTP id
 e15mr20524366pjt.123.1566223533317; 
 Mon, 19 Aug 2019 07:05:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
 <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
 <20190819132347.GB9927@lakrids.cambridge.arm.com>
 <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
In-Reply-To: <20190819133441.ejomv6cprdcz7hh6@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 19 Aug 2019 16:05:22 +0200
Message-ID: <CAAeHK+w7cTGN8SgWQs0bPjPOrizqfUoMnJWTvUkCqv17Qt=3oQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_070535_314794_2751CF10 
X-CRM114-Status: GOOD (  20.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 3:34 PM Will Deacon <will@kernel.org> wrote:
>
> On Mon, Aug 19, 2019 at 02:23:48PM +0100, Mark Rutland wrote:
> > On Mon, Aug 19, 2019 at 01:56:26PM +0100, Will Deacon wrote:
> > > On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> > > > __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> > > > but it will modify pointer tag into 0xff, so there is a false positive.
> > > >
> > > > When enable tag-based kasan, phys_to_virt() function need to rewrite
> > > > its original pointer tag in order to avoid kasan report an incorrect
> > > > memory corruption.
> > >
> > > Hmm. Which tree did you see this on? We've recently queued a load of fixes
> > > in this area, but I /thought/ they were only needed after the support for
> > > 52-bit virtual addressing in the kernel.
> >
> > I'm seeing similar issues in the virtio blk code (splat below), atop of
> > the arm64 for-next/core branch. I think this is a latent issue, and
> > people are only just starting to test with KASAN_SW_TAGS.
> >
> > It looks like the virtio blk code will round-trip a SLUB-allocated pointer from
> > virt->page->virt, losing the per-object tag in the process.
> >
> > Our page_to_virt() seems to get a per-page tag, but this only makes
> > sense if you're dealing with the page allocator, rather than something
> > like SLUB which carves a page into smaller objects giving each object a
> > distinct tag.
> >
> > Any round-trip of a pointer from SLUB is going to lose the per-object
> > tag.
>
> Urgh, I wonder how this is supposed to work?
>
> If we end up having to check the KASAN shadow for *_to_virt(), then why
> do we need to store anything in the page flags at all? Andrey?

As per 2813b9c0 ("kasan, mm, arm64: tag non slab memory allocated via
pagealloc") we should only save a non-0xff tag in page flags for non
slab pages.

Could you share your .config so I can reproduce this?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
