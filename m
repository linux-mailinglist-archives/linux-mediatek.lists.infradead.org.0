Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4A21C81EA
	for <lists+linux-mediatek@lfdr.de>; Thu,  7 May 2020 07:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLSoOFh5czeoRgYCWzcKDS32FbO5+xJfyJyRMliakAs=; b=tCUPy+GarLv0Z/
	TOnk0JcszyokU1i0Lxe22YUcufBAYhcOYAXSnkM8KMSKsN/0yLaUffVFB2aOHkY5NrQjqbrvfhskD
	IlT/2jJtOK+tbdB+QnMwnsmsfEg3B2N1omVK/lDogjeKPrE4A5IDWWP7OyMsGQBSunkGFO2cKd74+
	Cptq/ekLUSxA3Wc/raSh6ZuJ80aHS0iRR/UxZQi3QTcjFg7HQAruN6zDpGFPBZtmvLcj0ZlV8Uvzi
	eUdG7BTfPKbotaogbtwt9uHkcNuw6drzdBzvn8KjL5nMTH8cslgizP9mxqLDbOTrWyGerN7qHVLxc
	864AaTK/vpQqFEH22teQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZVo-0005ma-2P; Thu, 07 May 2020 05:56:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZVf-0005f6-Po
 for linux-mediatek@lists.infradead.org; Thu, 07 May 2020 05:55:53 +0000
Received: by mail-wm1-x342.google.com with SMTP id g12so5254551wmh.3
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 22:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=leon-nu.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oH3LjbuNvDT9L8S5Sf69u824MeEV5cEtswBnzJfZKgg=;
 b=NtQ9lrEB0RKmvJcKiFzKnz9QfMiUbEXXjSe/p7wlkumIjpn8oRgUaELn6nJE6+2mwu
 eXq4XStBUlPFpoP7TZhinRFDLHkIVkcxHvIXhU/OEMPZK2iLNXl++NcXynu44/BVTlIn
 rVh6p9N05KTDa9Q8ype8NNg2HnUWiPAd3wP3AzpbjjlhbKDy3Xx6bX2MASwUnDq/e9sH
 NpPRGLQdiSfRxfqGDpqARRojvEVXdkbhH8c4G/uNC+4VE+5mkWr1oASrxa68BA9bhq1D
 Ks+uYM4F4sB7PlGSmjPu//nwU8Pla6FjKmc/oxCpG6pwK81I+kxqrhid3dpNLpAPvwsk
 VLpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oH3LjbuNvDT9L8S5Sf69u824MeEV5cEtswBnzJfZKgg=;
 b=YGXWSMGpH6CSxk4h0RE3x1HtQD+xlFhXMeVWe3bBqsunZmhQqXQO+L29NaDps1Qtex
 W+J/u1A3ZgjC11EKlWu5ISGucQaUmyM2ozYFNjA+orgho4zYELYwTuGpNutre/jmpvbE
 IL3sji2Q7y7ELvtYOMn3jFZ8NbLhfrSdZ9dWDqYLoDnHN6pZmY+TFpgZe/af5kWl6Kf/
 jPwRldV2rinyH8K5uubQBQKLnizfuoIv5zlPifdDZPUHRDfOZPeYw1YRH7N1yYMOaqpa
 TvGPDysroFXMUSEpCmlGCfSLonoMU3Z+fbH1it2mRRq/q5DU25Q5YPWhh4qYdgObmqU4
 HXWw==
X-Gm-Message-State: AGi0PuYcBIPiOCpEKJzOVd/mbTXCUJ+QQOjD6FYZVmWxjgFA4eQovAhh
 gtfHjhcc3WoF8MET/u+Qplv+zQ==
X-Google-Smtp-Source: APiQypK8a3UU8ELR11PAnuJfpnQYv+HCtC1y98AmPp3kCtHlJNWMr93w7mzfA1WmRqve6h0Pe9LTrg==
X-Received: by 2002:a7b:c3d4:: with SMTP id t20mr8648512wmj.170.1588830950010; 
 Wed, 06 May 2020 22:55:50 -0700 (PDT)
Received: from localhost ([2a00:a040:183:2d::a43])
 by smtp.gmail.com with ESMTPSA id i129sm6614225wmi.20.2020.05.06.22.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 22:55:49 -0700 (PDT)
Date: Thu, 7 May 2020 08:55:47 +0300
From: Leon Romanovsky <leon@leon.nu>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH 06/11] net: ethernet: mtk-eth-mac: new driver
Message-ID: <20200507055547.GB78674@unreal>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-7-brgl@bgdev.pl>
 <CALq1K=Lu0hv9UCgxgrwCVoOe9L7A4sgBEM=RW2d9JkizHmdBPQ@mail.gmail.com>
 <20200506122329.0a6b2ac4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506122329.0a6b2ac4@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_225551_909440_8FA548DC 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
> On Wed, 6 May 2020 22:16:11 +0300 Leon Romanovsky wrote:
> > > +#define MTK_MAC_DRVNAME                                "mtk_eth_mac"
> > > +#define MTK_MAC_VERSION                                "1.0"
> >
> > Please don't add driver version to new driver.
>
> It has already been pointed out. Please trim your replies.

Off-topic.

Is there any simple way to trim replies semi-automatically in VIM?

Right now, I'm doing it manually, but maybe there is some better
way to do it.

Thanks

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
