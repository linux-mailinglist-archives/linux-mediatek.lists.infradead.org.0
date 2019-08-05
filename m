Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CCC681719
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:32:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDdsL/bvGNb3RMjf5WZNYEgk4ir7XoaAj70eFF14AiI=; b=V/nwT9xA9Djlv+
	eGM3sEo7lr+yhBZtC5+sKX8y8Wp+2EEY2Ln1ICcJyNtvnNvTR0JQf4TBhpJSAHe8n37EJCG6N0Hg5
	bGBU22avJpFWdeXwMRmo4oWIYZoGwTh488nVdDWo2AGEycN7dUSAWy5kwlS+r52o72QIdadQzNhxZ
	Ig64y8Iv7wKOVY35iZuYkqBS7ikU8e3d9c4h7zuBHtLULyQwDLQmdB7BeAK3r5U0rYujQUQycZULh
	Tm1vb5yaSuLwFmCh2pzjYXklViIkHWkt6SHSZHeHFvle0XhqHrTJLVxBG7YhrSnEhKmgj9/PMCYDn
	sSzsG+06TXkcfGdwBq/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huaHx-0003FQ-3d; Mon, 05 Aug 2019 10:32:25 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huaHd-0002zW-Bj
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:32:08 +0000
Received: by mail-ed1-x542.google.com with SMTP id d4so78219278edr.13
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2t8NpBMFz+vZWj7uMv0mNnSRA2UuSvBBLYkX3l+9iFg=;
 b=OlUQn9n1XfLu7teP0KKGlghRXxE6YfdgOYBt+po0ODAQAZtrX33RsFC7JrwnExa8cL
 MSNWxapbzgtY/jV/tmPXt03VuurAMp7FYIh6dN5w7vOK4bqXapuRztsQMw4XbnFxCq5j
 qi6USnwHuwJmQK4LdK0w4JDAEpdOA4Bo7Sw3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2t8NpBMFz+vZWj7uMv0mNnSRA2UuSvBBLYkX3l+9iFg=;
 b=sllZHPCMtXkMebBUO0WUOxHgu/Y8+g6AK1hPGjExenemfvfmmoAlmmAIE2bZPyEWSY
 0hqsbdX8zchlyN/WHpTGlJzuY+Jg7VrB0VzpNHZtpZ0+wYH5JMssaewDi/8KlIPZewCI
 afr6Y+9X97TWZQRSJ8/igXyQngp8gd7FHy9ZfY4Vvgc8O0gJUcA90Sl/xKvgG/aDyhek
 jV9eQf1lsIdHnmeQ7ZmZbozRvEE+bB1Ad5XRaIAcrkqbiSxe3h7PIhsOaGZCJ/un9OI/
 dofBXgTiXQAJMnGWqfdCyLDlLCPsjDSqJWpui4qd6Lkq0syKQ/VtzCAL/pGf2tqut1/R
 SomA==
X-Gm-Message-State: APjAAAXMovr5V81OfD/SBOwmmX3zDj2tbLu7aYMMbYNk5CFQLebyN4PG
 OXYtP185SMYke+2Yx/qF+PYKXGdXleDnCdj7GfN5h3cyGY4=
X-Google-Smtp-Source: APXvYqzAn+oC3iie4UJoTUwTGxe/UPUNm7dP1YnY1Jv/HqewkbGk9qXU4qTnKQnQjKvN1dc2A2il3n7AnKDHmWIRPmg=
X-Received: by 2002:a17:906:644c:: with SMTP id
 l12mr112559234ejn.142.1565001123236; 
 Mon, 05 Aug 2019 03:32:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190709072547.217957-1-pihsun@chromium.org>
 <20190709072547.217957-3-pihsun@chromium.org>
 <CAPBb6MUsKYsG2qYFsj8DhtAWipRw887nk_gi68Gt+DcuHzApgw@mail.gmail.com>
