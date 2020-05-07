Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4BC1C9EBC
	for <lists+linux-mediatek@lfdr.de>; Fri,  8 May 2020 00:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuMmd8A+BhvjnY7cqC1F/weaWAmG1X/0YLpqSZvEeA4=; b=nmbMPkM1cW+DdQ
	QITmM2ZXAP0uyRPYQMFrQl/MDTNw+yWo8rFIkDZ4mzxTJzrJO3DJGSjEbjlfNpRZiEFU8IAs+RPSu
	9LTnWbtNRbKO9eJjLhQWJwrxcDKfv+J4vQrT3JJGkLZCGEz3wI5hgmukBUJtS6dk7NWo0qgyJ8cpR
	rOVPIFWJXPBOaoD10PjN1KWiAL+X76Q7pyQDRkXOa5hmdPDmblCPa0n/3T3zSsdgY8XhgVu3T7bfH
	05/zL19A4i1uMBbwTVuwJaJVRnqccR71bScN4JudG/tG3WZR2YXnXSMemiX1d3tFhVqoRS/R8+a13
	Bg4GHbmKz8kuPWatvO5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWpMD-0006tD-K6; Thu, 07 May 2020 22:51:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWpLr-0006Tv-ET; Thu, 07 May 2020 22:50:48 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B6B52083B;
 Thu,  7 May 2020 22:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588891843;
 bh=i+twVoWgvvE+sIIP8RfgWgYxL/0MZSnTVluZHAQYh3Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ICncuhdNNndVuoB1VtwfIDdgvPbWU7TqOUOopbLTG92SjYIh2Y+ZXN7dZ7uv9QN/N
 cGD88cOB2d5XW7sFR+z2oKehsB3Xwxpp8roB7DvPSFKiT4X0MihPS6+mwq4PxGMaJH
 8DzcqHio0DrqnqsYLTTKoxab0nHtwN3l3kwaeu+M=
Date: Thu, 7 May 2020 15:50:41 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@leon.nu>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200507155041.4f1c71e7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200507055547.GB78674@unreal>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
 <20200506122329.0a6b2ac4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <20200507055547.GB78674@unreal>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_155047_500126_2FD7C21C 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 12:23:29PM -0700, Jakub Kicinski wrote:
> Please trim your replies.  
> 
> Off-topic.
> 
> Is there any simple way to trim replies semi-automatically in VIM?
> 
> Right now, I'm doing it manually, but maybe there is some better
> way to do it.

I'm also doing it manually :(

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
