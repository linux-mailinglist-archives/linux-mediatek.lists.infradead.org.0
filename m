Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D8556185
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 06:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpKA7twuUH3SSsTKRKsI4035iNBVG9ctcIoZFN38+wI=; b=EINri3fJ3JHGE7
	Pr1QQcSzx6yWeA8cDHEBcoRnQnR6vGO61ZkVBhGDlS6nrd23tEgby2kJtnwNE5gJnRTIL8rUawt8J
	Zy3OL3j68cu5U6a5v3edtMDr4+gDORzO5m3CpvoQ8O4CYs3VkZUbZo/aBocQHxokhBiXBXcJKdm2t
	U0dc1gaoYpqpeGw3TFRvIwlAMdSDJiZuWvDsCEislnezUvjuaOcVnBaSAs/3YYKU9RbK+IsKOxKnQ
	ch/cyB/gUK+QOjSu7oG6sjdU42wcrN2loosHJd+zyNZ54NXhBZoz3XgP7zTTLCglKGqpkXp9sjVPo
	hZmntFiylBPrgyYM8LCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfzl6-0000BA-He; Wed, 26 Jun 2019 04:42:12 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfzkE-0008Pb-Rg
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 04:41:20 +0000
Received: by mail-wr1-x442.google.com with SMTP id n9so1034280wru.0
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 21:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ntAoYL/Rm2CJcPJUaWQJZo0Ebr78bwFEe95ZmtoSouc=;
 b=f1P00UfE/WsJ1aI7gyl8grjD6wzsTo/IZw8xeM220M8Jgg/3M7/yR2e9+ahFRvj6l4
 0C73HTn4zvlzhYTL8jSPROB/ELQHqNmfxjHWwZ4CDqp3X4BBwUgZtRB1WUNnPhgh6X28
 eWs5tuJrhkcLcPa4sTmw7ZDDIDeVUcS2/KSPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ntAoYL/Rm2CJcPJUaWQJZo0Ebr78bwFEe95ZmtoSouc=;
 b=cFk5iedDzDcCPtlqKi5HQ1mnn/A9BtfNDyx9V+rqnefL0FSNQDC8u7c+XFCCuHLumc
 VeTfXi9yyKEwbtZfD6ffXLZ9xvlCvxcFlRTseFZMCi4G1F/SZhB9YtwJshNR2ZL0ofQo
 D7P915S1ugs4NnxHJkM2FmaUDveko1lEPqpRZTe4zzOJbMpyxXB7ecMqTAdOxdPDbUzC
 f6hrtxwkLOU+Z3HlTHU2DQbYVrZ0FsH/t15uv02A2zCZl2Ub4vdd/C0UKdvMkDGspd/b
 33pZXRT2RJXnSRkGllHJ36ydiPCNtJZ3Zqf9IChUR2K4QzfBOAahcRttO77jnGRFT/7a
 ykFQ==
X-Gm-Message-State: APjAAAWICBjxb/FHHC18xGCWSls2mTjZPOsbvyB1qCzs48oEqF8WIL2C
 PLTJ02ssX183WLHogYvvC/cm0oM4MLgJX0789VWQBQ==
X-Google-Smtp-Source: APXvYqwwaq2zdvwYCzJZqL3hdUoXF8+GcySNmmBoqCYQlQWdKeqD1faXsoyJVX1HjTCqAM3+Dom4UvO0x/DwX4HQvck=
X-Received: by 2002:adf:e48e:: with SMTP id i14mr1474498wrm.311.1561524075932; 
 Tue, 25 Jun 2019 21:41:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com>
 <20190604112039.GA12168@chromium.org>
 <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
In-Reply-To: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 26 Jun 2019 13:41:04 +0900
Message-ID: <CAHD77HkJ8aHgKugC3+Du-OoqP9yg0yKt+-_RyL1cZ4e5QkuUhQ@mail.gmail.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
To: Alexandre Courbot <acourbot@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_214118_949975_38A52762 
X-CRM114-Status: GOOD (  19.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Yu Zhao <yuzhao@chromium.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, Ross Zwisler <zwisler@chromium.org>,
 Frederic Chen <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 1:48 PM Alexandre Courbot <acourbot@chromium.org> wrote:
>
> On Tue, Jun 4, 2019 at 8:20 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > > +
> > > +     ret = mdp_vpu_get_locked(mdp);
> > > +     if (ret < 0)
> > > +             goto err_load_vpu;
> >
> > This shouldn't happen in open(), but rather the latest possible point in
> > time. If one needs to keep the VPU running for the time of streaming, then
> > it should be start_streaming. If one can safely turn the VPU off if there is
> > no frame queued for long time, it should be just in m2m job_run.
> >
> > Generally the userspace should be able to
> > just open an m2m device for querying it, without any side effects like
> > actually powering on the hardware or grabbing a hardware instance (which
> > could block some other processes, trying to grab one too).
>
> OTOH looking at the code of mdp_vpu_get_locked(), we do the whole
> rproc_boot and VPU init procedure if we were the only user. So I can
> understand we want to avoid doing this too often.
>
> Maybe mdp_vpu_get_locked() can be reorganized in a better way. I feel
> like the call to mdp_vpu_register() should be done in probe, and maybe
> we can use runtime PM (with a reasonable timeout) to control the rproc
> and VPU init?

I think it depends on when exactly the rproc and VPU need stay
initialized. In general, we want to turn off as much as possible as
quickly as possible, but keeping in mind any turn on latencies.

For example. if it takes 10 ms to boot rproc/VPU, we probably
shouldn't turn it off unless we already spent 20-30 ms idling, which
could be handled with runtime PM with (delayed) autosuspend. However,
things like clock gating are normally very fast, so we could just stop
any clocks as soon as frame processing ends and restart when next
frame is getting scheduled and if we use autosuspend, we wouldn't be
able to do it using PM runtime.

My point was that just open() is not the right place for doing this.
Any later stage should be okay, as long as it suits the hardware
architecture.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
