Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9596B6FC57
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 11:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ss9TPacE/YsCRYMEUYWumyuFKfSuktk2lyQYjKoKZvE=; b=BOVdcWnvjfTrQ+
	+RWIDAkAZG0G/99ZKcChCYgkJIthvIoi2/dWWNER5+Zu2n0oTPJdmwvc5bJ1ep6uDOhvxk2wpLFNd
	G/cV8Z6BbIW2SOciQS5REjmf6IwJOV5CXcj3UR32DfLjyNYhp8LdDvZtjxJfaCPXXtfs1f61GS75n
	IrUGmfA1gf/wYlIUMeeIT+ngrJbF8odPRPTDfxcfDOnwaizkpHZHg5XILcGV1tc4JeDtYwi1j3n1U
	WSaAegsoaykCONDPxk2Al6dpKK9edzQc23vBcWxqvN+R6jt53H/rvWut8z84XZ1qTiEhyX9G0Eavr
	b1X7z9TvOxjRgVmXryBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpUlr-0007YK-H1; Mon, 22 Jul 2019 09:38:15 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpUlL-0007OC-6i
 for linux-mediatek@lists.infradead.org; Mon, 22 Jul 2019 09:37:45 +0000
Received: by mail-ot1-x343.google.com with SMTP id r21so33494456otq.6
 for <linux-mediatek@lists.infradead.org>; Mon, 22 Jul 2019 02:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=geRfx7Ity09fmP1Dv/yIZ6HKgWPTNtnPfhNKKz3417o=;
 b=a+/dazIk0UvP4XTgmMD5NGZJH3rqP/6b7+GKX+I3ExHeaNWG2+tfv2QOdmi1qpRyoh
 VFUx4omRuM2j8D/KUDPjWHjtdhSKMYdsuVq/OjEQl05Z1Ih6Zk5GWdsUTeS0I1r2QiS0
 y+DCvvq96euOyenMICYy/LXwxYJXJJBOrWhZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=geRfx7Ity09fmP1Dv/yIZ6HKgWPTNtnPfhNKKz3417o=;
 b=gzf3tO/HXC0WVfc0/NmGAm6PevTUrd+PtVPkwgzNYnka9nZ82ZmJbjpw1O9gn6MjIg
 YO1CanmI32xpuQGaCC5ZTQ3m6+SfNG4EYeDLr1JR09uykHKsEoQghptgny65bfjMpA6B
 YkJP+93N3UPYmxxdn09NOkHDz50pDEHfxJKpDgI0n0iClipaez0qwa2SQiYQpLcVd92a
 tkhyMTltD+VGATFN7m7rNxotR/kXCHrZsDHjzCmO2lIZOM6FefCWU6bKYdBWmCnZW7hp
 YTq5PQu02sU0B0W9+lcM4ZOQvtNIYpS/MhCDiL7Iq0KSZdAVsh3YLKRegWDzq6Cm1JN1
 4fnw==
X-Gm-Message-State: APjAAAUES2R8OFP/s6uOQr1UkDJO8+kFn9j01wZP5hxiR+Trh+PAx5wo
 7A7Qxrf3+qbLtpD6JtlQdz+q/lv5giMzcg==
X-Google-Smtp-Source: APXvYqwAqjuG4z1JfJgcPHrhU6StYJSCdO7Yc5rbNJBxovIBKg256NPptlksvepmpZduQQDB3IP9rg==
X-Received: by 2002:a9d:4f0f:: with SMTP id d15mr52156152otl.52.1563788261604; 
 Mon, 22 Jul 2019 02:37:41 -0700 (PDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com.
 [209.85.167.174])
 by smtp.gmail.com with ESMTPSA id o131sm13115434oia.21.2019.07.22.02.37.40
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 02:37:40 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id g7so29083390oia.8
 for <linux-mediatek@lists.infradead.org>; Mon, 22 Jul 2019 02:37:40 -0700 (PDT)
X-Received: by 2002:aca:5346:: with SMTP id h67mr30374947oib.55.1563788259861; 
 Mon, 22 Jul 2019 02:37:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190709072547.217957-1-pihsun@chromium.org>
 <20190709072547.217957-4-pihsun@chromium.org>
In-Reply-To: <20190709072547.217957-4-pihsun@chromium.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Mon, 22 Jul 2019 18:37:28 +0900
X-Gmail-Original-Message-ID: <CAPBb6MVBpWkbTJm6Ua2DJK=gEw2XCKeh-i_aZowN0q1tLUNJow@mail.gmail.com>
Message-ID: <CAPBb6MVBpWkbTJm6Ua2DJK=gEw2XCKeh-i_aZowN0q1tLUNJow@mail.gmail.com>
Subject: Re: [PATCH v13 3/5] remoteproc: mt8183: add reserved memory manager
 API
