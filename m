Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1DC1865F4
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 08:52:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAYPNuoH8ZlbuWrTDIDrLeMFEKKGIfEzHP+vDp7zokc=; b=jfyepX2NCWXqi2
	DOht+bn3Fb3LJXs23zuUM/64+eNruvcONjVcSUWPKa1wCPq2u6kZm0WXIETulTvBDabWIB7OV1YCx
	IL1wigPUAdAn2pZ5YEiQNbl1E92U3W4O0UajDHlDAQg40MMLJJBDDy89VjCKrzghxoGaapJtyUFkc
	ROEkPrx3z0+aMa8X6gs5muzjRlCLlniYY9OaaFIKSEE+VRVxMS9UhlQa+FMQkksOc0Q0QM4a0/1cD
	okyqOTZVGuz4htuAcgG3XvUypvWktH2Ssum33K8iHxNlFbhen15kA5T6aw41fBubp0md/RmpV2ZGI
	Ghok/isF8/m0Qzdwvs7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkXp-0008QD-Dp; Mon, 16 Mar 2020 07:52:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkXm-0008PM-Kq
 for linux-mediatek@lists.infradead.org; Mon, 16 Mar 2020 07:52:16 +0000
X-UUID: 61693cc5afab4984ab64a973e2f21778-20200315
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=BlXDFmnnqorVgQpulgg7ck1YZ6kA0CFS6J6lD1RPe/M=; 
 b=IVFLh0VCB+aMcNA9+LrG31fTNQM1aqh7VfjWgnLRb2dOFhJQn/vurbsCUI+pBxJgWwDg/2WLooF83pi4DO5NQ3JTON6pj8aGtJSSNw4eIY50bIYKbM7dvQ7rWhcb5eTN3RWtrVAnMrlTPFFRgq9f9Nf94JlhkS6IJSe5kJTotAU=;
X-UUID: 61693cc5afab4984ab64a973e2f21778-20200315
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 716464010; Sun, 15 Mar 2020 23:52:11 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 00:46:49 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 15:45:32 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 16 Mar 2020 15:43:32 +0800
Message-ID: <1584344790.29731.1.camel@mtkswgap22>
Subject: Re: [PATCH 1/1] dt-bindings: cpu: Add a support cpu type for
 cortex-a75
From: Hanks Chen <hanks.chen@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Date: Mon, 16 Mar 2020 15:46:30 +0800
In-Reply-To: <f1b8239a-a68f-bd50-585e-26109850a1fc@gmail.com>
References: <1584284885-20836-1-git-send-email-hanks.chen@mediatek.com>
 <f1b8239a-a68f-bd50-585e-26109850a1fc@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_005214_693526_D9BEA9F5 
X-CRM114-Status: GOOD (  13.34  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 2020-03-15 at 19:44 +0100, Matthias Brugger wrote:
> Thanks for your patch.
> 
> On 15/03/2020 16:08, Hanks Chen wrote:
> > [Detail]
> 
> This line is not needed.
got it, will fix it. Thanks for reviewing.

> 
> > Add arm cpu type cortex-a75.
> > 
> > Change-Id: I2b05948915acfa6a04a0b8fa88684a12b6d5c2ca
> 
> No Change-Id in upstream kernel patches please.
> 
got it, will fix it. Thanks for reviewing.

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
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
