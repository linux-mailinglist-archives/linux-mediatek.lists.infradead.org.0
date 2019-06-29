Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394485AC56
	for <lists+linux-mediatek@lfdr.de>; Sat, 29 Jun 2019 17:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK1kwZP2QIOVRp6dICd1BEkKw/hw0lx6gMNG6FYPmUc=; b=nIqJ4siTDw9UqQ
	zORPO8YKq2pvkE2C0NdljYXvPJCtJfmnZ9afAwLc7JypbLePCtufOEDaVBZdhYQ3KM0cU6iNknpDm
	A1PnDQUdxo8b9awSbF/8kgmGlm9oZ1k5AWLRm4CqEE7M1RGhy3wR+VL04xK7KO0HivxR/KwdlcscB
	1uFuFZ1rHQnTIHDU5bMfAS6s6CJJoy9ZB+J7ADXBvwUm64YqxLqFgzdGez1nWxxdo5lXGfTr4bour
	UpMzlgPEcmEGFlOrvCs0VVQjV34LB5vjHCo+Bh7JzmOrvfqtv/E8hK4AZQnTYYX40ijUwCsg1dA3m
	euKpW8dJrtO4QFn+MwYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhFkO-0003na-Op; Sat, 29 Jun 2019 15:58:40 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhFkA-0003eH-DL; Sat, 29 Jun 2019 15:58:28 +0000
X-UUID: 78a4af13de5945b89f6e9552d9451a6a-20190629
X-UUID: 78a4af13de5945b89f6e9552d9451a6a-20190629
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1578522616; Sat, 29 Jun 2019 07:58:19 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Jun 2019 08:58:17 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Jun 2019 23:58:16 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Jun 2019 23:58:16 +0800
Message-ID: <1561823896.29227.0.camel@mtkswgap22>
Subject: Re: [PATCH v1] arm: dts: mediatek: add basic support for MT7629 SoC
From: Ryder Lee <ryder.lee@mediatek.com>
To: Kevin Hilman <khilman@baylibre.com>
Date: Sat, 29 Jun 2019 23:58:16 +0800
In-Reply-To: <7hy31lp9q5.fsf@baylibre.com>
References: <a8ca0018ac8a4c5f61a7a1efc9dc5dccd768628b.1552449524.git.ryder.lee@mediatek.com>
 <7hy31lp9q5.fsf@baylibre.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_085826_459570_BD2C3212 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Steven Liu <steven.liu@mediatek.com>, Sean
 Wang <sean.wang@mediatek.com>, Weijie Gao <weijie.gao@mediatek.com>,
 linux-kernel@vger.kernel.org, Rob
 Herring <robh+dt@kernel.org>, ryder.lee@kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-06-28 at 16:32 -0700, Kevin Hilman wrote:
> <ryder.lee@kernel.org> writes:
> 
> > From: Ryder Lee <ryder.lee@mediatek.com>
> >
> > This adds basic support for MT7629 reference board.
> >
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> 
> Just noticing this is not upstream yet.
> 
> I did a basic boot test to ramdisk on the mt7629-rfb board donated for
> kernelCI (thanks MediaTek!) and it boots just fine.
> 
> Tested-by: Kevin Hilman <khilman@baylibre.com>
> 
> Kevin

Thanks. I'll post v3 with some fixups soon.

Ryder



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
