Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949FEBACD7
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Sep 2019 05:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=If/rcdblliqvoeBvodoxWKB69UQz4HB7V5AprhJ4+FA=; b=r6bQ1GI/H5F9AD
	EQzeZMpRneULyMGXE95YqS649OzbKIOZX6FPF7rKVGjAFbnFO672ZUpsT6fQJ94n+5Hv6bPSpEXOA
	0Tp81OpJJPpiYAXJFsN4ZLZGvyyCmmLuouIOjcGY+IcX6Fhnq+jYMKXJRwqti2cjsIdj21p58Z/jT
	9KKFw6cFFW3XbmBNwo5kalqq7gUxybbn9MxvpKiyYwAMtavS53zzXuP55VNx7HgfwjfopA25A81iJ
	1Pjp/rxEbZ+TqA8IVfxj96fxbtZH5aoUhfK+mVgEuaFB0GmDrFNUF87ap3qRPRvK2MdKIu4hk4IH+
	yazYpS395yDr2qx0wAmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCEv1-0008JS-IW; Mon, 23 Sep 2019 03:21:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCEuy-0008Ix-MJ
 for linux-mediatek@lists.infradead.org; Mon, 23 Sep 2019 03:21:42 +0000
X-UUID: f79018d00d944426bee05a0ca3b98cb5-20190922
X-UUID: f79018d00d944426bee05a0ca3b98cb5-20190922
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 302094447; Sun, 22 Sep 2019 19:21:11 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Sep 2019 20:21:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 11:20:56 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 11:20:56 +0800
Message-ID: <1569208857.4102.9.camel@mtksdccf07>
Subject: Re: [PATCH v9 07/11] dt-bindings: pwm: pwm-mediatek: add a property
 "num-pwms"
From: Sam Shih <sam.shih@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh+dt@kernel.org>
Date: Mon, 23 Sep 2019 11:20:57 +0800
In-Reply-To: <20190921002149.GB86019@mithrandir>
References: <1568933351-8584-1-git-send-email-sam.shih@mediatek.com>
 <1568933351-8584-8-git-send-email-sam.shih@mediatek.com>
 <20190921002149.GB86019@mithrandir>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 5DE12F5DF2358BA2912DCBFA7D76065A5D51D8AAC23E3281B45386E5691BB84D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_202140_735096_EFBA2DAF 
X-CRM114-Status: GOOD (  17.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org, Ryder
 Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org, John
 Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 2019-09-21 at 02:21 +0200, Thierry Reding wrote:
> On Fri, Sep 20, 2019 at 06:49:07AM +0800, Sam Shih wrote:
> > From: Ryder Lee <ryder.lee@mediatek.com>
> > =

> > This adds a property "num-pwms" in example so that we could
> > specify the number of PWM channels via device tree.
> > =

> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> > Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > ---
> > Changes since v6:
> > Follow reviewers's comments:
> > - The subject should indicate this is for Mediatek
> > =

> > Changes since v5:
> > - Add an Acked-by tag
> > - This file is original v4 patch 5/10
> > (https://patchwork.kernel.org/patch/11102577/)
> > =

> > ---
> >  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> =

> You failed to address Rob's questions repeatedly and I agree with him
> that you can just as easily derive the number of PWMs from the specific
> compatible string. I won't be applying this and none of the patches that
> depend on it.
> =


Hi, =


Thanks for getting back to me.

New pwm driver (patch 04/11 : "pwm: mediatek: allocate the clks array
dynamically") can support different variants with different number of
PWMs by the new property <num-pwms>

For example:
1. Use "num-pwms" =3D <2> and assign clocks pwm1, pwm2 for mt7622
2. Use "num-pwms" =3D <6> and assign clocks pwm1, pwm2, pwm3, pwm4, pwm5,
pwm6 for mt7622.

If we just as easily derive the number of PWMs from the specific
compatible string in this document:

   - "pwm1-6": the six per PWM clocks for mt7622
   =

This looks like all "pwm1", "pwm2", "pwm3", "pwm4", "pwm5", "pwm6" is
required property in DT, It doesn't make sense.
   =

So we removed those descriptions and added  =


   - "pwm1-N": the PWM clocks for each channel =

   =

   =

But the max number of clocks from the compatible string are still
important information that should be provide in this document.


What do you think of this?

   - "pwm1-N": per PWM clocks for mt2712, the max number of PWM channels
is 8

   - "pwm1-N": per PWM clocks for mt7622, the max number of PWM channels
is 6

   - "pwm1-N": per PWM clocks for mt7623, the max number of PWM channels
is 5

   where N starting from 1 to the maximum number of PWM channels
   - num-pwms: the number of PWM channels.

   =

Thanks
Best Regards
Sam =



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
