Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A10B8CF969
	for <lists+linux-mediatek@lfdr.de>; Tue,  8 Oct 2019 14:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5JG7jTXo9tXqPPdAJtaQSZ+vRIXtm5RpgDkXiSqVQY=; b=fDE/8TI07LxCda
	znJO+0sbUBYvJEnntrPztu2yO48V5E50wbmvnr+flbglPzjfd/BuI2y8j/xsV7yHYmUkEgFOEJ2Yn
	rJDXnYgxVGU9zQbGTvvPdP9Yzd2mUFt3arMEZVWI8v5bedZqaJqR+4UQHlFH4sa0C4X/n5YhNPpVf
	pBi5+6gjXVaJoMXUkH4P18saGiDvohgwR/bqYFUc/dX8GHo5UFyufqVpYVfxfn84kxWe2lIZRwpaf
	Bre+4gF1YA5NP5uyu+4L+bmodzYhNGqDbT1E/0KwgdeqipR15Z/4ncuS5g/AtCPcV7w0uMB28CUdf
	chrN3gWEKLwcbRALqIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHoLJ-0007bc-Lz; Tue, 08 Oct 2019 12:11:53 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHoL4-0007Nc-SH
 for linux-mediatek@lists.infradead.org; Tue, 08 Oct 2019 12:11:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id h126so16412324qke.10
 for <linux-mediatek@lists.infradead.org>; Tue, 08 Oct 2019 05:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GMN6AE/Wckiy15zsiQVxc8Ha0nqrOTJmAoLEeM+N80A=;
 b=eh8pCLowBh+BgvZfmBoGRvtXPz9zE1aDs0RO30fbYsKrn8CCi0iz7dLb+5ZAUaoxjI
 h8+YdOrv4kFWisVv0+ypSez27VEQps+efiGk7jOMYv3keDR/Y6/soCbxUzNbJXsWmunL
 vpPylf8BdgPE/ZA1QeOokTinVOQWJUymEUANn2Y+dJMoeBbgBazYB8JxeoNrYQwBHkLP
 +Y93UIITl3fYH+rqskwFY4S7s0OHFw4upx8Nhqyxd6tVP1iDJRTOXsPTSYokzso/fTTr
 QdOgkswn28Rv8/n9whT/owI7R/u5774xcNIdbtAtjI/OLjhmtMk6lPra8liDCk+ffMra
 +nBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GMN6AE/Wckiy15zsiQVxc8Ha0nqrOTJmAoLEeM+N80A=;
 b=bfMks23+9nCYMNqcnUFHoFqakb6AOh4olTVcw4JR6G1vUQw4CnDl61KgNkbCwVcE4c
 DQLm0RVT+Cr9BwKahi3tKTlZNPUX8QTUi6es9Sgcayf1sa8IUzwv3UnPRVM2rNvNPljv
 n2qymsZGbks4ehaW2rUOltqz5WRI+1fadnKt/jrMNs4KG+wZQnT9S7bFAqxo5Io9HiNs
 cssm56ntUm2FGFYk6sVTKaop3fNFV2D49iVSCB/8SQcsH4SujaohgBlEXVs60O/xjjDf
 Zd5b48DLEVOYvTmqR6nJUVcCEBptj9e8Z0lj3Vs4REJnO0n9zUBVWdGxPTiqEZtHNNcO
 2dsQ==
X-Gm-Message-State: APjAAAW0HIRVUXRH3GXo4JZ22xsZYK5zhvXGNffR4m5BJBNrDOsMWg9a
 tXFXt9+ygyUwkrJZikzANbsbtYHy58Uc7jT/4V96Iw==
X-Google-Smtp-Source: APXvYqyJTh5B6y0iJNFqTbgDhKIdXD1dXKap90/51GY/1HBwwtMG0+QVGVvei9Jaj15xHEza/1jKSqBJZkqQ4s2WLQ0=
X-Received: by 2002:a37:d84:: with SMTP id 126mr26540903qkn.407.1570536695225; 
 Tue, 08 Oct 2019 05:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <1570532528.4686.102.camel@mtksdccf07>
 <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
In-Reply-To: <D2B6D82F-AE5F-4A45-AC0C-BE5DA601FDC3@lca.pw>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 8 Oct 2019 14:11:23 +0200
Message-ID: <CACT4Y+Zbx-2yR-mN5GioaKUgGH1TpTE2D-OgLbR2Dy09ezyGGQ@mail.gmail.com>
Subject: Re: [PATCH] kasan: fix the missing underflow in memmove and memcpy
 with CONFIG_KASAN_GENERIC=y
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_051138_942300_67A104FB 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Walter Wu <walter-zh.wu@mediatek.com>,
 wsd_upstream <wsd_upstream@mediatek.com>, linux-mediatek@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Linux-MM <linux-mm@kvack.org>, Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 1:42 PM Qian Cai <cai@lca.pw> wrote:
> > On Oct 8, 2019, at 7:02 AM, Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > I don't know very well in UBSAN, but I try to build ubsan kernel and
> > test a negative number in memset and kmalloc_memmove_invalid_size(), it
> > look like no check.
>
> It sounds like more important to figure out why the UBSAN is not working in this case rather than duplicating functionality elsewhere.

Detecting out-of-bounds accesses is the direct KASAN responsibility.
Even more direct than for KUBSAN. We are not even adding
functionality, it's just a plain bug in KASAN code, it tricks itself
into thinking that access size is 0.
Maybe it's already detected by KUBSAN too?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
