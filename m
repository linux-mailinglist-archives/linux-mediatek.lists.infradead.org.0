Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D353CA2E
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 13:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S7AmF02C64/tAdEWRqv9EoprCaiwTnpFJ8LaZBCu308=; b=fI7L8Mh8FuOTTX
	gAWRZ3fJzkzJMp0Sfc9RlGYEhXeiw2EDp+fUQ73aTsSErua+Wgark6L1E4BSvXuVs3KCV9SXqB7c2
	3DV2XVTRqZOZzAXeWuP/f6Hyn3V9SOFLkfeH9azTrza1QguK8mJ3qn7L+4JURnerUmT2xrETvbImm
	T1zFPxWrNJ2OLwCwHSms6YD8UeDkCnaWNnKUoE5orzMMjs3gjpUmyOuhMYzbI51vAWv32X7+V3a8X
	AdSB1rQ+oYqBGpj4bXwPJbmkmBcGJV7hCRKZEZgFWpYt+EuRzTr/Vl5VrahrNjNEJz2GYTtxHf/1s
	vWSSF6zs8ctXtXdlee4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haf7x-0005H0-G1; Tue, 11 Jun 2019 11:39:45 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haf7c-00053k-9F
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 11:39:25 +0000
Received: by mail-it1-x141.google.com with SMTP id i21so4281441ita.5
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 04:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=efKaC7Y7c8Vr7TGFSTF+nZFI+Dv5FKl3QaIWZEc3/K8=;
 b=HjkPP0rM7pScVIY6Xh/M07vmy3aQ5PQtlC4eQYxtn2CajIu0HwuzsdInUj68v/sWmU
 hPVZnnKJgp+oUG80tXsDTJeeiwSwiivMpO0vNbd8Gf3CFiHbqENah0ETB0RfLCB6+Cel
 zV1g6cD4FIiPPCKmVB/vpUdW1IWSgVJjxuAJstz5UaA+fR/VYZZ7nN9jQs3wgxItZZHl
 yRVioUQib6ztXoltXQxhJ6x1FfcH4KcUZnu2nXxkr8kmQNPy1YmL3IeB0nkALe+v9Xm3
 YEflz1uRYXO2RmAqI4hG289nPmmdWAyZWzs8FpQP11ZhkFCE8VkA78TvZrQjZkSxpaPU
 dwbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=efKaC7Y7c8Vr7TGFSTF+nZFI+Dv5FKl3QaIWZEc3/K8=;
 b=jKVN83uiNF9PnvKhLwpoyAZinDhdTHPuhzoTCQk/m4XyKNtFhw/yH8JIaDCQnxfHuA
 lp24ksZguB0UnxBlVfJWt2Mkicp+Ur2sscIBBg1P5c5obZHO7tmpWFDG9H1U1RNoALTV
 fbsaOqLLmKuKcSSDhgIROC3nVdjI5lAvejqu8ZPA/I4Cilg/Jdi31DcaOzPUHL1THQy/
 uZMGy4W4UQ7oe2Nt5iAGwzUinCs7tZuFdppUbyWKL2sAgIzLvM1+04HosdRNfhYj3BWf
 qMooQZu9Y9N0VUTRCmklwSmxElO74j1Q3isIVXu/mP4CVya0pqa9gGvd5SMu4B5CSZe4
 sEEA==
X-Gm-Message-State: APjAAAWA1qSolNcwuwmPJ7cIqCYjXbxAuVNKUYNevEtIsysSWTaJyRri
 7jzV9D6JSSt89oPlZiLduhY5dET//P+F+aWyUjZrAA==
X-Google-Smtp-Source: APXvYqw6TS3RA5VFysgGlUoRPwCP73C8eavMXMYwqcgn3y/f0Ev240DJzy0aqeonNciKyczUrHgd4GX2uq+/P9k9YbM=
X-Received: by 2002:a24:9083:: with SMTP id x125mr18085676itd.76.1560253162633; 
 Tue, 11 Jun 2019 04:39:22 -0700 (PDT)
MIME-Version: 1.0
References: <1559651172-28989-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+Y9_85YB8CCwmKerDWc45Z00hMd6Pc-STEbr0cmYSqnoA@mail.gmail.com>
 <1560151690.20384.3.camel@mtksdccf07>
 <CACT4Y+aetKEM9UkfSoVf8EaDNTD40mEF0xyaRiuw=DPEaGpTkQ@mail.gmail.com>
 <1560236742.4832.34.camel@mtksdccf07>
 <CACT4Y+YNG0OGT+mCEms+=SYWA=9R3MmBzr8e3QsNNdQvHNt9Fg@mail.gmail.com>
 <1560249891.29153.4.camel@mtksdccf07>
 <CACT4Y+aXqjCMaJego3yeSG1eR1+vkJkx5GB+xsy5cpGvAtTnDA@mail.gmail.com>
