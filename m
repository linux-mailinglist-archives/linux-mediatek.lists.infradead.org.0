Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D0EB53F5
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Sep 2019 19:21:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+M03/1wInoCX/E1/QUjjvUPzcX3vqBQgI8/v01u6FtY=; b=lPb8wON9zdeyxQ
	C25+JhPEKgpUIDh2az8DMIyw7V4CPCD+VGZ5wmY2jqy+g3sCljrk5HcNmYxWkSsCmGrbeu/ODFHNO
	J2hGwq6TCoHELDA84Da1rQuHDbxoLvhMrwaOF+7QuPz5HHF7J81j5APdkjS3NXkFuF4aJaAKe0VOo
	iIML7Bthg4i4SsuiNQ66RINhkS2A7qHlsu2/1gSYdOeCwILr/hLbWfwfnLpNfPTvBejCLCGdbb3u6
	D5SvR8lDXG1h1qhnVrgUZanizJWZO26Mg91O2SW/3TPxdaDA1Kh9Lr6tJ+WrjEkbCKUbvVpXqvRfP
	qxKl1c55fQFYNVEzThgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHAP-0001hv-KQ; Tue, 17 Sep 2019 17:21:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHA0-0001UX-FH; Tue, 17 Sep 2019 17:21:05 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 114D72053B;
 Tue, 17 Sep 2019 17:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568740864;
 bh=+yrIysG+d50OzfyVaNzUPv1KVx6SQC71CT0SP1DWWFw=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=1EMIxfnYAOTJDXSbu37rcdHpnRq5GER8Vtx45QhnC1BSc4OfqySavgWqw3i/IXM/r
 XEU5dgVZgJ06pDslvj3BTdYUNICg38DaNUHwqvcwX/yDvsPc0Gjy7dwT3/pm7F9dde
 OvNrZSnpZbv0h4XBkp1FxoFDnFGqqlcQlyKzMzZw=
MIME-Version: 1.0
In-Reply-To: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1566980533-28282-1-git-send-email-chunfeng.yun@mediatek.com>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>, Rob Herring <robh+dt@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: mediatek: add pericfg for
 MT8183
User-Agent: alot/0.8.1
Date: Tue, 17 Sep 2019 10:21:03 -0700
Message-Id: <20190917172104.114D72053B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102104_527483_112818B4 
X-CRM114-Status: UNSURE (   6.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Ryder Lee <ryder.lee@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Nicolas Boichat <drinkcat@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Erin Lo <erin.lo@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Chunfeng Yun (2019-08-28 01:22:12)
> This patch adds binding of pericfg for MT8183.
> 
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
