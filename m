Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BAE81678
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAIyelg5gcOv8GGFn0JPy9Dp4JvldsX4bXFJGlieUMk=; b=MDYH5vBAp6N43u
	8A2PpkkSzluHEybx8mtTtW7V+CfA01bFFixVvPtnu/TC8BkPt5Y44Az2SNDLEAgREzfUspzaWJs0G
	rf9pdVMYqhfRk7WRQFgbN1rH/qvRbdqkqqOesF4F96DM0+w+rst9W2oCp1lwzXE7HpSOOqu027nrf
	O60CoUrPXUZqwfRiUyvcIjwIJGyL2o1MNJddKNZxT7Ubu8WSQ/kCO2zpa7cwmHCUydbs57ncz8Xp9
	93+3TMa7xd4LC2zYiQPp65Fws168BgYZDZfRUnqVNNXx/QTZg7tWoqE/ShyR06+IrodUnOHC/grXw
	zMwr2emdvXqyX+oL1YIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZuo-0008N9-Tb; Mon, 05 Aug 2019 10:08:31 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZua-0008BC-0u
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:08:17 +0000
Received: by mail-lf1-x142.google.com with SMTP id 62so52595331lfa.8
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:08:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VmJocWvsymOdQ7NU7/6yMlP4/6K5DwEx+usK89GVi9s=;
 b=kyJZW7fZfdLgtDs2aKngH2TyuWTJjTeVTLZyRgxZRY9MQ56FWUw3A52lCdt4c4YJ+1
 3TgWOde1fzdSqgTWIgbjzvsDeaFtKgXf6SuYKrrM9YK82qK7s6dWcsjao4CGSwv8Ahlt
 Crwmv8+ySmVuExNcK9irfRd7xd4YEh9epWXPM2OVxpgaQ8bRFBbu/lNMcWXb245BCABI
 /yNpf25WGiE15uDcA+a++0LXluCfysTo88g0q7Hcvunkj67HSTRYbpqtQilt8t8aWCuR
 NoBItyc2gaayKuIzBJdFKFHEpFkdC+iXQWdc8it3UQcFXi36FqTMsdYN8t8x8xKnWrM8
 44vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VmJocWvsymOdQ7NU7/6yMlP4/6K5DwEx+usK89GVi9s=;
 b=IKB6JKOUHSCusEGK5vv/bHezY2YIV1HCUgaEtev7ttPz5uun9hVpmKw57YwSOa0676
 sw4bwonJd/Ru/9/Y7IZ5Lcu9x5sth8gLIEq6vqWy662hn8sZmglv3GPpAciBKK3d5m5X
 ZAKvQeMHLu7qh1pDwdB1CBOral8R54GcBolzlHKLwPTraYgeDMElr1hbAWASkcPUoZxT
 RDqW/OUG8698dGlRpRvvubsVpxnchmegoEzxTk7iiaX2igcaNEOxA4Sn7bxwj8YSFr3d
 MtLl5TNsmrteSxk6Db/34BDkoOcMq2G+L1oEMVwVz0lOmrFiwW70+ZrR8AojrxEio1E4
 TZJQ==
X-Gm-Message-State: APjAAAV9vDfjuU4fUrwz8wjT8XDjrk9RZoFclGLLn0ip0QDcZSlBlOzs
 DhP+4s+e6+FbER5zJmTzSopsp4jOEfrdsDTQF1TDBA==
X-Google-Smtp-Source: APXvYqxpqm0yndDdT3beIa5MGWi8lTPoZhzSa/lWFiqq6Dn3b88/pHlyJgXWVtBOlC/fjyLdOtrrqUOtG4JGHdovYiM=
X-Received: by 2002:ac2:5c42:: with SMTP id s2mr60787048lfp.61.1564999694066; 
 Mon, 05 Aug 2019 03:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-4-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-4-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:08:02 +0200
Message-ID: <CACRpkda5OUEfZRSMA-8H5jnhSan+VJ_3KB5CvOaRdZP1NeJQ+w@mail.gmail.com>
Subject: Re: [PATCH v8 03/11] dt-bindings: usb: add binding for USB GPIO based
 connection detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_030816_073397_9C84083E 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> It's used to support dual role switch via GPIO when use Type-B
> receptacle, typically the USB ID pin is connected to an input
> GPIO, and also used to enable/disable device when the USB Vbus
> pin is connected to an input GPIO.
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v8 changes:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
