Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1023919AC
	for <lists+linux-mediatek@lfdr.de>; Sun, 18 Aug 2019 23:16:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3p+mUlRnIKfHGuk2yAWHgp3YiEKNEHxMHvi17zN1H0=; b=Olv86TBMHapHGG
	v4jTIXqGHAzsemUwMn9ifRZqNhjqKikeKmAutRPVaTXbHMo0hcD0MaGiCR64oRSOwcDL/484Fjetk
	Mfwd6b89mdvy7PaUTbcJUVKDe8SS/0Xn+dzKOLdoURGTluL+xfzdl3UdzCTYCohMB2xRjE7VocoUP
	AKAIxse+dDhRUCFvs5q9CcF2xLn9hAj/srj4hD97xkexx0FVYC/IJXeo6/wfxq0nYkdx8IqYaF9ER
	76Pc/btegVVwo0qLUkPlKOBYuYrpRPDYBxMbLKo95AxdEYhjrTPzfQ9rbo9CIj436fhhWgH8sgFW/
	oIYRSJK93XneQcVJ3TeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzSX7-0007S8-RB; Sun, 18 Aug 2019 21:16:13 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzSX2-0007RY-Uy
 for linux-mediatek@lists.infradead.org; Sun, 18 Aug 2019 21:16:10 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4BE5F145F4F4E;
 Sun, 18 Aug 2019 14:16:06 -0700 (PDT)
Date: Sun, 18 Aug 2019 14:16:05 -0700 (PDT)
Message-Id: <20190818.141605.39249439314908619.davem@davemloft.net>
To: sr@denx.de
Subject: Re: [PATCH net-next 1/4 v3] dt-bindings: net: mediatek: Add
 support for MediaTek MT7628/88 SoC
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190816132325.28426-1-sr@denx.de>
References: <20190816132325.28426-1-sr@denx.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 18 Aug 2019 14:16:06 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_141608_999039_D3402C90 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, robh@kernel.org, netdev@vger.kernel.org,
 sean.wang@mediatek.com, daniel@makrotopia.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Stefan Roese <sr@denx.de>
Date: Fri, 16 Aug 2019 15:23:22 +0200

> Add compatible for the ethernet IP core on MT7628/88 SoCs. Its
> compatible with the older Ralink Rt5350F SoC. And OpenWrt already
> uses this compatible string for the MT76x8.
> 
> Signed-off-by: Stefan Roese <sr@denx.de>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
