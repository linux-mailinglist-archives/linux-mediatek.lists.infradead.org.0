Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC0ED08F3
	for <lists+linux-mediatek@lfdr.de>; Wed,  9 Oct 2019 09:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6VdokTrq0p3C7EdHth51tX9Y6VpHs2jS465Y7etqQI=; b=cSFPi40CNty4Qf
	x8ifmV6J+NEbgTC7xjVphnhWuY6GCaHfyqV2zJ5rikptk1vdc+nfU0CGEj/hHHLY+IsDxMU78Nn+I
	Cg7HBZvVTToVD4QmV9rMoa9A/h3aJcibV1aheo1hi1atm8htnRku1FKMN/2hWPoZn0M3qlPEcpQER
	4dJc8Ak6dMY2eNySXWX+z+5ruNMyANoIYmdoRu5iO1QxDphXggyTOYtUnjWYL908T/3LYO8m/28dB
	7//Jr63wSJKX45huYL+66c0tZ3Pxx92wm9ijDwPNFrigl4R9SZbscwE9jUIK4RAJDFQ96CR3PoU7k
	wUbgNlh48h9U6dQF7nwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6qM-0001Wn-QP; Wed, 09 Oct 2019 07:57:10 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6qJ-0001WC-Ay
 for linux-mediatek@lists.infradead.org; Wed, 09 Oct 2019 07:57:09 +0000
Received: by mail-ed1-x541.google.com with SMTP id p10so1163262edq.1
 for <linux-mediatek@lists.infradead.org>; Wed, 09 Oct 2019 00:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3E0V0aOu3g2aASZWIE15ppPWG2zpJ6BIMHadxXwPGJM=;
 b=Wy+fMCn6bQNsAvH2t7CAUcAbS0cogbGpbonr79/Lnr7QOUcYd/LWBCJdHdu1K1Arbl
 phmWYeGx0sM1IHdel9vQN+wNn7Mo71abv6iR6p7CudVLWdWKI4H06xYrhZNYC8yAziOc
 pRb6FXFj/rsG4B4qjhfvNcor1b2INvR9lRefc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3E0V0aOu3g2aASZWIE15ppPWG2zpJ6BIMHadxXwPGJM=;
 b=pfZWHBISrwi9lHtT5f0Z03UNmw77t3Ny1Vgj03DD17kQJcM5SSKNuTKHWpqBNR7A8x
 IjY+663aJgtyq/+BsuDbXIli5FcE1b2d1/bCj6+RSsClYGUA11edlt5VG3yw7MHJ8KlE
 dAkMpmoV++tqTmU49dpZsCBRaFMgLbhMukSIGoGaEjXI2wKv+dwtQcyfYAiJTdHfe31e
 JK7oa3ozWtJ7ARwAhSfbSaf4M3jdeyy+lv02sIyOwdlFm+o4d4Iz0muDUkP3nUl4Y9ue
 Qyr+ezGu17rHEm1eKuKsPmyYz1M/0jIJ2yXaipqlQB+eFu8jcucjPISf3fRBipcDvLFL
 oPHw==
X-Gm-Message-State: APjAAAWcjHHrVNN4eeHtuE0iRKVuv/ulGCb8ziHQwkl8E8J6n/aAqdtQ
 nvguD3dXDrPBM0UjTnaGyijOuPLg5eEYtQ==
X-Google-Smtp-Source: APXvYqxmxbwwhq42oO2HToQdO+pYa/Zk1CMi7XylbeNnQmvpQ6qA8YsoKuvjaOwN4cTS6E4QkL3t8Q==
X-Received: by 2002:a17:906:5502:: with SMTP id r2mr1568013ejp.3.1570607825245; 
 Wed, 09 Oct 2019 00:57:05 -0700 (PDT)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com.
 [209.85.128.53])
 by smtp.gmail.com with ESMTPSA id h10sm238068edf.81.2019.10.09.00.57.03
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Oct 2019 00:57:03 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id m18so1352656wmc.1
 for <linux-mediatek@lists.infradead.org>; Wed, 09 Oct 2019 00:57:03 -0700 (PDT)
X-Received: by 2002:a1c:a516:: with SMTP id o22mr1631005wme.116.1570607822816; 
 Wed, 09 Oct 2019 00:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <1569822142-14303-1-git-send-email-yong.wu@mediatek.com>
 <CAAFQd5C+FM3n-Ww4C+qDD1QZOGZrqEYw4EvYECfadGcDH0fmew@mail.gmail.com>
 <1570522162.19130.38.camel@mhfsdcap03>