In-Reply-To: <CACT4Y+aXqjCMaJego3yeSG1eR1+vkJkx5GB+xsy5cpGvAtTnDA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Jun 2019 13:39:11 +0200
Message-ID: <CACT4Y+bNQCa_h158Hhug_DgF3X-8Uoc6Ar7p5vFvHE7uThQmjg@mail.gmail.com>
Subject: Re: [PATCH v2] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_043924_351836_4CEEE769 
X-CRM114-Status: GOOD (  33.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, kasan-dev <kasan-dev@googlegroups.com>,
 Pekka Enberg <penberg@kernel.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>,
 =?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <Miles.Chen@mediatek.com>,
 Alexander Potapenko <glider@google.com>, David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, Christoph Lameter <cl@linux.com>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

I should have been asked this earlier, but: what is your use-case?
Could you use CONFIG_KASAN_GENERIC instead? Why not?
CONFIG_KASAN_GENERIC already has quarantine.

On Tue, Jun 11, 2019 at 1:32 PM Dmitry Vyukov <dvyukov@google.com> wrote:
>
> On Tue, Jun 11, 2019 at 12:44 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> >
> > On Tue, 2019-06-11 at 10:47 +0200, Dmitry Vyukov wrote:
> > > On Tue, Jun 11, 2019 at 9:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > >
> > > > On Mon, 2019-06-10 at 13:46 +0200, Dmitry Vyukov wrote:
> > > > > On Mon, Jun 10, 2019 at 9:28 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > > >
> > > > > > On Fri, 2019-06-07 at 21:18 +0800, Dmitry Vyukov wrote:
> > > > > > > > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > > > > > > > index b40ea104dd36..be0667225b58 100644
> > > > > > > > --- a/include/linux/kasan.h
> > > > > > > > +++ b/include/linux/kasan.h
> > > > > > > > @@ -164,7 +164,11 @@ void kasan_cache_shutdown(struct kmem_cache *cache);
> > > > > > > >
> > > > > > > >  #else /* CONFIG_KASAN_GENERIC */
> > > > > > > >
> > > > > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > > > +void kasan_cache_shrink(struct kmem_cache *cache);
> > > > > > > > +#else
> > > > > > >
> > > > > > > Please restructure the code so that we don't duplicate this function
> > > > > > > name 3 times in this header.
> > > > > > >
> > > > > > We have fixed it, Thank you for your reminder.
> > > > > >
> > > > > >
> > > > > > > >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> > > > > > > > +#endif
> > > > > > > >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > > > > > > >
> > > > > > > >  #endif /* CONFIG_KASAN_GENERIC */
> > > > > > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > > > > > index 9950b660e62d..17a4952c5eee 100644
> > > > > > > > --- a/lib/Kconfig.kasan
> > > > > > > > +++ b/lib/Kconfig.kasan
> > > > > > > > @@ -134,6 +134,15 @@ config KASAN_S390_4_LEVEL_PAGING
> > > > > > > >           to 3TB of RAM with KASan enabled). This options allows to force
> > > > > > > >           4-level paging instead.
> > > > > > > >
> > > > > > > > +config KASAN_SW_TAGS_IDENTIFY
> > > > > > > > +       bool "Enable memory corruption idenitfication"
> > > > > > >
> > > > > > > s/idenitfication/identification/
> > > > > > >
> > > > > > I should replace my glasses.
> > > > > >
> > > > > >
> > > > > > > > +       depends on KASAN_SW_TAGS
> > > > > > > > +       help
> > > > > > > > +         Now tag-based KASAN bug report always shows invalid-access error, This
> > > > > > > > +         options can identify it whether it is use-after-free or out-of-bound.
> > > > > > > > +         This will make it easier for programmers to see the memory corruption
> > > > > > > > +         problem.
> > > > > > >
> > > > > > > This description looks like a change description, i.e. it describes
> > > > > > > the current behavior and how it changes. I think code comments should
> > > > > > > not have such, they should describe the current state of the things.
> > > > > > > It should also mention the trade-off, otherwise it raises reasonable
> > > > > > > questions like "why it's not enabled by default?" and "why do I ever
> > > > > > > want to not enable it?".
> > > > > > > I would do something like:
> > > > > > >
> > > > > > > This option enables best-effort identification of bug type
> > > > > > > (use-after-free or out-of-bounds)
> > > > > > > at the cost of increased memory consumption for object quarantine.
> > > > > > >
> > > > > > I totally agree with your comments. Would you think we should try to add the cost?
> > > > > > It may be that it consumes about 1/128th of available memory at full quarantine usage rate.
> > > > >
> > > > > Hi,
> > > > >
> > > > > I don't understand the question. We should not add costs if not
> > > > > necessary. Or you mean why we should add _docs_ regarding the cost? Or
> > > > > what?
> > > > >
> > > > I mean the description of option. Should it add the description for
> > > > memory costs. I see KASAN_SW_TAGS and KASAN_GENERIC options to show the
> > > > memory costs. So We originally think it is possible to add the
> > > > description, if users want to enable it, maybe they want to know its
> > > > memory costs.
> > > >
> > > > If you think it is not necessary, we will not add it.
> > >
> > > Full description of memory costs for normal KASAN mode and
> > > KASAN_SW_TAGS should probably go into
> > > Documentation/dev-tools/kasan.rst rather then into config description
> > > because it may be too lengthy.
> > >
> > Thanks your reminder.
> >
> > > I mentioned memory costs for this config because otherwise it's
> > > unclear why would one ever want to _not_ enable this option. If it
> > > would only have positive effects, then it should be enabled all the
> > > time and should not be a config option at all.
> >
> > Sorry, I don't get your full meaning.
> > You think not to add the memory costs into the description of config ?
> > or need to add it? or make it not be a config option(default enabled)?
>
> Yes, I think we need to include mention of additional cost into _this_
> new config.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