To: Pi-Hsun Shih <pihsun@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_023743_586241_D247A726 
X-CRM114-Status: GOOD (  21.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ohad Ben-Cohen <ohad@wizery.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Erin Lo <erin.lo@mediatek.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 4:27 PM Pi-Hsun Shih <pihsun@chromium.org> wrote:
>
> From: Erin Lo <erin.lo@mediatek.com>
>
> Add memory table mapping API for other driver to lookup
> reserved physical and virtual memory
>
> Signed-off-by: Erin Lo <erin.lo@mediatek.com>
> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> ---
> Changes from v12:
>  - Reformat a line to fit 80 character width.
>
> Changes from v11:
>  - No change.
>
> Changes from v10:
>  - Fix some type mismatch warnings when printing debug messages.
>
> Changes from v9:
>  - No change.
>
> Changes from v8:
>  - Add more reserved regions for camera ISP.
>
> Changes from v7, v6, v5:
>  - No change.
>
> Changes from v4:
>  - New patch.
> ---
>  drivers/remoteproc/mtk_scp.c          | 136 ++++++++++++++++++++++++++
>  include/linux/platform_data/mtk_scp.h |  24 +++++
>  2 files changed, 160 insertions(+)
>
> diff --git a/drivers/remoteproc/mtk_scp.c b/drivers/remoteproc/mtk_scp.c
> index 4713574d1aa2..dec271f69423 100644
> --- a/drivers/remoteproc/mtk_scp.c
> +++ b/drivers/remoteproc/mtk_scp.c
> @@ -358,6 +358,138 @@ void *scp_mapping_dm_addr(struct platform_device *pdev, u32 mem_addr)
>  }
>  EXPORT_SYMBOL_GPL(scp_mapping_dm_addr);
>
> +#if SCP_RESERVED_MEM
> +phys_addr_t scp_mem_base_phys;
> +phys_addr_t scp_mem_base_virt;
> +phys_addr_t scp_mem_size;

Can't these be static? Also scp_mem_size should probably be of type size_t.

