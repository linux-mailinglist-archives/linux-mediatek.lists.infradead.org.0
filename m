Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE454155325
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Feb 2020 08:42:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rysd98npF6lUyVcbOIqbRCu4sqgdADiEcjDawTCJ500=; b=htCVyAr26NfyFU
	+WkcHZ1DkBPFld03vSB/ynBsftEj6o3sAMPRIp6QIu+IoV355D+M3rNwO9X5uIZdTYBamO1367J9/
	f1+l1iCk3Kv0GoyMxNCBA4fmZtoRxQYswsdighHKE9qxiqzEdtmMgWCGySTCnnKONseKEMl3N5nNk
	wyEvDzWHUTZ7y/Ni/vOT+Rql5st/nQB+akbVGHkME4F5Tuzh1wEIv6Ocy/qlyYZVViy/byrdXygAQ
	dkBlTiVp+qpkR3EWoBZnnqQtH9Hqfe3ZqTVzdZARZ9uLYf4HQQwPC+HSPk5catb4eIH33Nzx0us1C
	lFRjmRqBkW9kLdkuK9kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izyHQ-0003Pj-ST; Fri, 07 Feb 2020 07:42:24 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izyHI-0003J1-JF
 for linux-mediatek@lists.infradead.org; Fri, 07 Feb 2020 07:42:18 +0000
Received: by mail-qt1-x844.google.com with SMTP id w47so1238520qtk.4
 for <linux-mediatek@lists.infradead.org>; Thu, 06 Feb 2020 23:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JouVaBY0fCI5PIWz5KEUwev5u0zz6oVOFAENa05Vxbo=;
 b=FTiiXWqZ7kvv+zrl2z4UiK8x9xhnXPQJlaRwiZJZSMXCMS4NRLVQCP3IOoj4MWiYLp
 mACwAXxBeJcgHPJt5yHaziE5rsv47sThbhP3lIF0JoqN6JEROclMMOb04pmdAmLHpAEb
 ZD/wy9eg1Pqg++OYnyO0xPetj76C9NPPKpYKM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JouVaBY0fCI5PIWz5KEUwev5u0zz6oVOFAENa05Vxbo=;
 b=cApv6ILrWH7GAfDRKXC09wvi8DgOCoU0+qE7x9aMruS/I88mi4OyTOIId6yvgj3L/T
 /V+i0AK/wXqodZ58P3TswKAsS+oAi2hqkrDPT8GP5bdVgdsbyqgRLgXViUt28p7N7gaM
 jZS7lnMiymIrT91eJZ84mBJNE66uJt2xXrxvytoi/Ir6l8BTgYcemPvBwhAkk2P1tuU/
 kGTMh/k8Tqa7iFEy4+CXaRM51rACG1YsrcGm3dXUMFHc0Ll1DdfvBxhd+uVjU7UB3bQI
 6j2moIz67KAKCpWAlwzV90pZfWa6XB2WgsLVxovADyVjpyAfJEce5eTougGTisiYhYDM
 esKQ==
X-Gm-Message-State: APjAAAWvT+czWx0Z6LTw/gJxu/cCT7U/fQOzPFdkZZgiSXODTmmv+Hjr
 NGQQ9gcbdWzkg7xkv1CwrRYwAeI7vS523Rvl7sEgcw==
X-Google-Smtp-Source: APXvYqxIVQeKEwvKZd8oIBNpYedafqE6f+YdWsq+ZJPsYxo/fGVZGZMcU6612vRZx8gEeKanDH+rwLVQXWgOTZrA/Yk=
X-Received: by 2002:ac8:6e83:: with SMTP id c3mr6388399qtv.346.1581061332637; 
 Thu, 06 Feb 2020 23:42:12 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
In-Reply-To: <5237381b-c232-7087-a3d6-78d6358d80bf@collabora.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 7 Feb 2020 15:42:01 +0800
Message-ID: <CANMq1KCD1U7iym_fFWAd-Xa6ipxHmF_FAYxDL5WqGzDnA0KKLw@mail.gmail.com>
Subject: Re: [PATCH v4 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_234216_636080_8C113148 
X-CRM114-Status: GOOD (  22.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 2:18 PM Tomeu Vizoso <tomeu.vizoso@collabora.com> wrote:
>
> On 2/7/20 6:26 AM, Nicolas Boichat wrote:
> > Hi!
> >
> > Follow-up on the v3: https://patchwork.kernel.org/cover/11331343/.
> >
> > The main purpose of this series is to upstream the dts change and the
> > binding document, but I wanted to see how far I could probe the GPU, to
> > check that the binding is indeed correct. The rest of the patches are
> > RFC/work-in-progress, but I think some of them could already be picked up.
> >
> > So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
> > backports to get the latest panfrost driver (I should probably try on
> > linux-next at some point but this was the path of least resistance).
> >
> > I tested it as a module as it's more challenging (originally probing would
> > work built-in, on boot, but not as a module, as I didn't have the power
> > domain changes, and all power domains are on by default during boot).
> >
> > Probing logs looks like this, currently. They look sane.
> > [  501.319728] panfrost 13040000.gpu: clock rate = 511999970
> > [  501.320041] panfrost 13040000.gpu: Linked as a consumer to regulator.14
> > [  501.320102] panfrost 13040000.gpu: Linked as a consumer to regulator.31
> > [  501.320651] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
> > [  501.320954] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
> > [  501.321062] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
> > [  501.321734] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
> > [  501.321741] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
> > [  501.321747] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
> > [  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
> > [  501.324951] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
> >
> > Some more changes are still required to get devfreq working, and of course
> > I do not have a userspace driver to test this with.
>
> Have you tried the Panfrost tests in IGT? They are atm quite basic, but
> could be interesting to check that the different HW units are correctly
> powered on.

I haven't, you mean this right?
https://gitlab.freedesktop.org/tomeu/igt-gpu-tools/tree/panfrost

Any specific test you have in mind?

Thanks,

> Regards,
>
> Tomeu
>
> > I believe at least patches 1, 2, and 3 can be merged. 4 and 5 are mostly
> > useful in conjunction with 6 and 7 (which are not ready yet), so I'll let
> > maintainers decide.
> >
> > Thanks!
> >
> > Nicolas Boichat (7):
> >    dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
> >    arm64: dts: mt8183: Add node for the Mali GPU
> >    drm/panfrost: Improve error reporting in panfrost_gpu_power_on
> >    drm/panfrost: Add support for multiple regulators
> >    drm/panfrost: Add support for multiple power domains
> >    RFC: drm/panfrost: Add mt8183-mali compatible string
> >    RFC: drm/panfrost: devfreq: Add support for 2 regulators
> >
> >   .../bindings/gpu/arm,mali-bifrost.yaml        |  25 ++++
> >   arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 +
> >   arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 +++++++++++++++
> >   drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
> >   drivers/gpu/drm/panfrost/panfrost_device.c    | 123 +++++++++++++++---
> >   drivers/gpu/drm/panfrost/panfrost_device.h    |  27 +++-
> >   drivers/gpu/drm/panfrost/panfrost_drv.c       |  41 ++++--
> >   drivers/gpu/drm/panfrost/panfrost_gpu.c       |  11 +-
> >   8 files changed, 326 insertions(+), 30 deletions(-)
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
