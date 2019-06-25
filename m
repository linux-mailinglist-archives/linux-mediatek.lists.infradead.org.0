Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683D055AE4
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqknFmXzOV/Mmn+lTkZ21/78LlrVQCNdr66tHzC7Huw=; b=iN0xyfPRFLJSYu
	i/EsI1kDPdDFGiEUlNAwORV47VcbgyMx/L5LjXhMcgtAIZVL09HU2Aa+4pusMhRE9PivJ7Rb/kYRs
	Zk2Lf86JGCQiFtNtnx9224MkGYQG0WRWQbuW2uUPL49k1oElaJWwsWJA8Eo7qpfLIF2JJV9o80p1g
	Ve98W1RqlsEQdngEMQSLiS0Zpr8XLSRBGIKWPSnte5Sh5Tp6AEy/Prh6LN6lfC4DLc5Dr3vebNEgi
	DooJYF3VZz7qK5jUpEyr6CQGHmOcEfI1jPh7wjlRCHuggPpz0vi1Giw+wRYZ47t/1sh7BAdQySKuO
	mlivd+IFgy0X/D/pImtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftjC-0002I8-HN; Tue, 25 Jun 2019 22:15:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftib-00020G-8B; Tue, 25 Jun 2019 22:15:16 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B691620883;
 Tue, 25 Jun 2019 22:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561500912;
 bh=8qTkfS/4sezfPP01RsGhg7FS4aonLn9/wHCnef6132A=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=IMLS8thwDC59JuDZtM/8G3qRVOM2sezntC8PHj1xZ0qDsIiNEj84uIQyOEmW2cpW/
 HMh1Mjwkz1NCiK5UiJs6gquxhP6o2hX7S6LK0zbxrQU8KMtmWfn+6VxPDogxO4d6qS
 FIu9kLNyG2yKp/5PnHIt5OVkYflxji5DYbW1kuKI=
MIME-Version: 1.0
In-Reply-To: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
References: <1560132969-1960-1-git-send-email-weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Rob Herring <robh@kernel.org>,
 Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2] clk: mediatek: mt8183: Register 13MHz clock earlier
 for clocksource
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 15:15:12 -0700
Message-Id: <20190625221512.B691620883@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151514_116271_B82377CF 
X-CRM114-Status: UNSURE (   6.17  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dehui Sun <dehui.sun@mediatek.com>, James Liao <jamesjj.liao@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-06-09 19:16:09)
> The 13MHz clock should be registered before clocksource driver is
> initialized. Use CLK_OF_DECLARE_DRIVER() to guarantee.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Do you have a Fixes: tag in mind? Otherwise, the patch looks OK to me.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
