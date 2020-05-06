Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E391C7623
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 18:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Subject:
	References:In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LstGOpPcXwqviMTdyM0X4lrsCmMJcrPyt0yq3/fix8Y=; b=gJ1iPkejG94c6z
	xgtnRzaxAsvw+716m0Y0fdfXKFUeO/sut+RrcEiVVYTWqvDw1TAJnuMu5+RUpS/zQBY53l2hz9h2h
	p+g4Xirwa34QkmYmncwnPyLUvHhYt3AnYqENmrnJCK2FTCAOTwMHItQh707eRYLe8OE2GVHHyyLA6
	GDtm4xuKPOX7bfFdcC+VLj8kNlPq5RmMKEpYwloHq4yMhHGbFsI3ioeR4j36EriwyCiMTNv2/AP1y
	DdzV3fl2jL8ou+u90mapVuwJjUnqXkPwZ7MVgweaYZ6DD4FJgH1ZpnzlM4goQdNyTYcsDCL4TRD1u
	ZEq1F2c7dN0dmTnRdjFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMnk-0002G0-TI; Wed, 06 May 2020 16:21:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMnc-00029Q-ST; Wed, 06 May 2020 16:21:34 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E66FC206B9;
 Wed,  6 May 2020 16:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588782092;
 bh=6ody89kj779DuishSNc4WgF9or+Kp0PLl0WI/a3+U/A=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=RGE2eW/Cz9xWNS1o5nnQYukGWNJcSMJfUsYggG+0/vYsv6z34wu6QBkuIkz4wnCf/
 EKrJmh4wz5E6nomgBilmxcDZttODl3Qz7c7Hhd/gbhpfju9+D/v8T+D7ud9S0b4+Go
 medJkHZ+WxBZInnfINiQGI6Jmsr/53YJfggmvroU=
Date: Wed, 06 May 2020 17:21:29 +0100
From: Mark Brown <broonie@kernel.org>
To: perex@perex.cz, matthias.bgg@gmail.com,
 Tang Bin <tangbin@cmss.chinamobile.com>, lgirdwood@gmail.com
In-Reply-To: <20200506143009.13368-1-tangbin@cmss.chinamobile.com>
References: <20200506143009.13368-1-tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ASoC: mediatek: Fix error handling
Message-Id: <158878208991.2264.6627359892180140797.b4-ty@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_092132_937096_1718DC97 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Zhang Shengju <zhangshengju@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 22:30:09 +0800, Tang Bin wrote:
> If the function platform_get_irq() failed, the negative value
> returned will not be detected here. So fix error handling in
> mt6797_afe_pcm_dev_probe(). And when get irq failed, the function
> platform_get_irq() logs an error message, so remove redundant
> message here.
> 
> Signed-off-by: Zhang Shengju <zhangshengju@cmss.chinamobile.com>
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.8

Thanks!

[1/1] ASoC: mediatek: Fix error handling
      commit: adb69968074a22376074aaa7f7971d93636b4332

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