> +
> +static struct scp_reserve_mblock scp_reserve_mblock[] = {
> +       {
> +               .num = SCP_ISP_MEM_ID,
> +               .start_phys = 0x0,
> +               .start_virt = 0x0,
> +               .size = 0x200000, /*2MB*/
> +       },
> +       {
> +               .num = SCP_ISP_MEM2_ID,
> +               .start_phys = 0x0,
> +               .start_virt = 0x0,
> +               .size = 0x800000, /*8MB*/
> +       },
> +       {
> +               .num = SCP_DIP_MEM_ID,
> +               .start_phys = 0x0,
> +               .start_virt = 0x0,
> +               .size = 0x900000, /*9MB*/
> +       },
> +       {
> +               .num = SCP_MDP_MEM_ID,
> +               .start_phys = 0x0,
> +               .start_virt = 0x0,
> +               .size = 0x600000, /*6MB*/
> +       },
> +       {
> +               .num = SCP_FD_MEM_ID,
> +               .start_phys = 0x0,
> +               .start_virt = 0x0,
> +               .size = 0x100000, /*1MB*/
> +       },
> +};
> +
> +static int scp_reserve_mem_init(struct mtk_scp *scp)
> +{
> +       enum scp_reserve_mem_id_t id;
> +       phys_addr_t accumlate_memory_size = 0;
> +
> +       scp_mem_base_phys = (phys_addr_t) (scp->phys_addr + MAX_CODE_SIZE);
> +       scp_mem_size = (phys_addr_t) (scp->dram_size - MAX_CODE_SIZE);
> +
> +       dev_info(scp->dev,
> +                "phys:0x%llx - 0x%llx (0x%llx)\n",
> +                (unsigned long long)scp_mem_base_phys,
> +                (unsigned long long)(scp_mem_base_phys + scp_mem_size),
> +                (unsigned long long)scp_mem_size);
> +       accumlate_memory_size = 0;
> +       for (id = 0; id < SCP_NUMS_MEM_ID; id++) {
> +               scp_reserve_mblock[id].start_phys =
> +                       scp_mem_base_phys + accumlate_memory_size;
> +               accumlate_memory_size += scp_reserve_mblock[id].size;
> +               dev_info(
> +                       scp->dev,
> +                       "[reserve_mem:%d]: phys:0x%llx - 0x%llx (0x%llx)\n", id,
> +                       (unsigned long long)scp_reserve_mblock[id].start_phys,
> +                       (unsigned long long)(scp_reserve_mblock[id].start_phys +
> +                                            scp_reserve_mblock[id].size),
> +                       (unsigned long long)scp_reserve_mblock[id].size);
> +       }
> +       return 0;
> +}
> +
> +static int scp_reserve_memory_ioremap(struct mtk_scp *scp)
> +{
> +       enum scp_reserve_mem_id_t id;
> +       phys_addr_t accumlate_memory_size = 0;
> +
> +       scp_mem_base_virt = (phys_addr_t)(size_t)ioremap_wc(scp_mem_base_phys,
> +                                                           scp_mem_size);
> +
> +       dev_info(scp->dev,
> +                "virt:0x%llx - 0x%llx (0x%llx)\n",
> +               (unsigned long long)scp_mem_base_virt,
> +               (unsigned long long)(scp_mem_base_virt + scp_mem_size),
> +               (unsigned long long)scp_mem_size);
> +       for (id = 0; id < SCP_NUMS_MEM_ID; id++) {
> +               scp_reserve_mblock[id].start_virt =
> +                       scp_mem_base_virt + accumlate_memory_size;
> +               accumlate_memory_size += scp_reserve_mblock[id].size;
> +       }
> +       /* the reserved memory should be larger then expected memory
> +        * or scp_reserve_mblock does not match dts
> +        */
> +       WARN_ON(accumlate_memory_size > scp_mem_size);
> +#ifdef DEBUG
> +       for (id = 0; id < NUMS_MEM_ID; id++) {
> +               dev_info(scp->dev,
> +                        "[mem_reserve-%d] phys:0x%llx,virt:0x%llx,size:0x%llx\n",
> +                        id,
> +                        scp_get_reserve_mem_phys(id),
> +                        scp_get_reserve_mem_virt(id),
> +                        scp_get_reserve_mem_size(id));
> +       }
> +#endif

I'd move this debug block to scp_map_memory_region(), right after
calling scp_reserve_memory_ioremap().

> +       return 0;
> +}
> +phys_addr_t scp_get_reserve_mem_phys(enum scp_reserve_mem_id_t id)
> +{
> +       if (id >= SCP_NUMS_MEM_ID) {
> +               pr_err("[SCP] no reserve memory for %d", id);
> +               return 0;
> +       } else

You don't need this else since the error path returns. Valid also for
the functions below.

> +               return scp_reserve_mblock[id].start_phys;
> +}
> +EXPORT_SYMBOL_GPL(scp_get_reserve_mem_phys);
> +
> +phys_addr_t scp_get_reserve_mem_virt(enum scp_reserve_mem_id_t id)
> +{
> +       if (id >= SCP_NUMS_MEM_ID) {
> +               pr_err("[SCP] no reserve memory for %d", id);
> +               return 0;
> +       } else
> +               return scp_reserve_mblock[id].start_virt;
> +}
> +EXPORT_SYMBOL_GPL(scp_get_reserve_mem_virt);
> +
> +phys_addr_t scp_get_reserve_mem_size(enum scp_reserve_mem_id_t id)
> +{
> +       if (id >= SCP_NUMS_MEM_ID) {
> +               pr_err("[SCP] no reserve memory for %d", id);
> +               return 0;
> +       } else
> +               return scp_reserve_mblock[id].size;
> +}
> +EXPORT_SYMBOL_GPL(scp_get_reserve_mem_size);
> +#endif
> +
>  static int scp_map_memory_region(struct mtk_scp *scp)
>  {
>         struct device_node *node;
> @@ -385,6 +517,10 @@ static int scp_map_memory_region(struct mtk_scp *scp)
>                 return -EBUSY;
>         }
>
> +#if SCP_RESERVED_MEM
> +       scp_reserve_mem_init(scp);
> +       scp_reserve_memory_ioremap(scp);
> +#endif
>         return 0;
>  }
>
> diff --git a/include/linux/platform_data/mtk_scp.h b/include/linux/platform_data/mtk_scp.h
> index b81ac5c7d320..96e56fdd0917 100644
> --- a/include/linux/platform_data/mtk_scp.h
> +++ b/include/linux/platform_data/mtk_scp.h
> @@ -138,4 +138,28 @@ unsigned int scp_get_venc_hw_capa(struct platform_device *pdev);
>  void *scp_mapping_dm_addr(struct platform_device *pdev,
>                           u32 mem_addr);
>
> +#define SCP_RESERVED_MEM       (1)
> +#if SCP_RESERVED_MEM
> +/* scp reserve memory ID definition*/
> +enum scp_reserve_mem_id_t {
> +       SCP_ISP_MEM_ID,
> +       SCP_ISP_MEM2_ID,
> +       SCP_MDP_MEM_ID,
> +       SCP_DIP_MEM_ID,
> +       SCP_FD_MEM_ID,
> +       SCP_NUMS_MEM_ID,
> +};
> +
> +struct scp_reserve_mblock {
> +       enum scp_reserve_mem_id_t num;
> +       u64 start_phys;
> +       u64 start_virt;
> +       u64 size;
> +};
> +
> +extern phys_addr_t scp_get_reserve_mem_phys(enum scp_reserve_mem_id_t id);
> +extern phys_addr_t scp_get_reserve_mem_virt(enum scp_reserve_mem_id_t id);
> +extern phys_addr_t scp_get_reserve_mem_size(enum scp_reserve_mem_id_t id);

Grammar nit: these should probably be called scp_get_reserved_mem_*.


> +#endif
> +
>  #endif /* _MTK_SCP_H */
> --
> 2.22.0.410.gd8fdbe21b5-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
