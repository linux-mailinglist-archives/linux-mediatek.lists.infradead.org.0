Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B0AD6056
	for <lists+linux-mediatek@lfdr.de>; Mon, 14 Oct 2019 12:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVWIs7tBW6SWyUm6j2MLITYhPbR4QEaK4PPLie1KMxg=; b=NaL4X5fwJMmnyE
	k5AI2SrRE2VvxRpv0N1TyhJscEQOHDJjbk0wxZ9SCapdD9klV14TtQlCkjOeb3KzqNHlXn7/BaIoX
	dlOQ8FQC2+BIucpEZs3TYX0SpIpLYmV5Dle9fqEgatS6fC+1M8V+1+ytFo7lARISEs8T1AjQCf7Z2
	cDJqXVHxGcmzIn5QYIH1nsBhwyIVQ5dRnsFFV7W2lQNQTcZU45XohzCUWRn1O7uGYO7XIWRhmDM5R
	xo6b4aKDigy1A0hvqdvjXyDhFM1BEHkCzx8NeXtDxqqo6eZcOJLd/5zLO2iQpuwq/IExaJTg7hFEQ
	9qFLSxzhKOUTmoZO85yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJxj7-0000G8-OV; Mon, 14 Oct 2019 10:37:21 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxio-0008OF-SV
 for linux-mediatek@lists.infradead.org; Mon, 14 Oct 2019 10:37:06 +0000
Received: by mail-qt1-x843.google.com with SMTP id j31so24733982qta.5
 for <linux-mediatek@lists.infradead.org>; Mon, 14 Oct 2019 03:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=26plC+LB/ET6lKUK8GUr/NZh4YTG4I5vCBM0xWKfjSY=;
 b=vhfeBhIbqctA+sxvOa8rDMgMZA0l1qMP0sDE3KgO56Y6lc3OpphV7fkCxySXu6yuf0
 zQI3csG/xFqaWpTB1334kqSZvke3KFNRZYH+iOzLeYF3LT0sw39+f3oVcoWI/Kv5yeV/
 nNxqTAO+Kkfu0gzhK+V47J7dgvcAuP4c770wVb5w76FXzfs6pyIY8mljaRNp6JX/TsgU
 uSpYNOzzWshBvP5PbZKMF4IAnIEEvTr8NIlBi/AY3fRAdB+qU1REmKvrl1AY0eM9iCWI
 gm54+mmfq7mVRBq78QlBBUDV44/ghCCEpEvb32E2HuFldPnFvz+sBUrhiU9wVri71POt
 YM6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=26plC+LB/ET6lKUK8GUr/NZh4YTG4I5vCBM0xWKfjSY=;
 b=EjN2QSPDBgaQFdmMmZooZpY49LnMdAqeLa2RvFgQSE+pZ/5aSBMeXokpFrssAS1P6Y
 oBUUmC0JhmxQiy2PYiMrbmApsG2F0diCcPZTmuszOn6g0UbN3e4NNSXx75a8Yuamejl0
 eEMNH5QZBic0DZtn3wTisolpCZyrhOJNEfpWk7egKz2Ac+sZb1JNRbhM+y7eVOBE/EUu
 r+AevAOiZWfyObimj0tqQf+nO1t52zWMCwPSBkwkf40Y9urZBiazVJYQxlQoiGGfMhQY
 GtS3VdvLkXkHFOyI2NnF8LR3RLmTPRB9vEUYrkNjA3+79liqqhfj3i3JJtoHHnoz0K0g
 4JYg==
X-Gm-Message-State: APjAAAU66kNF/cR/zn/vMR9/fUOx3pAEq7Du4C82jYGlc3vN6jCXRkKp
 VY+B9gzgDJ29Q0cVoIHwWAd3NrXbV2mbxnoKb5Hm0g==
X-Google-Smtp-Source: APXvYqwTjnC0ebjhJ3BkDHAXlucgRKIkCIRgkmsqM/V/dciQe1QoV4OVLkh9U5GxaZS3jwgbGp4caX/J7J0IoKwv77k=
X-Received: by 2002:ac8:37e8:: with SMTP id e37mr30909144qtc.57.1571049418182; 
 Mon, 14 Oct 2019 03:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20191014103148.17816-1-walter-zh.wu@mediatek.com>
In-Reply-To: <20191014103148.17816-1-walter-zh.wu@mediatek.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 14 Oct 2019 12:36:45 +0200
Message-ID: <CACT4Y+aSybD6Z0YHuhbaTKK+fd4c3t4z8WneYdRRqA4N-G0fkA@mail.gmail.com>
Subject: Re: [PATCH 0/2] fix the missing underflow in memory operation function
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_033703_096637_29F7ABCF 
X-CRM114-Status: GOOD (  17.81  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 linux-mediatek@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Linux-MM <linux-mm@kvack.org>,
 Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 12:32 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> The patchsets help to produce KASAN report when size is negative numbers
> in memory operation function. It is helpful for programmer to solve the
> undefined behavior issue. Patch 1 based on Dmitry's review and
> suggestion, patch 2 is a test in order to verify the patch 1.

Hi Walter,

I only received this cover letter, but not the actual patches. I also
don't see them in the group:
https://groups.google.com/forum/#!forum/kasan-dev
nor on internet. Have you mailed them? Where are they?

> [1]https://bugzilla.kernel.org/show_bug.cgi?id=199341
> [2]https://lore.kernel.org/linux-arm-kernel/20190927034338.15813-1-walter-zh.wu@mediatek.com/
>
> Walter Wu (2):
> kasan: detect negative size in memory operation function
> kasan: add test for invalid size in memmove
>
> ---
>  lib/test_kasan.c          | 18 ++++++++++++++++++
>  mm/kasan/common.c         | 13 ++++++++-----
>  mm/kasan/generic.c        |  5 +++++
>  mm/kasan/generic_report.c | 18 ++++++++++++++++++
>  mm/kasan/tags.c           |  5 +++++
>  mm/kasan/tags_report.c    | 17 +++++++++++++++++
>  6 files changed, 71 insertions(+), 5 deletions(-)
>
> --
> 2.18.0
>
> --
> You received this message because you are subscribed to the Google Groups "kasan-dev" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to kasan-dev+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/kasan-dev/20191014103148.17816-1-walter-zh.wu%40mediatek.com.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
