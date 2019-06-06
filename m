Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FDB38171
	for <lists+linux-mediatek@lfdr.de>; Fri,  7 Jun 2019 01:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FtYtPzO5ir+CMl0liq8+GWIpABVwozkqERspFzFjOV0=; b=sMGAWxAUrZXId6
	mLfogZpFRlt+IWPiOWFcFrorL6rwSiuQIXXzqZowVfnSOPCQVzYAniP2N7gguprdWgGbx3HX9vg4G
	SAD1pt7ol9/fYnCFsCgbj+LYG8PYu+dnPKUG4PTrMkxSCZ+T9r6glN8BA56TaWP74jx6tUU9qot5k
	MnbSwWp7fZssJJ0aKOn+U+4pauLbNio2mqD29MMZ3KGCsiJe2IpOifpayepndmq0AjrniPG8JbpYu
	PRISZG9ELxGvmCixbAeXiZvLfjozRx/zwlODg5nkBTQVTsNzcsvQQIpxHXKG9n6kh0QjBzb26r35a
	TzTUZnVUkrAvPvTmpLgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ1Mn-0005HU-19; Thu, 06 Jun 2019 23:00:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ1Ks-0004jl-E3; Thu, 06 Jun 2019 22:58:20 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7557F20645;
 Thu,  6 Jun 2019 22:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559861897;
 bh=j/aIV6c/KQbK9cjA0TZlc6ZkLtdHIUPXfcUYnGTZ0rs=;
 h=In-Reply-To:References:To:From:Subject:Cc:Date:From;
 b=WJw5/uyyJTq5dqW5s9gnXfRzUXZA/KzK1Ayqc2AjmRKdRcHZGuL0o1eYVBOkSSpm8
 Y+6Y1/16BzEzbZ9dBjPJ0SLS7M55jdBBbLHxCTox9c5PUY+j0Jd/E74XmogqmnwZxw
 PuGC5pi/3HEuLLJ9Pj4haK0bXibchCWyfAW2EEns=
MIME-Version: 1.0
In-Reply-To: <20190521034001.53365-1-erin.lo@mediatek.com>
References: <20190521034001.53365-1-erin.lo@mediatek.com>
To: Erin Lo <erin.lo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Nicolas Boichat <drinkcat@chromium.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: mediatek: Remove MT8183 unused clock
User-Agent: alot/0.8.1
Date: Thu, 06 Jun 2019 15:58:16 -0700
Message-Id: <20190606225817.7557F20645@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_155819_633352_9E7D991D 
X-CRM114-Status: UNSURE (   4.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Erin Lo <erin.lo@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Quoting Erin Lo (2019-05-20 20:40:01)
> Remove MT8183 sspm clock
> 
> Signed-off-by: Erin Lo <erin.lo@mediatek.com>
> ---

Applied to clk-next


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
