Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5851E923FC
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 14:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OmOJzge5+OWWxE4beb5FFSdNwlxn0AG9b0Bgvcp1zXw=; b=PhS8wPsFiNCHOy
	BmWrB+5U15w7bHDcNCMuCgYaQoWJbN2wnGj6mb2d6iwAzUaxN7zINOS3rfvGDH+Mf5ciKZdy0Lb9K
	I8IYNSbx3ptK2HUeZofK4onSjrSYGYE/FXefzRGK1mqqH9RhirfD5FLoxXdcDT5U+yhELkoHRkLHo
	lHZkPUd/7BjvP62uv7UWwVgcm6dPgCVOtSwnUiOoIkpu+7hWnzeCMphOxHctTxcLsJTDS4NAbG4kK
	UPYLGFnIVtNpSz11TRRXpM75wIkPgrP+hrWP/U97fAKoHhjaf7/15C9G+USW7Q+GbBiSonGNAhKhS
	lgs1XykJtXxudz7SKPGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhDO-0007CN-Ly; Mon, 19 Aug 2019 12:56:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhD6-0006bK-00; Mon, 19 Aug 2019 12:56:33 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 073A7205C9;
 Mon, 19 Aug 2019 12:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566219391;
 bh=UO4FTZseWCp9eDIq9wbqfeQcfvQgOuhKZNq4SSQZlCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G6j37x4gi/6X0L/ntZnqejE/KABlXoc3rhzuaqGTCUYmRqon5h34OLBgOYes5raz7
 /D4umugtstfQker4f99YG3DdWKtSK+LqlwZWJLF5vfd2dgSPVSF1gZvYXLRoBjdsKm
 2/iMibknt0kPfzelxOg5ZQteaN74tyOH0e3mBE9A=
Date: Mon, 19 Aug 2019 13:56:26 +0100
From: Will Deacon <will@kernel.org>
To: Walter Wu <walter-zh.wu@mediatek.com>
Subject: Re: [PATCH] arm64: kasan: fix phys_to_virt() false positive on
 tag-based kasan
Message-ID: <20190819125625.bu3nbrldg7te5kwc@willie-the-truck>
References: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819114420.2535-1-walter-zh.wu@mediatek.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_055632_078307_5487128E 
X-CRM114-Status: GOOD (  10.34  )
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
Cc: wsd_upstream@mediatek.com, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mediatek@lists.infradead.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 07:44:20PM +0800, Walter Wu wrote:
> __arm_v7s_unmap() call iopte_deref() to translate pyh_to_virt address,
> but it will modify pointer tag into 0xff, so there is a false positive.
> 
> When enable tag-based kasan, phys_to_virt() function need to rewrite
> its original pointer tag in order to avoid kasan report an incorrect
> memory corruption.

Hmm. Which tree did you see this on? We've recently queued a load of fixes
in this area, but I /thought/ they were only needed after the support for
52-bit virtual addressing in the kernel.

Will

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
