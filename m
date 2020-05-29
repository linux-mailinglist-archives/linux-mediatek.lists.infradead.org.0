Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F5E1E841A
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 18:52:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fttPZa70XU4eIyOXHNY8RoXXpJ+Uqfm0kKazR1Eku9g=; b=TXn8PQQ2CKieJ/
	dYF76TmLpu2VKur/nVY4dWQ57KM9MnkCegJpM9zSnT5wsUx1HRGkODZ7Q6MDW/N4cresqzX2scdHE
	y4MwAZ0EOyCI5dj/3k7nn1OrxBB71aY2UtWbt3XHs+/yApL8MMvJHXlEID8MWoguu6T+GRiucHwbs
	vQIhCtdo2qFm8fPfBFrMvFui62BXZIbjhTrbV22n+ECAYKz37eHV7zKVWfQ4hQdBiBh9O14668pnT
	vrypOMjcsBeF/qRP/IdXa7xM5LrpXbotxPcMeDkKVkYJzn3ZHerf5vVzhJpmStllc80+LxzSklc6Q
	nQFcfc8z4lSx4DJD+VdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeiFC-00018y-TO; Fri, 29 May 2020 16:52:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeiEi-0000gO-Er; Fri, 29 May 2020 16:52:01 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E08FE2075A;
 Fri, 29 May 2020 16:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590771119;
 bh=mzOci40rtIUK9rYYmQ5uYKL6pE0DBfPl1LAF+2KhqLM=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=fe2sO+uxUlnsfNzaIxufOEHLILr9p5shzvCBne9EzQSlICe6Yj5Gjpw1coOMdjG51
 PpRNx74x7Cx4URvl/UTpZwLr0Vp62SdF98BMST7t3tap9EsvFKo/zsGzzKNI9PLRqr
 SMFbTw72HQlpjpSBWgHVV78+qDJbJ6M68RA3ExE4=
Date: Fri, 29 May 2020 17:51:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Sean Wang <sean.wang@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
In-Reply-To: <20200528154503.26304-1-brgl@bgdev.pl>
References: <20200528154503.26304-1-brgl@bgdev.pl>
Subject: Re: [PATCH v3 0/2] regmap: provide simple bitops and use them in a
 driver
Message-Id: <159077110913.28779.5053923375043778782.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_095200_519527_2D2DDE80 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Pedro Tsai <pedro.tsai@mediatek.com>,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 28 May 2020 17:45:01 +0200, Bartosz Golaszewski wrote:
> I noticed that oftentimes I use regmap_update_bits() for simple bit
> setting or clearing. In this case the fourth argument is superfluous as
> it's always 0 or equal to the mask argument.
> 
> This series proposes to add simple bit operations for setting, clearing
> and testing specific bits with regmap.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regmap.git for-next

Thanks!

[1/1] regmap: provide helpers for simple bit operations
      commit: aa2ff9dbaeddabb5ad166db5f9f1a0580a8bbba8

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
