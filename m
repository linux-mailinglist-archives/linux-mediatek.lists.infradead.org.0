Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3123CA14
	for <lists+linux-mediatek@lfdr.de>; Tue, 11 Jun 2019 13:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLs3VoI4iL8hsKJkKsp368jQW5JRmyMSgCZULwtT5m8=; b=kQnC4L++P8x7m2
	4HBO8BgriqYMZ6+7vKLHKQNl++FLUtwXKc6u//xLq5KE8wITS9LmAi+uCf9YGWIw3v+eodrSpQ9fL
	MOuOlW3JY4WGXBrNF+63LT7CuQMuT97sNA+VCFhoMqhgf+Ma2KPy+9uxsW3KcczPGK/t2Kl7OwJKT
	GcjvJEMLXNkAFVxRY8JtZ+w2yK2uh4C+kCTmpXhNe2R/dXTFLWKl3YwB/2ulOpLiP++DuzkzzuH2c
	cgiH4yvZfGEZ4l5aZw/HMp4kEJ5Hy4EJs7hmBp4V/Ke2xGPyiWoNSgqJG8HzCfYfjxdT5NQuYFlpJ
	XT06VnIdzXlkhgrmxO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haf1R-0003Ib-Iy; Tue, 11 Jun 2019 11:33:01 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haf0w-00034v-2G
 for linux-mediatek@lists.infradead.org; Tue, 11 Jun 2019 11:32:36 +0000
Received: by mail-io1-xd42.google.com with SMTP id e5so9573817iok.4
 for <linux-mediatek@lists.infradead.org>; Tue, 11 Jun 2019 04:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GJ5KMjkPulVIlquMhDg/I0WD4XAnjse8O6WtWcGUz4E=;
 b=TlTFwFIxz9etSjSBZdcP2L6srMJb56KWUjVFS4qyFG2NEzpl/ugkDxZGDtevEXvCsu
 d+W4D0EjwpeQWLu6YTAqLlOWtV9+PYCjJ+BGYrb4gKrfG/NPB6ccs074WqJLtEQjGVso
 mSFb2VwUteI3d6rFAZ6+Iy65mgseV0VV/vvswhzRN77Hg3pqpHJnF2CXpEwVpu2pyAM1
 TYGTSH57wWYQoNtEH1TJ7m8hjnzm2XA+44SW/ctJefLRikEX++cKcPTNJGOnwBnKd99X
 sSqqMt8kFPa6rel1VGvJojdPG8wvyJ6Eb5oWIyyaz2xdhEyEUuLc4Detd3tySV6jR7EK
 bwKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GJ5KMjkPulVIlquMhDg/I0WD4XAnjse8O6WtWcGUz4E=;
 b=aPiCx0CayZI8/Y9w0Wp5hzrKvSKpNVNujOKd/p72C1ePNK+S7nXd8EEWqPvL3wxS8d
 Eoze7ic11BBEF3OyZutmhhYIhsO+FJhqJ9vCH1ep2dXIxHhWH3Ik7QKhUzf6ILF6PrXb
 CWseof+QbjNy61w57KuTY6ZV88Gt0GmBEsIPIg5ghcvrhEgC4ldkXa3mdDqyIFJKhqwp
 veZun9rb1PhWoqORnPnvsFWS3Bk5gg9LAslE83PbeHVAsIOlp6fZZQGBueMD8n868VKY
 XM4AxMVdnfr2UXKsqSYlCZdnq9KkFaO+Fkf/24i+iMg+0XjKEVHDREcYmB+rYRdTSZOJ
 37iw==
X-Gm-Message-State: APjAAAXxLA+7P50KiYTnjjvCD5kw5RiSnluQ5gttDloF9XfRiK9xAuQo
 OnCn+UbOHpUWGbHN9iWaLi7sCCTea8bExU9dRGra/A==
X-Google-Smtp-Source: APXvYqw9dSSfEyizP9qkfJ/fTJ+bPVpxmMW//LjyNaWWY5U1Qi8nthjbX348yzFM8aZPZ+LmzKj04oxrxcPDI3N9JoU=
X-Received: by 2002:a6b:641a:: with SMTP id t26mr3295112iog.3.1560252747608;
 Tue, 11 Jun 2019 04:32:27 -0700 (PDT)
MIME-Version: 1.0
References: <1559651172-28989-1-git-send-email-walter-zh.wu@mediatek.com>
 <CACT4Y+Y9_85YB8CCwmKerDWc45Z00hMd6Pc-STEbr0cmYSqnoA@mail.gmail.com>
 <1560151690.20384.3.camel@mtksdccf07>
 <CACT4Y+aetKEM9UkfSoVf8EaDNTD40mEF0xyaRiuw=DPEaGpTkQ@mail.gmail.com>
 <1560236742.4832.34.camel@mtksdccf07>
 <CACT4Y+YNG0OGT+mCEms+=SYWA=9R3MmBzr8e3QsNNdQvHNt9Fg@mail.gmail.com>
 <1560249891.29153.4.camel@mtksdccf07>
