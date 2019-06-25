Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8A155AE2
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aTQC4SE5oXNTGL94z0kCjJqZq/94Gf3NDXaBPe59Yz4=; b=Y+vVTeGMusA7fa
	TXy410LQKUckLUowdvvnmm4B7qXzeGmtc+JKZO4COQnffXrlye7kHeEilqmar1m1n4d6upcoiGkH/
	SjustxEB4NYiq1i7JyP5ju/PxJfeZVGXfaD1NeKc6O48GhXjwUc+laM3hDt5brCD3tCTMFGz85gxj
	m+TKevsoGFJECyVYz5c5iJaYsu4Xt4JD6wd8nV2mlCLdOeZxm55Ld/EPtEyVCW+MyhRe1t89eOSva
	AZXxtSsmz6heW7HlEWQTlzd1i/hn406z27VDvC0IoBmRJwb/u3AwJbzt3OGVJulwpQO12FJQmXRwa
	LuT8dD/1vdT5e1R1Ic2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftil-000214-Jm; Tue, 25 Jun 2019 22:15:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfthg-0000Rs-6o; Tue, 25 Jun 2019 22:14:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0DC22086D;
 Tue, 25 Jun 2019 22:14:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561500855;
 bh=ZcG6s2SVVPlQMCLBl239NuNMjuljQYUwEP8YAEKAtsQ=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=Ydzac1ENQGs8JHN5EL5E+CkJH82B6XZ3c9ps/ajN91KLrj3uAj/+VpNZmZCdy27gF
 j+kmQ0rJLpj2ZbPXomZ68FzknKOIshM5pYbIqyrdhTjjiWWhao81hbRMTErmFENX0n
 gDVC1TZk2QIFCy7IUZZGjEqeE/telP1NRjhfAJ2M=
MIME-Version: 1.0
In-Reply-To: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
References: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Weiyi Lu <weiyi.lu@mediatek.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1] clk: core: support clocks that need to be enabled during
 re-parent
User-Agent: alot/0.8.1
Date: Tue, 25 Jun 2019 15:14:14 -0700
Message-Id: <20190625221415.B0DC22086D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151416_266550_6FA05503 
X-CRM114-Status: UNSURE (   8.27  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, Biao Huang <biao.huang@mediatek.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Weiyi Lu (2019-06-09 20:44:53)
> When using property assigned-clock-parents to assign parent clocks,
> core clocks might still be disabled during re-parent.
> Add flag 'CLK_OPS_CORE_ENABLE' for those clocks must be enabled
> during re-parent.
> 
> Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>

Can you further describe the scenario where this is a problem? Is it
some sort of clk that is enabled by default out of the bootloader and is
then configured to have an 'assigned-clock-parents' property to change
the parent, but that clk needs to be "enabled" so that the framework
turns on the parents for the parent switch?


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
