Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFC312936B
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Dec 2019 10:00:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfNTb3mmo1r3+FoaHCGHZExomJDMFFUHYYkeqHB+eH0=; b=Ny3hb3xUnccTwl
	drlu3gMbD0eVtykIpByWq8FKTChZKpH7BMbHn2EF64bODJ5EVlm6wEax3C02lzobxmr8hWssAUlFm
	rMStAOGNrPfgIo6HmTDkKpm2dlWV4bwYGnEkk0h+IRETrtXWeZvwejGLYx3vyVYbcTkZz8pP6jESH
	srSF/w9tcVwb5zs+Cmqe3oQZmjMpvf/TehHhWuurEKmLjNrviTpPmfulibegOxTE7oQpPZhBlkfiu
	ErakZ2N7LRTqzUaZAajGxo1N75V8Zw7q2I/8xTEtee1RaBnePqNb5exlVeQMHwtD1DnYc07EfwRWB
	mwzDKdMnyFBf1NIFWKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJZX-0007f1-Qd; Mon, 23 Dec 2019 09:00:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJZ3-000658-DZ; Mon, 23 Dec 2019 08:59:46 +0000
X-UUID: 609bbc7b2854433c85a6e3a1ca71a477-20191223
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=GIxkr6Z3J7HgwOFSpLaPB2mv26seiJrHqASnjdQ/WuM=; 
 b=c1jKL4cTWnGtOxIq36oOVI39ctbinDcNdvG/SnInr75JnU8Xvp9tSrrTEwttbrLIW36IXiT07fliI3/ncn99PJdV0Xva0MAe6szb/mHs1GC4NpxlN3WSmlZRIKirhNuuv3w//vtn23sem0lkDfj3FXFCF3Jr0RXfRdyTlx22ThE=;
X-UUID: 609bbc7b2854433c85a6e3a1ca71a477-20191223
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1956565631; Mon, 23 Dec 2019 00:59:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Dec 2019 01:00:09 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Dec 2019 16:59:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Dec 2019 16:59:48 +0800
Message-ID: <1577091576.20525.4.camel@mtksdaap41>
Subject: Re: [PATCH v5 6/7] drm/mediatek: support CMDQ interface in ddp
 component
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 23 Dec 2019 16:59:36 +0800
In-Reply-To: <CAJMQK-jdMwoC54XpWj-XYW_yZkM=TcGcJpy94DTdYBN2t1wqmw@mail.gmail.com>
References: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
 <20191210050526.4437-7-bibby.hsieh@mediatek.com>
 <CAJMQK-jdMwoC54XpWj-XYW_yZkM=TcGcJpy94DTdYBN2t1wqmw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_005945_463733_1A15A8CE 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Tomasz
 Figa <tfiga@chromium.org>, Thierry Reding <thierry.reding@gmail.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, "moderated list:ARM/FREESCALE IMX /
 MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-yi:

On Fri, 2019-12-20 at 21:27 +0800, Hsin-Yi Wang wrote:
> On Tue, Dec 10, 2019 at 5:05 AM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
> 
> >
> > +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> > +                  struct mtk_ddp_comp *comp, unsigned int offset)
> > +{
> > +#if IS_ENABLED(CONFIG_MTK_CMDQ)
> Should we use #ifdef like in v4? https://patchwork.kernel.org/patch/11274439/
> 
> We got warnings while compiling kernels if CONFIG_MTK_CMDQ is not set,
> since cmdq_pkt_write() would still be compiled.
> Similar in other #if IS_ENABLED(CONFIG_MTK_CMDQ) (also in 7/7
> https://patchwork.kernel.org/patch/11281349/)
> 

I've changed IS_ENABLED() to IS_REACHABLE()in mediatek-drm-next-5.6 [1]
for the correct relationship between MTK_DRM and MTK_CMDQ.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.6

Regards,
CK

> 
> > +       if (cmdq_pkt)
> > +               cmdq_pkt_write(cmdq_pkt, comp->subsys,
> > +                              comp->regs_pa + offset, value);
> > +       else
> > +#endif
> > +               writel(value, comp->regs + offset);
> > +}
> > +

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
