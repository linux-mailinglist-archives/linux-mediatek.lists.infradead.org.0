Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8BD1F4FF
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 May 2019 15:04:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ss/j2vbTljBSwWtrQtl9XvPrpYFEgS6drN94WJMhxjQ=; b=qD/DAc7aGIOXhD
	hf42n3wCg2+qV/NW3Uo7NT/CpAf3fYh6s3GlCrKmorTzi/+OAHF/jHr4ErGpBMmvR9zTsvbJWXwZh
	VEux9E1sDE+7PkOovHyanjEvEsl21/GLnfgL0MAZJ9XDGWH5qTAlHUBAZkYlKvPfbkCoHF4aecNoZ
	BXggx6HrCwgPyfHxqo6scFFr0Vpo4Sdp69DsSK8VoolsiJs8Y1o9hpSDVj3B8yhX3dfvk7CTK2w4D
	Eio+XAMrAffZI7RRoJ0CsVOgruMCDNn8/ScZHS7/tdDjnXKQu9e+YCgVBVAvbgMvqLct9Ydo4Y7wA
	lwY0BJYCB8pHyZSWJ+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtZg-0006Kv-S1; Wed, 15 May 2019 13:04:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtZX-0006BX-ND; Wed, 15 May 2019 13:03:52 +0000
X-UUID: b56ee797ae074005ab817fb6286cdca0-20190515
X-UUID: b56ee797ae074005ab817fb6286cdca0-20190515
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1162092976; Wed, 15 May 2019 05:02:58 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 06:02:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 21:02:55 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 15 May 2019 21:02:55 +0800
Message-ID: <1557925375.5721.7.camel@mtksdccf07>
Subject: Re: [RFC,V2,01/11] dt-bindings: mt8183: Add binding for ISP Pass 1
 reserved memory
From: Jungo Lin <jungo.lin@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Wed, 15 May 2019 21:02:55 +0800
In-Reply-To: <20190514195052.GA3314@bogus>
References: <jungo.lin@mediatek.com>
 <20190510015755.51495-2-jungo.lin@mediatek.com>
 <20190514195052.GA3314@bogus>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_060351_765794_115D3814 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, hans.verkuil@cisco.com,
 frederic.chen@mediatek.com, seraph.huang@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Rob:

Thanks for your comments.

On Tue, 2019-05-14 at 14:50 -0500, Rob Herring wrote:
> On Fri, May 10, 2019 at 09:57:47AM +0800, Jungo Lin wrote:
> > This patch adds the binding for describing the reserved
> > shared memory used to exchange ISP configuration and tuning
> > data between the co-processor and Pass 1 (P1) unit of the
> > camera ISP system on Mediatek SoCs.
> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> >  .../mediatek,reserve-memory-cam-smem.txt      | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/mediatek,reserve-memory-cam-smem.txt
> 
> See my comments on the other 2 camera related reserved-memory bindings.
> 

Ok, we will align DIP & FD drivers's implementation.

Best regards,

Jungo

> Rob



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
