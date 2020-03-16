Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD673186AB8
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 13:16:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JOQq141BahYDoqTL85d8uYDrtqpJrOcmk1TZMPSeFOo=; b=faFxTzA4elZ2yv
	GexB5YxGs3HRGwx5thqWBmgf5gXj7NtBJYDHY+9ojrxVTVMZehA5Yl/qyu8xyGmhHJfUt6gc+rZjh
	Tf5mPTW6x66PqnRYuAfslnNUgWu+c3btubvbA/+TE9QVv1esNuOSp0HJPInJ0ArJMX8jQJDivoTpp
	PSwyPmh5fq4UPHfKKlEb2EOkBsvYRLqMGsYLnkmxInNR+l+Xn7tbP9uebR2X3+hM3Vy4P1JxQHkXu
	rnFvFwAeHCjoG/RLBc1OqJCrgtrzar+pwhZFZuFqjAhryrsg8LLYn+9knpJgg21KokRnp8aAkvoGr
	FYlRA5e3ezKll5bCgrtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDofn-00086C-QV; Mon, 16 Mar 2020 12:16:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDofk-00085c-FR
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 12:16:45 +0000
X-UUID: 9d8b7ba401ff4415a52b430a328bb0cf-20200316
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=rwQaVz2lOkNOsMwjmIb1LBzk1XQeJzfgIv8n7AqSQsM=; 
 b=Yje1cTAemjks09evdCbLUcLJTTTPmwPS82EUaVkeXVtYFr7fQbtNvaruGZh9MHtlfVyjOmZnQ9FhYFQYNtNXP/hHGQsIuGHYXimhlwypLvoUbgocMF+Akv4L0HNaYOeB0voJplq74MdZQP1gDTeccss7PEJdZky7YRRDWKU4VrI=;
X-UUID: 9d8b7ba401ff4415a52b430a328bb0cf-20200316
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1923100356; Mon, 16 Mar 2020 04:16:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 05:16:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 20:15:38 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Mar 2020 20:13:40 +0800
Message-ID: <1584360997.14769.1.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/1] dt-bindings: cpu: Add a support cpu type for
 cortex-a75
From: Hanks Chen <hanks.chen@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 16 Mar 2020 20:16:37 +0800
In-Reply-To: <CANMq1KA1ngYhr7XO0k3xb0h7L-DX+TjiekvnGGOTRqz=BQPREA@mail.gmail.com>
References: <1584345050-3738-1-git-send-email-hanks.chen@mediatek.com>
 <CANMq1KA1ngYhr7XO0k3xb0h7L-DX+TjiekvnGGOTRqz=BQPREA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_051644_526105_C1F7A33D 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2020-03-16 at 19:02 +0800, Nicolas Boichat wrote:
> On Mon, Mar 16, 2020 at 3:51 PM Hanks Chen <hanks.chen@mediatek.com> wrote:
> >
> > Add arm cpu type cortex-a75.
> 
> Already in Rob's tree here:
> https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=dt/next&id=5c2614e995de07b41eb355155eb5e0e3d593718b
> 
Got it, Thanks for reviewing :)

> > Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
> > ---
> >  Documentation/devicetree/bindings/arm/cpus.yaml |    1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
> > index c23c24f..51b75f7 100644
> > --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> > @@ -128,6 +128,7 @@ properties:
> >        - arm,cortex-a57
> >        - arm,cortex-a72
> >        - arm,cortex-a73
> > +      - arm,cortex-a75
> >        - arm,cortex-m0
> >        - arm,cortex-m0+
> >        - arm,cortex-m1
> > --
> > 1.7.9.5
> > _______________________________________________
> > Linux-mediatek mailing list
> > Linux-mediatek@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-mediatek
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
