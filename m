Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 482F9446ED
	for <lists+linux-mediatek@lfdr.de>; Thu, 13 Jun 2019 18:55:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gt9gsXPrrr2/jWdgHPny5tkIutmLsZflIyAphAHAK+o=; b=gHgikVuqXpKMLJ
	fD64TmTr3oQ4d84UiBJ2gPREmVNyBCaLaPA/ef2kfTLrSLyVxU2zZviisLRr9RNepiFbsZV7vjkPc
	58CcEoRwU0MwAr1RsBZ09+leiYZtmMs90t6wzg7qV00HR/6XmfVPZj5vmCDwOKQrQ3/IXUNPngPze
	tLuQklFIjq3BOFq/SgXzpPM8bjiVCuz3C8U14F2LTqkG1CrN2Qi6po2dUVO161VC//3atQcvoAMo3
	UiEfLMVA9d8Jisao2CmExuVcTe7MJWy6e7lQmUmBzz/d3g9VCbORHOmhvTgIXZvPJdU1BsR1/4hlL
	LZxudHLqPuDEUyFRfoJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT0r-00075s-6z; Thu, 13 Jun 2019 16:55:45 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT0g-0006yc-4y
 for linux-mediatek@lists.infradead.org; Thu, 13 Jun 2019 16:55:37 +0000
Received: by mail-qt1-x842.google.com with SMTP id m29so23375063qtu.1
 for <linux-mediatek@lists.infradead.org>; Thu, 13 Jun 2019 09:55:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=cpeR1oqDMBZUpG954pBrUTTYYcn3Zggg2IBtHJxA5v4=;
 b=Zqq8iBgdsPVPJLY4JGsFEQwdaxwUciGd2Fc5ZKjNs5jgV0Pu0qQ4GOxcUsMI/XM1bM
 s2K4nQnJRAjktThjAVg+9xli/pUYEzrr9r5pyf8JN0ERtXwIjdz9JZr26sAWQm3PnuhU
 fHlLpLHENwwr84jPnidvMqH07WJ+FXj/edyclsk/5Z83gjRf2p0qJMOXcXe04qO2TTQM
 Paa3Hd2vsAa2oHswH87np/Sxkwi4jRwyeb/pAc9ThMgpOgmMWMCq1TLtghGHL8wnA5dV
 NTz8Xt3LHq7CtAW2EciK3dRzh/h2aBYuLpp7IGRJOu3AWGBB2BvGtzuFKk2g6xydakGR
 rhdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=cpeR1oqDMBZUpG954pBrUTTYYcn3Zggg2IBtHJxA5v4=;
 b=dUeDlq6bj3vXMlqfXltEsOAliA+ZWpf/nKjFr4aeAaqh589VPPxH8AHOIlzZsYZcEQ
 1vOKthG7/Y9k83fwalMPotTEXZAmrCQMvHmrBWfVIbUAm8eAwpkG6qf7uXpEzG/ElqPT
 c6usxrgEGSGYiDewsMd9MkjcQa+4eeAOtgCv7A1N1zY3/L/DC5MxLxl18zuSSsMAlLdp
 tx7gbaMjNdlynDV9kjYMnx8a4YxZEHgtsu5XNHciWjFOuTgEt9oaCBOy5f/mrIz+5GI4
 vdgKoFYqK3sHjChePZHJz8TH5IKHW5bz+jsJajABVg4t+x9DLfEYWIVMSiFYr9UJfyCd
 msoQ==
X-Gm-Message-State: APjAAAU3VF00bepkfZwI1rCFcG+b8OpsZho5duwQzCrSjWfF3eWD57T6
 MyGzUhfMsJdOyTblYYbZS/PJK0yT35ztqrRXpPJqeQ==
X-Google-Smtp-Source: APXvYqz86ouH7qW11YhIdQ+/pUkNlNb42R0tYC+q9OD3ZyZ2tlhUGh65ELc9Aj3l+yGRkQyoKy8wbukUoOx4aP/oyNA=
X-Received: by 2002:a0c:afeb:: with SMTP id t40mr4514204qvc.28.1560444932838; 
 Thu, 13 Jun 2019 09:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkfWY5eShXAr6QyFjqyaL-JjgQ+OKU0LtComURBVf_sDCqGeA@mail.gmail.com>
In-Reply-To: <CAJkfWY5eShXAr6QyFjqyaL-JjgQ+OKU0LtComURBVf_sDCqGeA@mail.gmail.com>
From: Nathan Huckleberry <nhuck@google.com>
Date: Thu, 13 Jun 2019 09:55:22 -0700
Message-ID: <CAJkfWY7=JKBub9W9q85cqQhZ1P3VT02CMOHaSyNsHebW4-xikQ@mail.gmail.com>
Subject: Re: Cleanup of -Wunused-const-variable in
 drivers/clk/mediatek/clk-mt8516.c
To: fparent@baylibre.com, Michael Turquette <mturquette@baylibre.com>,
 matthias.bgg@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_095534_258657_99BC4911 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux@googlegroups.com, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hey all,

I'm looking into cleaning up ignored warnings in the kernel so we can
remove compiler flags to ignore warnings. There's a variable
(ddrphycfg_parents) in clk-mt8516.c causing an unused const warning.
Just wanted to reach out to ask if this variable is intended to be
used.

It doesn't look like it has been used since it was first introduced.
If it is no longer needed I'd like to remove it.

https://github.com/ClangBuiltLinux/linux/issues/523

Thanks,
Nathan Huckleberry

Re-sent in plaintext so mailing lists pick it up.


On Thu, Jun 13, 2019 at 9:47 AM Nathan Huckleberry <nhuck@google.com> wrote:
>
> Hey all,
>
> I'm looking into cleaning up ignored warnings in the kernel so we can remove compiler flags to ignore warnings. There's a variable (ddrphycfg_parents) in clk-mt8516.c causing an unused const warning. Just wanted to reach out to ask if this variable is intended to be used.
>
> It doesn't look like it has been used since it was first introduced. If it is no longer needed I'd like to remove it.
>
> https://github.com/ClangBuiltLinux/linux/issues/523
>
> Thanks,
> Nathan Huckleberry

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
