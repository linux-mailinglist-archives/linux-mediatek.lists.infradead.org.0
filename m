Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17701F95C0
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 13:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8gH5OMOIBb5U11GmityY1ernJ3lqrpmExRocPZzkpA=; b=F13QjHJIHqR8dJ
	ScxiprwFiCIIdHhrucljxEf0N/D4n+/rWtK0vuI846DaCoqNe76jqNybvixnVpTSK3L3e5vQlve5m
	g9CYH9GlETNFF806um39GGr4Vlvivq9jc6CHZkOvJvw03OaKUhfA/dY6Rvw/01WnhpHH3KXUeYVVk
	nRH8xX12+RdPqLW7X18Qf4ZnraC2ZoihdtsVnYe7QgDyF/dDqiRKIIfFiQyYRuKkxzjno9G4ep/Xu
	1wdxDyEi+evnoAXckQUooDkg4Q1HRuMKdtRPwvr59qsJUcrkcO9Y4y7aFEB0OEx489eTJhP5Ddmi6
	J4kJX+HOc/gezOibkYXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jknkW-0005tG-CK; Mon, 15 Jun 2020 11:58:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jknkJ-0005fF-NV; Mon, 15 Jun 2020 11:57:48 +0000
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6E9420707;
 Mon, 15 Jun 2020 11:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592222267;
 bh=rpbnAOKtxA3+nfUXJkVdH+zEnfJWigejr23KttLO5UY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2i3T7ir8nRePtjA7yM7lTLP8N5Mg8pTCb0g5sSudBtMQUXuSInrQXbPvspRlwfi3D
 e6dqCc5qQw1g9wuB2qHFB+MBvKWAfMx91pxYWrRiBAjO+LwOWTqj1ALsYLAOHXl0yW
 zvCtLuwvkqCilQiWyGUQ4B1EJBkYVMVC7zPzP+bg=
Date: Mon, 15 Jun 2020 13:57:39 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 13/29] dt: fix broken links due to txt->yaml renames
Message-ID: <20200615135739.798f4489@coco.lan>
In-Reply-To: <20200615111927.GC4447@sirena.org.uk>
References: <cover.1592203542.git.mchehab+huawei@kernel.org>
 <0e4a7f0b7efcc8109c8a41a2e13c8adde4d9c6b9.1592203542.git.mchehab+huawei@kernel.org>
 <20200615111927.GC4447@sirena.org.uk>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_045747_787967_0BF3622E 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Jakub Kicinski <kuba@kernel.org>, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, netdev@vger.kernel.org,
 Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-bluetooth@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Mark,

Em Mon, 15 Jun 2020 12:19:27 +0100
Mark Brown <broonie@kernel.org> escreveu:

> On Mon, Jun 15, 2020 at 08:46:52AM +0200, Mauro Carvalho Chehab wrote:
> > There are some new broken doc links due to yaml renames
> > at DT. Developers should really run:  
> 
> I also previously acked this one in 20200504100822.GA5491@sirena.org.uk.
> Has anything changed here to cause the ack to be dropped?

Both patches are the same. I forgot to add your acks on my tree. 

My bad!

Thanks,
Mauro

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
