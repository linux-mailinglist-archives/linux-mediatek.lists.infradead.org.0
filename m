Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC9C1EA1
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 12:06:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+k/7H+/WsJ+UQSiVXJRT5L7kWs1BHkRqW/A50NynKtA=; b=WjCwuEVn40p23F
	GSUyTksZTG1jlqpBGZBo3FYyXElKroc6XYgI9jKldcQQ2uQus2svmvkc0lWASyCamW0xwyAkErS/y
	Vf5SxBruEHrleQCZu51SMzDqujOR/49iwsWGfpJEWYHUWNT+3uevT3UYm3eAYO07mkAre6IoJkDsd
	m/S0Di1+4kSq8JJOAfOiypNVVIJBe4uDqwqgEH7o0bzXGKNztRW2peQvEjLDdb05fZkRBhmpRsvE3
	C65Wa7sFQJeHTxtINZO5MmefYrYWFcEBMcYPtY10T4QYFF3mgmhLEYZ7GNPlKXP8X4fSQaZ0d1krR
	KHKXFtypZ3yWrEquMdNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEsZr-0006rV-GA; Mon, 30 Sep 2019 10:06:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEsZn-0006qb-Tm
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 10:06:45 +0000
X-UUID: 806af691df084755ae61587c7e340810-20190930
X-UUID: 806af691df084755ae61587c7e340810-20190930
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 17052585; Mon, 30 Sep 2019 02:06:36 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 03:06:35 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 17:51:18 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Sep 2019 17:51:17 +0800
Message-ID: <1569837079.32131.5.camel@mtksdccf07>
Subject: Re: [PATCH v10 08/12] pwm: mediatek: Add MT7629 compatible string
From: Sam Shih <sam.shih@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>
Date: Mon, 30 Sep 2019 17:51:19 +0800
In-Reply-To: <20190930093629.GH1518582@ulmo>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
 <1569421957-20765-9-git-send-email-sam.shih@mediatek.com>
 <20190927112831.GA1171568@ulmo> <1569833468.32131.4.camel@mtksdccf07>
 <20190930093629.GH1518582@ulmo>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_030643_964711_88234353 
X-CRM114-Status: GOOD (  25.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-09-30 at 11:36 +0200, Thierry Reding wrote:
> On Mon, Sep 30, 2019 at 04:51:08PM +0800, Sam Shih wrote:
> > Hi,
> > 
> > On Fri, 2019-09-27 at 13:28 +0200, Thierry Reding wrote:
> > > On Wed, Sep 25, 2019 at 10:32:33PM +0800, Sam Shih wrote:
> > > > This adds pwm support for MT7629, and separate mt7629 compatible string
> > > > from mt7622
> > > > 
> > > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > > ---
> > > >  drivers/pwm/pwm-mediatek.c | 6 ++++++
> > > >  1 file changed, 6 insertions(+)
> > > 
> > > I picked this patch up and made some minor adjustments to make it build
> > > without the num_pwms patches. With that I don't think there's anything
> > > left from this series that you need.
> > 
> > Yes, I think the driver should work once dtsi updated.
> > ("[v10,12/12] arm: dts: mediatek: add mt7629 pwm support")
> > 
> > But, due to we use comaptible string separately for every SoC now,
> > The comaptible string in dt-bindings should be "mediatek,mt7629-pwm".
> > I think we should use "[v10,11/12] dt-bindings: pwm: update bindings 
> > for MT7629" to replace commit 1c00ad6ebf36aa3b0fa598a48b8ae59782be4121,
> > Or maybe we need a little modification like this ?
> > diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt ...
> > - - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
> > + - "mediatek,mt7629-pwm": found on mt7629 SoC.
> 
> Good catch, I must've taken this from the wrong version of the patch.
> 
> How about the attached patch?
> 
> Thanks,
> Thierry
> --- >8 ---
> From 641b0ee176b139f9edd137ba636ca0cb9c63289a Mon Sep 17 00:00:00 2001
> From: Thierry Reding <thierry.reding@gmail.com>
> Date: Mon, 30 Sep 2019 11:33:31 +0200
> Subject: [PATCH] dt-bindings: pwm: mediatek: Remove gratuitous compatible
>  string for MT7629
> 
> The MT7629 is, in fact, not compatible with the MT7622 because the
> former has a single PWM channel while the former has 6. Remove the
> gratuitous compatible string for MT7629.
> 
> Reported-by: Sam Shih <sam.shih@mediatek.com>
> Signed-off-by: Thierry Reding <thierry.reding@gmail.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> index c8501530173c..053e9b5880f1 100644
> --- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> +++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
> @@ -6,7 +6,7 @@ Required properties:
>     - "mediatek,mt7622-pwm": found on mt7622 SoC.
>     - "mediatek,mt7623-pwm": found on mt7623 SoC.
>     - "mediatek,mt7628-pwm": found on mt7628 SoC.
> -   - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
> +   - "mediatek,mt7629-pwm": found on mt7629 SoC.
>     - "mediatek,mt8516-pwm": found on mt8516 SoC.
>   - reg: physical base address and length of the controller's registers.
>   - #pwm-cells: must be 2. See pwm.txt in this directory for a description of

It seems good to me.

Thanks,
Regards, Sam



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
