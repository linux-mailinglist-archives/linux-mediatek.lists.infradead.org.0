Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF5513252
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 18:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wus1h5Z0EmH/IKh4fgLi09s2rXEADKCNCxUMxoq03+M=; b=GZF1Wm2xpaxC8y
	91OvYp5dRgn2HOkFf1S9uhUPwDWQjjXUXDXN8dI7A60tzZtE+EdnM9ZSEGTfCDkD7R7sirnlomRcL
	ijFgT5+YGgTnC+GiQPgkhBRIvFAbvB1lhTTll4miOeGOYAnQ4Ov2XNE48qsAE6hYAmYbmQzybnFAj
	0X2FsZExogAk9gn+PC5aKGdQiA60+yymrmJwVQvVCQVfKO14s/hA0/Q6xrDdGQZCDdqRzDwow7Mde
	fYpCmYpMKAmag7bbXrEVROrzM7dQu/xQKwDdZ11FZuJ6bjpw3ucT2DK8sHTmjg8sVpyJ2I9YeXJHk
	e8v1ubj22au1fyhLx3mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbBK-0007an-53; Fri, 03 May 2019 16:37:06 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbBG-0007a1-QG
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 16:37:04 +0000
Received: by mail-ua1-x943.google.com with SMTP id z17so2236289uar.3
 for <linux-mediatek@lists.infradead.org>; Fri, 03 May 2019 09:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JOhXxqwrhrqi22CbeLJVIpblT7qOBEHSnL9239pOuZY=;
 b=hOY8pzUaHTFuXrA+1GcYiD2vIu/TX9Uyerw59T3XF2I09wNu5QJfIvNktWMCZiqkP9
 eAuOJfcWhkz2MqPKHMkTvbGNTyknpN03CvNwJzFt8HlFn1BDeznvyCUz1vqNjkU6KQUI
 7szujSOmYYBp7g6jss/M8tE4YH/Z0/ysTfU0VmC9Au/JSYrf4n4NguzvZN7KSxSFi6fb
 6JENSoDdorpK7uvuGuhXQn00TwlJWx5nvx4uKpmTlm62aZyZDJM3PZJTIb47/i0kdH1r
 VO+BFTBF4EtL1U5M0ffixvcuwpjXgBXDCBPJs6XHDD+ZxV61JE/jf33kk3rYTbdBVAYS
 rA+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JOhXxqwrhrqi22CbeLJVIpblT7qOBEHSnL9239pOuZY=;
 b=Y/rpGPpd5dRPb/dzAAEn6KQIm/jCKkMfOmcKGKTXZkSBhPhZUeIY0DTa6nzwibAu9M
 aqFhb+kdhKc8oKwjX4+FMuBY88pujQ17ENtO/uvBJH+RmX2aIU9BCSXXYM2DFA1E2cl/
 zK0vGl4b0iTxSDgk1NCX+eZk6btX8cCfFOJ+7BgC1kcf7Eu8Ksg/h46B28x/TmwGsgqK
 sXCedsSgUOJNbvG38yVxp95hMjCjZ67MHT3ISpxG7r4OeGVQ6rs789xMnsPqYPukcwbV
 O5MJJbqddF3YKkKvqfVZzjNOde9l50iz2Irk/uBxpjiRPLSv496ahdJ/IB3OYKiLgpps
 VlLg==
X-Gm-Message-State: APjAAAWRo5fbYDhVcAueQ3LndOiSNW5bJLaF9L4W6TTuCxnSiZ3nomIK
 +EAQlsXEMBl1u3BIbTUoRHY2+7aVikCA1Xj2Um/4vQ==
X-Google-Smtp-Source: APXvYqydNZ2JP4JT7mM9TAHxudYFShSRlDbh3hZ/Q8pAlpJwTXTuZ7DQou+9NHKF/WYJcr9VzSF6aFEylNuHOXZs8rQ=
X-Received: by 2002:ab0:2399:: with SMTP id b25mr2711177uan.129.1556901418729; 
 Fri, 03 May 2019 09:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190323211612.860-1-fparent@baylibre.com>
 <20190323211612.860-9-fparent@baylibre.com>
 <CAPDyKFrAxmBv+1i3qJpD=M1Wq33U2PMfQv_99xDm9MLhLxSWYg@mail.gmail.com>
 <CAOwMV_z8RrmoK+bfEqgwOv97uJarnuTCUo7aczZz=gyvg8CDzQ@mail.gmail.com>
In-Reply-To: <CAOwMV_z8RrmoK+bfEqgwOv97uJarnuTCUo7aczZz=gyvg8CDzQ@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 3 May 2019 18:36:22 +0200
Message-ID: <CAPDyKFocSqRLC7eGVBY7J-WkBy0i9fxX5GNivMNQEfgqhcrb9w@mail.gmail.com>
Subject: Re: [PATCH 08/24] dt-bindings: mmc: mtk-sd: add mtk-sd support for
 MT8516
To: Fabien Parent <fparent@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_093702_853944_224B3D1E 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 3 May 2019 at 17:12, Fabien Parent <fparent@baylibre.com> wrote:
>
> Hi Ulf,
>
> On Mon, Mar 25, 2019 at 2:27 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
> >
> > - trimmed cc list
> >
> > On Sat, 23 Mar 2019 at 22:17, Fabien Parent <fparent@baylibre.com> wrote:
> > >
> > > Add binding documentation of mtk-sd for MT8516 SoCs.
> > >
> > > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> >
> > Applied for next, thanks!
>
> I think this patch got lost since I cannot see it in your tree.

Thanks for telling me. I have picked it up (again?) and applied it for next.

[...]

Kind regards
Uffe

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
