Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BAB1449B0
	for <lists+linux-mediatek@lfdr.de>; Wed, 22 Jan 2020 03:05:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7y/bjbAQYRBaEELQmgiS8OhmqC7c7SZ8aDqNSjUTlmY=; b=VIzZbNUcQOWbPB
	FlWIaEQM+K6oEpcMgInmlxzaBuxU6hh+6wLN/wPtYaR9Km74Hyq5gp8s+WWPUxxhF/1edErrj0Mw7
	IF1qGO9xRVKZMMRWsteVsArB9Dx1XgnmN7FhDdFRBpoXU6SV1uUGF9H4ZJezhw5Dq2X7lYxkb4aoF
	8gPb8+rrabvDLSbGrEMeaJ5GgF5unh87gaRaN9GVz/nwLG7rzvOzZq8o70Mo76rK6+wijAvKQU9gD
	hlKKTf2uCuje87bLz0HXHWDs4ys9XwPs/xBLFKmbfNza0Hx6fab0keSw3uSnvP+DqOK7IiLNXKVvs
	28F5SIy2Wvo0PCjQKeKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu5OW-0002zO-Tf; Wed, 22 Jan 2020 02:05:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu5OK-0002hH-Nh; Wed, 22 Jan 2020 02:05:13 +0000
X-UUID: 52f98f1122124fb69c3cb5957c1ade89-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0FaXYKQ4jfEqR8ee1u10dSXTtk9iSDJYo/sKCwcXsic=; 
 b=q9DH0ZSbcDqjoExb4cUgo7cvvLvESqFvS44H8cbklone7QavrEyd6xA1oxeOzfOY1dFFpaUFORNLTRIjtZ2R9F+EdOAYQo3COdGL0sw9cg62AHg7/D1MwlIOx4h/CI6DuAa5trcSkSbELF24ZPRFlfRucanCXn+pc2AyiIlCIsQ=;
X-UUID: 52f98f1122124fb69c3cb5957c1ade89-20200121
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <wen.su@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1798281668; Tue, 21 Jan 2020 18:05:03 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 18:06:02 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 Jan 2020 10:04:20 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 22 Jan 2020 10:04:38 +0800
Message-ID: <1579658700.6612.1.camel@mtkswgap22>
Subject: Re: [RESEND 1/4] dt-bindings: regulator: Add document for MT6359
 regulator
From: Wen Su <Wen.Su@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>
Date: Wed, 22 Jan 2020 10:05:00 +0800
In-Reply-To: <20200120084355.GW15507@dell>
References: <1579506450-21830-1-git-send-email-Wen.Su@mediatek.com>
 <1579506450-21830-2-git-send-email-Wen.Su@mediatek.com>
 <20200120084355.GW15507@dell>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_180512_783253_F5A0FA2A 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Liam
 Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Jones,
On Mon, 2020-01-20 at 08:43 +0000, Lee Jones wrote:
> On Mon, 20 Jan 2020, Wen Su wrote:
> 
> > From: Wen Su <wen.su@mediatek.com>
> > 
> > add dt-binding document for MediaTek MT6359 PMIC
> > 
> > Reviewed-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Wen Su <wen.su@mediatek.com>
> 
> These are in the wrong order.  Tags should describe history, thus
> should be in chronological order.  For instance, the ordering you used
> describes Rob reviewing the patch *before* you sent it, which is not
> possible.
> 

Thanks for your comment.
I will fix it in the next patch.
> > ---
> >  .../bindings/regulator/mt6359-regulator.txt        | 59 ++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/regulator/mt6359-regulator.txt
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