In-Reply-To: <1560249891.29153.4.camel@mtksdccf07>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Tue, 11 Jun 2019 13:32:16 +0200
Message-ID: <CACT4Y+aXqjCMaJego3yeSG1eR1+vkJkx5GB+xsy5cpGvAtTnDA@mail.gmail.com>
Subject: Re: [PATCH v2] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_043235_458842_C8FA1DBF 
X-CRM114-Status: GOOD (  32.47  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

On Tue, Jun 11, 2019 at 12:44 PM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>
> On Tue, 2019-06-11 at 10:47 +0200, Dmitry Vyukov wrote:
> > On Tue, Jun 11, 2019 at 9:05 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > >
> > > On Mon, 2019-06-10 at 13:46 +0200, Dmitry Vyukov wrote:
> > > > On Mon, Jun 10, 2019 at 9:28 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
> > > > >
> > > > > On Fri, 2019-06-07 at 21:18 +0800, Dmitry Vyukov wrote:
> > > > > > > diff --git a/include/linux/kasan.h b/include/linux/kasan.h
> > > > > > > index b40ea104dd36..be0667225b58 100644
> > > > > > > --- a/include/linux/kasan.h
> > > > > > > +++ b/include/linux/kasan.h
> > > > > > > @@ -164,7 +164,11 @@ void kasan_cache_shutdown(struct kmem_cache *cache);
> > > > > > >
> > > > > > >  #else /* CONFIG_KASAN_GENERIC */
> > > > > > >
> > > > > > > +#ifdef CONFIG_KASAN_SW_TAGS_IDENTIFY
> > > > > > > +void kasan_cache_shrink(struct kmem_cache *cache);
> > > > > > > +#else
> > > > > >
> > > > > > Please restructure the code so that we don't duplicate this function
> > > > > > name 3 times in this header.
> > > > > >
> > > > > We have fixed it, Thank you for your reminder.
> > > > >
> > > > >
> > > > > > >  static inline void kasan_cache_shrink(struct kmem_cache *cache) {}
> > > > > > > +#endif
> > > > > > >  static inline void kasan_cache_shutdown(struct kmem_cache *cache) {}
> > > > > > >
> > > > > > >  #endif /* CONFIG_KASAN_GENERIC */
> > > > > > > diff --git a/lib/Kconfig.kasan b/lib/Kconfig.kasan
> > > > > > > index 9950b660e62d..17a4952c5eee 100644
> > > > > > > --- a/lib/Kconfig.kasan
> > > > > > > +++ b/lib/Kconfig.kasan
> > > > > > > @@ -134,6 +134,15 @@ config KASAN_S390_4_LEVEL_PAGING
> > > > > > >           to 3TB of RAM with KASan enabled). This options allows to force
> > > > > > >           4-level paging instead.
> > > > > > >
> > > > > > > +config KASAN_SW_TAGS_IDENTIFY
> > > > > > > +       bool "Enable memory corruption idenitfication"
> > > > > >
> > > > > > s/idenitfication/identification/
> > > > > >
> > > > > I should replace my glasses.
> > > > >
> > > > >
> > > > > > > +       depends on KASAN_SW_TAGS
> > > > > > > +       help
> > > > > > > +         Now tag-based KASAN bug report always shows invalid-access error, This
> > > > > > > +         options can identify it whether it is use-after-free or out-of-bound.
> > > > > > > +         This will make it easier for programmers to see the memory corruption
> > > > > > > +         problem.
> > > > > >
> > > > > > This description looks like a change description, i.e. it describes
> > > > > > the current behavior and how it changes. I think code comments should
> > > > > > not have such, they should describe the current state of the things.
> > > > > > It should also mention the trade-off, otherwise it raises reasonable
> > > > > > questions like "why it's not enabled by default?" and "why do I ever
> > > > > > want to not enable it?".
> > > > > > I would do something like:
> > > > > >
> > > > > > This option enables best-effort identification of bug type
> > > > > > (use-after-free or out-of-bounds)
> > > > > > at the cost of increased memory consumption for object quarantine.
> > > > > >
> > > > > I totally agree with your comments. Would you think we should try to add the cost?
> > > > > It may be that it consumes about 1/128th of available memory at full quarantine usage rate.
> > > >
> > > > Hi,
> > > >
> > > > I don't understand the question. We should not add costs if not
> > > > necessary. Or you mean why we should add _docs_ regarding the cost? Or
> > > > what?
> > > >
> > > I mean the description of option. Should it add the description for
> > > memory costs. I see KASAN_SW_TAGS and KASAN_GENERIC options to show the
> > > memory costs. So We originally think it is possible to add the
> > > description, if users want to enable it, maybe they want to know its
> > > memory costs.
> > >
> > > If you think it is not necessary, we will not add it.
> >
> > Full description of memory costs for normal KASAN mode and
> > KASAN_SW_TAGS should probably go into
> > Documentation/dev-tools/kasan.rst rather then into config description
> > because it may be too lengthy.
> >
> Thanks your reminder.
>
> > I mentioned memory costs for this config because otherwise it's
> > unclear why would one ever want to _not_ enable this option. If it
> > would only have positive effects, then it should be enabled all the
> > time and should not be a config option at all.
>
> Sorry, I don't get your full meaning.
> You think not to add the memory costs into the description of config ?
> or need to add it? or make it not be a config option(default enabled)?

Yes, I think we need to include mention of additional cost into _this_
new config.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