In-Reply-To: <CAPBb6MUsKYsG2qYFsj8DhtAWipRw887nk_gi68Gt+DcuHzApgw@mail.gmail.com>
From: Pi-Hsun Shih <pihsun@chromium.org>
Date: Mon, 5 Aug 2019 18:31:26 +0800
Message-ID: <CANdKZ0cb8OZVjOb9j7ivCCs3afXgshFWgrYkkZJOrGkHNWcEPg@mail.gmail.com>
Subject: Re: [PATCH v13 2/5] remoteproc/mediatek: add SCP support for mt8183
To: Alexandre Courbot <acourbot@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_033205_427185_B1CED2AC 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Thanks for the review. I'll address most of the comments in the next version.

On Mon, Jul 22, 2019 at 5:37 PM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> Hi Pi-Hsun,
>
> On Tue, Jul 9, 2019 at 4:27 PM Pi-Hsun Shih <pihsun@chromium.org> wrote:
> > +static void *scp_da_to_va(struct rproc *rproc, u64 da, int len)
> > +{
> > +       struct mtk_scp *scp = (struct mtk_scp *)rproc->priv;
> > +       int offset;
> > +
> > +       if (da < scp->sram_size) {
> > +               offset = da;
> > +               if (offset >= 0 && ((offset + len) < scp->sram_size))
> > +                       return (__force void *)(scp->sram_base + offset);
> > +       } else if (da >= scp->sram_size &&
> > +                  da < (scp->sram_size + MAX_CODE_SIZE)) {
> > +               offset = da;
>
> This line looks suspicious. Shouldn't it be
>
>     offset = da - scp->sram_size?
>

Actually the whole "else if (...)" is not used. Would remove this in
next version.

> > +
> > +/*
> > + * Copy src to dst, where dst is in SCP SRAM region.
> > + * Since AP access of SCP SRAM don't support byte write, this always write a
> > + * full word at a time, and may cause some extra bytes to be written at the
> > + * beginning & ending of dst.
> > + */
> > +void scp_memcpy_aligned(void *dst, const void *src, unsigned int len)
> > +{
> > +       void *ptr;
> > +       u32 val;
> > +       unsigned int i = 0;
> > +
> > +       if (!IS_ALIGNED((unsigned long)dst, 4)) {
> > +               ptr = (void *)ALIGN_DOWN((unsigned long)dst, 4);
> > +               i = 4 - (dst - ptr);
> > +               val = readl_relaxed(ptr);
> > +               memcpy((u8 *)&val + (4 - i), src, i);
> > +               writel_relaxed(val, ptr);
> > +       }
> > +
> > +       while (i + 4 <= len) {
> > +               val = *((u32 *)(src + i));
> > +               writel_relaxed(val, dst + i);
>
> If dst is not aligned to 4, this is going to write to an address that
> is not a multiple of 4, even though it writes a long. Is this ok?
> Typically limitations in write size come with alignment limitations.
>

If dst is not aligned to 4, the first if (!IS_ALIGNED(...)) block
should make that the (dst + i) is a multiple of 4, so the write here
is aligned.

> > +               i += 4;
> > +       }
> > +       if (i < len) {
> > +               val = readl_relaxed(dst + i);
> > +               memcpy(&val, src + i, len - i);
> > +               writel_relaxed(val, dst + i);
> > +       }
> > +}
> > +EXPORT_SYMBOL_GPL(scp_memcpy_aligned);
>
> IIUC this function's symbol does not need to be exported since it is
> only used in the current kernel module.
>

I've tried to remove this EXPORT line, but then there would be error
while compiling:
ERROR: "scp_memcpy_aligned" [drivers/remoteproc/mtk_scp.ko] undefined!
I think it's because the mtk_scp.c and mtk_scp_ipi.c both use the
scp_memcpy_aligned, but is compiled as separate .o files. So the
EXPORT_SYMBOL is needed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
