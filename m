Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47891FF5D
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 08:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhY14MvHIZr0whYonoiV2g54P8LznmVKE7SKz9CmSHM=; b=m80ZgWmQEODaKz
	DC3aXCSsl+AlWEVZQDbC1+9ebDSTBgWJDBFUPJa9jzzM6bq3gdBA9+l5gKyKrShXp0Dk2GBsAmAG5
	A5xTRxHszSJj5OImwmv8BDVrd/2Pg7piw5wQUgqdHZdWVCVxZJ34XTmA4IBdks5k7CeWARfJzaYuO
	GGmrK+kzpiTZ1e1VqZpUJg4u1NMRgZ5Vslp5CgyMjbo97A/OhqcduYW5AiA7SSN+LuOjqtFJEVzDi
	UJ2m7g5GTNNPNqDqhhvOoSod5toNsvIpf9GXgDpOGOuGQ0cQhSTTybslzMVEv/xneN90U8E3PgEGh
	sFy5jpzSYHsQ1i2XRoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9dL-0000Wp-1y; Thu, 16 May 2019 06:12:51 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9dF-0000N1-06
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 06:12:49 +0000
Received: by mail-lf1-x142.google.com with SMTP id c17so1667941lfi.2
 for <linux-mediatek@lists.infradead.org>; Wed, 15 May 2019 23:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m8h2qGhJXexlZb92JzkwEQ/P4hBp4dKDlpHUHiZAB0o=;
 b=g8xowfc0K6UdPYmn3ArPMZFjU7qfFh4F/4ON1m7lE6SOJovSSFXHVv1UiavBfVCG2l
 q7pZYKU88gyD/qOVszluU3b1hMqu8rFRTHgCTMho+jGXuZ9JcaBdoFQYvTKEVsLZZM1P
 cvUqkCuERqLxmtBXW/rghMJ0t316OS8OAaFL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m8h2qGhJXexlZb92JzkwEQ/P4hBp4dKDlpHUHiZAB0o=;
 b=Cla0byNRFQ3SSrZSbVEJ3IDxl4ul40jtMt/2K+DNYwsoKjUSU/IGDjBt3AnpFanu2H
 WPAySC1LXgDCOSHyE4RumFbd3UugW9wLejQH30TNb6+XI9+n1auOGOrmLCNJmxXOxnyz
 nYxZ1EwO6hJO7o0f7rzzZQIM3LG3z8Dm6zrjUpUd6OrAWsCc+7u4SIijsUX6ixFMSTQn
 Ufoqe+yPuOIC7zmvomzmOMstP2XoSHuqWWfOmsVfLlTgNJyCDI3MwgcLspt+Pz/zeMxA
 2oQ/HPLXXwZGJK8WmMFjnf2Zs99pyaY7Ccb8bl1ErgD57a0MDeObn2oPqIYxV/GWLrNp
 XaeQ==
X-Gm-Message-State: APjAAAXYkQ3i358Kw7nawPp7TYin2eNt5m95Rc64jupLiQc8WOn8XK81
 fNDmFqDtiEC5V77vzCJh0OaYM+ZU4dA=
X-Google-Smtp-Source: APXvYqxC4jvMZJEud2M8gRmCW4rauNp1gNWlsWZTRqHNF84fOyMfB2VXpQ3Cs2x+gvXinT0pzqzHEQ==
X-Received: by 2002:a19:a50b:: with SMTP id o11mr9996680lfe.2.1557987162620;
 Wed, 15 May 2019 23:12:42 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com.
 [209.85.167.41])
 by smtp.gmail.com with ESMTPSA id r136sm768567lff.50.2019.05.15.23.12.42
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 23:12:42 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id h13so1642688lfc.7
 for <linux-mediatek@lists.infradead.org>; Wed, 15 May 2019 23:12:42 -0700 (PDT)
X-Received: by 2002:ac2:4899:: with SMTP id x25mr18443319lfc.44.1557987161731; 
 Wed, 15 May 2019 23:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190417104511.21514-1-frederic.chen@mediatek.com>
 <20190417104511.21514-2-frederic.chen@mediatek.com>
 <20190430011506.GA8514@bogus>
 <1557238925.11663.21.camel@mtksdccf07>
 <CAL_JsqKGW9WqyNgqKD0MxsqxYHKZ+VNV5A2p+neGqwmKmiODOQ@mail.gmail.com>
