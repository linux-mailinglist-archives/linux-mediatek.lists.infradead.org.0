Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A6E91AD7
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 03:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KxVsOMM7g3WqVRzE160x9Y0nrwQdxNYc0vmKeRMBXQ=; b=O4jtmRDLAV7e7b
	EpoxzG3Ahj1vnZNT+/wnJux96UGGDGV8aHIb6RB+BaL9KPTGeMrtF0kZAisJGWiNXxAEaXd0y9G45
	96eeLHGhmZMTifxMXAdBV4GpKmBESJHQy36b83DrhuCRCAvXkZ7YVTMNtQx0T1eV4gnJ0DBolnQM0
	sfDxaxSVNt9e1Pigl7McDUhlHFqbnCdyi45Q8BFUCD4fB+fISx6K6YOFPEs3RI+o2gls0ROVO3Ohu
	XlX9iSMW7QDIev7X+jxc1EjhM7W8ba/i//0M7yU0BSj71LxAZDHCQrmBsRw0qzmug3YjY7lFFu4Zo
	+G1FWtMWqTMbmwl0CNnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzWiT-0003kD-3k; Mon, 19 Aug 2019 01:44:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzWiP-0003jo-Ch; Mon, 19 Aug 2019 01:44:10 +0000
X-UUID: 8fae5c13b4a24c3ea3e5f444bb5546aa-20190818
X-UUID: 8fae5c13b4a24c3ea3e5f444bb5546aa-20190818
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 608345056; Sun, 18 Aug 2019 17:43:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 18:43:35 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 09:43:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 09:43:33 +0800
Message-ID: <1566179014.6371.10.camel@mtksdaap41>
Subject: Re: [RFC V2 09/11] dt-bindings: interconnect: Add header for
 interconnect node
From: Henry Chen <henryc.chen@mediatek.com>
To: Rob Herring <robh@kernel.org>
Date: Mon, 19 Aug 2019 09:43:34 +0800
In-Reply-To: <20190501202844.GA5092@bogus>
References: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
 <1556614265-12745-10-git-send-email-henryc.chen@mediatek.com>
 <20190501202844.GA5092@bogus>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8644A86D77DF7560D2A7B886E8B77D4D30D0B2D39F8C858A4FD76197ED652F0A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_184409_438608_92EBC4E7 
X-CRM114-Status: GOOD (  10.87  )
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
Cc: Nicolas Boichat <drinkcat@google.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-05-01 at 15:28 -0500, Rob Herring wrote:
> On Tue, Apr 30, 2019 at 04:51:03PM +0800, Henry Chen wrote:
> > Add header file for mt8183 interconnect node that could be shared between
> > the interconeect provider driver and Device Tree source files.
> > 
> > Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> > ---
> >  include/dt-bindings/interconnect/mtk,mt8183.h | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >  create mode 100644 include/dt-bindings/interconnect/mtk,mt8183.h
> 
> This goes with the binding patch.
ok, will merged into previous patch 08.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
