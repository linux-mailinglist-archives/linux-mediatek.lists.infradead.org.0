Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE944E14AD
	for <lists+linux-mediatek@lfdr.de>; Wed, 23 Oct 2019 10:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QaFg99XX5evNdJ17WBblRYCvhbtyMsUNZaRQ3oPa96A=; b=EP5ifLW//kwysa
	S6fZI9l9h0dpJ/ywn1hOw8EPRe+oyNQhYABMA+3g64YEjC5XpqMyRG38QGwmRRD+F/oQjMd1Doidv
	912sm4ix01YqwloQyeuvdfIi4LcS3x06U2juAvm4kcRrgamQe2qKB+wzoMWiupfsEkUKWZewLWM2g
	dKuzsAkA6h6eCDzc6Czw95j6y6ymejc1g652vCGT+SPqfUTCbuE83lIw0n6iMxjfuElwNeq+9YVSW
	fmNAV88D6AqjuLtNHLtXpe9u+snh3z9suwyrS0BMFaeCqWI8GWr4grhGO5Nc/7YuzgR0DOnDWrnAs
	8AVg3ytDMo6Q8oU1jMbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCKz-0007WT-FJ; Wed, 23 Oct 2019 08:49:49 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCKg-0006wS-As
 for linux-mediatek@lists.infradead.org; Wed, 23 Oct 2019 08:49:31 +0000
Received: by mail-oi1-x241.google.com with SMTP id k25so16649600oiw.13
 for <linux-mediatek@lists.infradead.org>; Wed, 23 Oct 2019 01:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ADV4dloY4QrpGFTvy/OoeHNXpjGf72Q0UAxYSc8ChkI=;
 b=huwfFp12qyI2jHm5EkRIvVBfBZqxMGd9x3nLq47NHMuoNKyPqUUlPqebVk2hNWcmoB
 khsxVS+6M6Mwbin2NE2ARQLmtl2uUthxZN6Q0ty4ygeOYJOmRfBZsicWfsp0FZeh0PR0
 0YM25+A7HZueY+CL67+tKQ4O0O+iPzCz3YCSV7s5SXkpIa1N/74v/bSlQ8OVkxDLFOtZ
 t1WUqnauORxl1IlJycJtJDRyJNJFWU0w6tlcmL3a7O2EPySayNDeSJq2uSSuC3gJq3vQ
 lmjitHFVXJtM3d77FbqsRR5hW3PKY6hdPWimAJgEkDU4svHHe24YtTnR4XqvCMWsWMxz
 tapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ADV4dloY4QrpGFTvy/OoeHNXpjGf72Q0UAxYSc8ChkI=;
 b=qx94jiTn6nHtNSgwhBGu583O5ecw2jgLxCTv1ssalU8QLmsJGeeek8KCRBIvc36bZs
 RQeP6clc5SeLZ/YtKCKOb9f5sEL3z+eCsJ9lF1RipqDCpmO3hyG8ITJdUniJRzZcEypj
 DVv7ylYDTs104g0ooNEDbumE8ZpyL+AQm6WbQe5cOtGL8bWHWgY7OeWBxhqVFTT8RE6p
 yJv4hmzSFIDwJHqHU+r2KhWt7R3goafyEoBRydMLu1wS+8XUPembR2trZVHwSpB5iU8E
 Mz6F9U7F80VilimdMRSpYhRCYUXQrLNl9S9vQEDwn5ZSvlrUDscVL5cYs6engOc9A1Z8
 ApTw==
X-Gm-Message-State: APjAAAXrWy+epnIWPKlvJokD/atcU83bXwf4NdF+N5f69FIliw3oyicx
 BFBexG1D+KUGfswbTa7apok2PJFmbBLqpux4P5bfbA==
X-Google-Smtp-Source: APXvYqzqfl89y1pbwQVoS8A11ClrnUFaZyaqUTogCmeTUjY5/jx96G9aTd3cpQSBIBLrLvTVV6/LLgDn+8AwgABdV6M=
X-Received: by 2002:aca:1a18:: with SMTP id a24mr6615198oia.145.1571820568027; 
 Wed, 23 Oct 2019 01:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20191023063103.44941-1-maowenan@huawei.com>
 <CA+Px+wX7-tn-rXeKqnPtp74tU5cLxhJwF6XZ_jeQX-tnAfvO5g@mail.gmail.com>
 <1d948ec1-69e4-735f-c369-80d2b28e0eaa@huawei.com>
In-Reply-To: <1d948ec1-69e4-735f-c369-80d2b28e0eaa@huawei.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 23 Oct 2019 16:49:16 +0800
Message-ID: <CA+Px+wXgXkmVYboPcrhOWkAwRB2ygLDLi+TN9xw2awUZKMhCJA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
To: maowenan <maowenan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_014930_384054_5EDA4704 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
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
Cc: linux-arm-kernel@lists.infradead.org,
 ALSA development <alsa-devel@alsa-project.org>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuehaibing@huawei.com,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?U2h1bmxpIFdhbmcgKOeOi+mhuuWIqSk=?= <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, tglx@linutronix.de,
 Jaroslav Kysela <perex@perex.cz>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 4:38 PM maowenan <maowenan@huawei.com> wrote:
> I receive below message after I post, do you know why?
> '''
> Your mail to 'Alsa-devel' with the subject
>
>     [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
>
> Is being held until the list moderator can review it for approval.
>
> The reason it is being held:
>
>     Post by non-member to a members-only list

I don't exactly know.  But I got similar messages when I first time
sent mail to the alsa-devel.

Have you subscribed to alsa-devel mailing list?  I guess it is fine to
wait maintainers to proceed your patch.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