In-Reply-To: <1570522162.19130.38.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 9 Oct 2019 16:56:50 +0900
X-Gmail-Original-Message-ID: <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
Message-ID: <CAAFQd5C3U7pZo4SSUJ52Q7E+0FaUoORQFbQC5RhCHBhi=NFYTw@mail.gmail.com>
Subject: Re: [PATCH] iommu/mediatek: Move the tlb_sync into tlb_flush
To: Yong Wu <yong.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_005707_399279_92B4FEF4 
X-CRM114-Status: GOOD (  37.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: youlin.pei@mediatek.com, anan.sun@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream <srv_heupstream@mediatek.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, chao.hao@mediatek.com,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <iommu@lists.linux-foundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 5:09 PM Yong Wu <yong.wu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> Sorry for reply late.
>
> On Wed, 2019-10-02 at 14:18 +0900, Tomasz Figa wrote:
> > Hi Yong,
> >
> > On Mon, Sep 30, 2019 at 2:42 PM Yong Wu <yong.wu@mediatek.com> wrote:
> > >
> > > The commit 4d689b619445 ("iommu/io-pgtable-arm-v7s: Convert to IOMMU API
> > > TLB sync") help move the tlb_sync of unmap from v7s into the iommu
> > > framework. It helps add a new function "mtk_iommu_iotlb_sync", But it
> > > lacked the dom->pgtlock, then it will cause the variable
> > > "tlb_flush_active" may be changed unexpectedly, we could see this warning
> > > log randomly:
> > >
> >
> > Thanks for the patch! Please see my comments inline.
> >
> > > mtk-iommu 10205000.iommu: Partial TLB flush timed out, falling back to
> > > full flush
> > >
> > > To fix this issue, we can add dom->pgtlock in the "mtk_iommu_iotlb_sync".
> > > And when checking this issue, we find that __arm_v7s_unmap call
> > > io_pgtable_tlb_add_flush consecutively when it is supersection/largepage,
> > > this also is potential unsafe for us. There is no tlb flush queue in the
> > > MediaTek M4U HW. The HW always expect the tlb_flush/tlb_sync one by one.
> > > If v7s don't always gurarantee the sequence, Thus, In this patch I move
> > > the tlb_sync into tlb_flush(also rename the function deleting "_nosync").
> > > and we don't care if it is leaf, rearrange the callback functions. Also,
> > > the tlb flush/sync was already finished in v7s, then iotlb_sync and
> > > iotlb_sync_all is unnecessary.
> >
> > Performance-wise, we could do much better. Instead of synchronously
> > syncing at the end of mtk_iommu_tlb_add_flush(), we could sync at the
> > beginning, if there was any previous flush still pending. We would
> > also have to keep the .iotlb_sync() callback, to take care of waiting
> > for the last flush. That would allow better pipelining with CPU in
> > cases like this:
> >
> > for (all pages in range) {
> >    change page table();
> >    flush();
> > }
> >
> > "change page table()" could execute while the IOMMU is flushing the
> > previous change.
>
> Do you mean adding a new tlb_sync before tlb_flush_no_sync, like below:
>
> mtk_iommu_tlb_add_flush_nosync {
>    + mtk_iommu_tlb_sync();
>    tlb_flush_no_sync();
>    data->tlb_flush_active = true;
> }
>
> mtk_iommu_tlb_sync {
>         if (!data->tlb_flush_active)
>                 return;
>         tlb_sync();
>         data->tlb_flush_active = false;
> }
>
> This way look improve the flow, But adjusting the flow is not the root
> cause of this issue. the problem is "data->tlb_flush_active" may be
> changed from mtk_iommu_iotlb_sync which don't have a dom->pglock.

That was not the only problem with existing code. Existing code also
assumed that add_flush and sync always go in pairs, but that's not
true.

My suggestion is to fix the locking in the driver and keep the sync
deferred as much as possible, so that performance is not degraded. I
changed my mind, though. I think we would need to make more changes to
the driver to make it implement the flushing efficiently, so let's go
with the current simple approach for now and improve incrementally.

>
> Currently the synchronisation of the tlb_flush/tlb_sync flow are
> controlled by the variable "data->tlb_flush_active".
>
> In this patch putting the tlb_flush/tlb_sync together looks make
> the flow simpler:
> a) Don't need the sensitive variable "tlb_flush_active".
> b) Remove mtk_iommu_iotlb_sync, Don't need add lock in it.
> c) Simplify the tlb_flush_walk/tlb_flush_leaf.
> is it ok?
>

Okay, let's do so as a first step to fix the issue. Then we can
optimize in follow up patches.

> >
> > >
> > > Besides, there are two minor changes:
> > > a) Use writel for the register F_MMU_INV_RANGE which is for triggering the
> > > HW work. We expect all the setting(iova_start/iova_end...) have already
> > > been finished before F_MMU_INV_RANGE.
> > > b) Reduce the tlb timeout value from 100000us to 1000us. the original value
> > > is so long that affect the multimedia performance.
> >
> > By definition, timeout is something that should not normally happen.
> > Too long timeout affecting multimedia performance would suggest that
> > the timeout was actually happening, which is the core problem, not the
> > length of the timeout. Could you provide more details on this?
>
> As description above, this issue is because there is no dom->pgtlock in
> the mtk_iommu_iotlb_sync. I have tried that the issue will disappear
> after adding lock in it.
>
> Although the issue is fixed after this patch, I still would like to
> reduce the timeout value for somehow error happen in the future. 100ms
> is unnecessary for us. It looks a minor improvement rather than fixing
> the issue. I will use a new patch for it.
>

Okay, makes sense.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
