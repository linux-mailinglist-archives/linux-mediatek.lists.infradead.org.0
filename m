Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9175F139E46
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 01:31:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OyQvC5HVNGtGOUToND612d7lXYBS2gzoBYlxdSLzZg=; b=Y6WIvFRG71rso2
	dZXkvwtl9JpBSNUmKeA/C9Ttq3bsq8g2rZruJNy2q54vJkxuZECSX/Qgq6FsEW/iS1C7iqa/IP5Ct
	37b0Vd9jaX+/jB75aMV2HhvShkx3hWyr5z9DiD6viUS3SoiIgt5k453dG1Qxv8dkW9fFS3qnLCvo4
	lRiLLCqdZdxjfKGvE5R/heuLAv2twfe1XPZFZa2yMJZmIUyPXE6lPWbl0muskr3oBGPrddMB7fvUD
	MIOs/nNk4CHd5O7nssZt5TASrDKOCrWa2awzoC81YWpDa3n1uvY28ObpqzzwzWjVpQr78XmoUqB1x
	Vu2lXjOPcjDPNENrOx/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irA6s-0000m1-Qy; Tue, 14 Jan 2020 00:31:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irA6o-0000kr-TN; Tue, 14 Jan 2020 00:31:04 +0000
X-UUID: 67eb85b89e8e4ede9d99205a7ee0bda6-20200113
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=9hc72qii6aEbO5HSZ/JJr0ZnpKxriy/nHTRZcH5uTGc=; 
 b=HbME1p8gNH2uQH8SQo1b+WaFDB6R5E4aGgm0lxXTswaOjFjwhhRbC7FDb7G1xq8kS9DUopRvGkFupmy87VgCKArHAfn2nkwNqcaWnmhsGI+yNRQ06IL4xp1l8oMwYVhUGaHGpHEtgIv8T+SSwKfWA1wLmUt66ZBM+SEM0h9vkhE=;
X-UUID: 67eb85b89e8e4ede9d99205a7ee0bda6-20200113
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1006332047; Mon, 13 Jan 2020 16:30:58 -0800
Received: from MTKMBS32DR.mediatek.inc (172.27.6.104) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 16:30:55 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32DR.mediatek.inc
 (172.27.6.104) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 14 Jan 2020 08:30:00 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 14 Jan 2020 08:30:09 +0800
Message-ID: <1578961847.21256.27.camel@mhfsdcap03>
Subject: Re: [RESEND PATCH v5 01/11] dt-bindings: phy-mtk-tphy: add two
 optional properties for u2phy
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@a0393678ub>
Date: Tue, 14 Jan 2020 08:30:47 +0800
In-Reply-To: <20200110111006.GB2220@a0393678ub>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
 <20200110111006.GB2220@a0393678ub>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AF61AF8D6FD7E89E3E467A138EA30DB0D5E4DFF88A35929018A5237C3BB832952000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_163102_957204_F214DC5F 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 TO_MALFORMED           To: has a malformed address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-01-10 at 16:40 +0530, Kishon Vijay Abraham I wrote:
> Hi,
> 
> On Wed, Jan 08, 2020 at 09:51:56AM +0800, Chunfeng Yun wrote:
> > Add two optional properties, one for tuning J-K voltage by INTR,
> > another for disconnect threshold, both of them are related with
> > connect detection
> > 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> Patch does not apply. I get the following errors
> error: patch failed: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt:52
> error: Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt: patch does not apply
> error: Did you hand edit your patch?
> 
> Can you send them again in the right format?
Sorry, I'll check it.

> 
> Thanks
> Kishon
> > ---
> > v5: add acked-by Rob
> > 
> > v4: no changes
> > 
> > v3: change commit log
> > 
> > v2: change description
> > ---
> >  Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > index a5f7a4f0dbc1..ce6abfbdfbe1 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > +++ b/Documentation/devicetree/bindings/phy/phy-mtk-tphy.txt
> > @@ -52,6 +52,8 @@ Optional properties (PHY_TYPE_USB2 port (child) node):
> >  - mediatek,eye-vrt	: u32, the selection of VRT reference voltage
> >  - mediatek,eye-term	: u32, the selection of HS_TX TERM reference voltage
> >  - mediatek,bc12	: bool, enable BC12 of u2phy if support it
> > +- mediatek,discth	: u32, the selection of disconnect threshold
> > +- mediatek,intr	: u32, the selection of internal R (resistance)
> >  
> >  Example:
> >  
> > -- 
> > 2.24.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
