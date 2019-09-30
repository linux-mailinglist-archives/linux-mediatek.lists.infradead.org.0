Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE596C1D6D
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 10:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2RV/LKfEelOwxG93wt1gP/TZI1hhGXlqWfHipsrLvY=; b=mMETgu0EFo8fS+
	u+kl463k87O0lpnFKaz9tHaYCXg+UdzLxf3u/599svySodpWz3SzpVwG7jiis9eYrcDhDIgUvr2Pk
	BHndFosvGnC13rtJ2b1WXSbEm2YQD3vgfn+UXI7BmnzSJVUFUW/4w3nLdkU1aQHDBM2YIxzTvsayF
	uM7aNtgmCYPsxwIHGreKhTSqafC5wQ11cufOvJ1W+kTCrNKIA5XLlQxsgl9Sz09x0tqVXIdh1MTP7
	koKFNOCY7X+4q7t8OUel21Yk388UZA75vGNoU1zq6spn3/0LgOeUzHXtvUZtrFdQok3X1Ya1o3c8V
	lgVTpO25DYLuDYy/k63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iErOu-0004h1-Eu; Mon, 30 Sep 2019 08:51:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iErOr-0004gB-E9
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 08:51:22 +0000
X-UUID: 5581a44709964e43948c693d602ebcaf-20190930
X-UUID: 5581a44709964e43948c693d602ebcaf-20190930
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1559075754; Mon, 30 Sep 2019 00:51:15 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 01:51:14 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Sep 2019 16:51:06 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Sep 2019 16:51:06 +0800
Message-ID: <1569833468.32131.4.camel@mtksdccf07>
Subject: Re: [PATCH v10 08/12] pwm: mediatek: Add MT7629 compatible string
From: Sam Shih <sam.shih@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>
Date: Mon, 30 Sep 2019 16:51:08 +0800
In-Reply-To: <20190927112831.GA1171568@ulmo>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
 <1569421957-20765-9-git-send-email-sam.shih@mediatek.com>
 <20190927112831.GA1171568@ulmo>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 117A8A6215936262384F6F70692A074F4A2330135B41FEF58EBF2008F4C56AEB2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_015121_480104_29E7287D 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Hi,

On Fri, 2019-09-27 at 13:28 +0200, Thierry Reding wrote:
> On Wed, Sep 25, 2019 at 10:32:33PM +0800, Sam Shih wrote:
> > This adds pwm support for MT7629, and separate mt7629 compatible string
> > from mt7622
> > 
> > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > ---
> >  drivers/pwm/pwm-mediatek.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> 
> I picked this patch up and made some minor adjustments to make it build
> without the num_pwms patches. With that I don't think there's anything
> left from this series that you need.

Yes, I think the driver should work once dtsi updated.
("[v10,12/12] arm: dts: mediatek: add mt7629 pwm support")

But, due to we use comaptible string separately for every SoC now,
The comaptible string in dt-bindings should be "mediatek,mt7629-pwm".
I think we should use "[v10,11/12] dt-bindings: pwm: update bindings 
for MT7629" to replace commit 1c00ad6ebf36aa3b0fa598a48b8ae59782be4121,
Or maybe we need a little modification like this ?
diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt ...
- - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
+ - "mediatek,mt7629-pwm": found on mt7629 SoC.

Thanks,
Regards, Sam


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