In-Reply-To: <CAL_JsqKGW9WqyNgqKD0MxsqxYHKZ+VNV5A2p+neGqwmKmiODOQ@mail.gmail.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 16 May 2019 15:12:30 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BVWjcxp9Tia9Pmgn_54bc9n5Vs1s__G7YWHiezfVVYpA@mail.gmail.com>
Message-ID: <CAAFQd5BVWjcxp9Tia9Pmgn_54bc9n5Vs1s__G7YWHiezfVVYpA@mail.gmail.com>
Subject: Re: [RFC PATCH V1 1/6] dt-bindings: mt8183: Add binding for DIP
 shared memory
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_231245_561833_73A8C6DA 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Frederic Chen <frederic.chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?SG9sbWVzIENoaW91ICjpgrHmjLop?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 yuzhao@chromium.org,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 1:19 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 7, 2019 at 9:22 AM Frederic Chen <frederic.chen@mediatek.com> wrote:
> >
> > Dear Rob,
> >
> > I appreciate your comments.
> >
> > On Mon, 2019-04-29 at 20:15 -0500, Rob Herring wrote:
> > > On Wed, Apr 17, 2019 at 06:45:06PM +0800, Frederic Chen wrote:
> > > > This patch adds the binding for describing the shared memory
> > > > used to exchange configuration and tuning data between the
> > > > co-processor and Digital Image Processing (DIP) unit of the
> > > > camera ISP system on Mediatek SoCs.
> > > >
> > > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > > ---
> > > >  .../mediatek,reserve-memory-dip_smem.txt      | 45 +++++++++++++++++++
> > > >  1 file changed, 45 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > > new file mode 100644
> > > > index 000000000000..64c001b476b9
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-dip_smem.txt
> > > > @@ -0,0 +1,45 @@
> > > > +Mediatek DIP Shared Memory binding
> > > > +
> > > > +This binding describes the shared memory, which serves the purpose of
> > > > +describing the shared memory region used to exchange data between Digital
> > > > +Image Processing (DIP) and co-processor in Mediatek SoCs.
> > > > +
> > > > +The co-processor doesn't have the iommu so we need to use the physical
> > > > +address to access the shared buffer in the firmware.
> > > > +
> > > > +The Digital Image Processing (DIP) can access memory through mt8183 IOMMU so
> > > > +it can use dma address to access the memory region.
> > > > +(See iommu/mediatek,iommu.txt for the detailed description of Mediatek IOMMU)
> > > > +
> > > > +
> > > > +Required properties:
> > > > +
> > > > +- compatible: must be "mediatek,reserve-memory-dip_smem"
> > >
> > > Don't use '_'.
> >
> > I got it. I will use "mediatek,reserve-memory-dip-smem" instead in next
> > version of the patch
> >
> > >
> > > > +
> > > > +- reg: required for static allocation (see reserved-memory.txt for
> > > > +  the detailed usage)
> > > > +
> > > > +- alloc-range: required for dynamic allocation. The range must
> > > > +  between 0x00000400 and 0x100000000 due to the co-processer's
> > > > +  addressing limitation
> > >
> > > Generally, you should pick either static or dynamic allocation for a
> > > given binding. Static if there's some address restriction or sharing,
> > > dynamic if not.
> > >
> > > Sounds like static in this case.
> > >
> >
> > DIP reserved memory has address restriction so it is the static case. I
> > would like to remove the dynamic allocation part and modify the
> > description as following:
> >
> > - reg: required for DIP. The range must be between 0x00000400 and
> >   0x100000000 due to the co-processor's addressing limitation.
> >   The size must be 26MB. Please see reserved-memory.txt for the
> >   detailed usage.
>
> You can use dma-ranges to define addressing translations and
> restrictions like this. That will in turn set the device's dma-mask to
> ensure allocations are done in a region that is addressable.
>
> But if you have a known, fixed size, then a carve out with
> reserved-memory is fine.

There is also another aspect here. The coprocessor that we're
allocating the memory for is behind an MPU that must be programmed
completely in one go and locked for security reasons to ensure that
the coprocessor itself doesn't rewrite the MPU settings. That means
that we need to have all the allocations completed before booting that
coprocessor.

To be honest, I'd adopt a completely different design here.

We're going to have a driver for that coprocessor (SCP) and IMHO any
shared memory areas should belong to it. Then, any specific drivers
talking to the firmware running on SCP should ask the SCP driver to
allocate some memory from its fixed pool. WDYT?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
