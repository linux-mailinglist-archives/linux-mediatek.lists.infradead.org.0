Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2801C7944
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 20:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siSUze6fUzqh52Zl9CTB7kkoaZS1vFA4Y1aS/x6pKEY=; b=ZRaNpW8UH+L7vC
	HwEcyrm174YDtaIJbfWwbIDm3kDuDRwkC7GOK3K+lTw9hLjOt9/MrP5KCMVYG9eD/u0l48Sf/sz/G
	99U5ejPTJb0hnNbdU9DBvmP9wtvSWJEwLXvt0hm2fhuYLxcQ12HHtgBP627TOhCCvkAXugjBBtE22
	MFDM8xsIIDWOXCjhrry5bA5tVVYRyCK7JH3sjdqF4LqNqirVlxWtUYBTa9Ya8goevkyRRGzYGNNiK
	YiEouvuuKp0GLaln5mVB7J206cuk7tc9cGReY2EDqHKh/qVlc1faoG/vk72EGZjDJAEphAqxMfK14
	QXQLdHJNq70r20as2u8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWOfV-0001mD-9b; Wed, 06 May 2020 18:21:17 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWOfR-0001lN-0R
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 18:21:15 +0000
Received: by mail-ot1-x341.google.com with SMTP id 72so2185608otu.1
 for <linux-mediatek@lists.infradead.org>; Wed, 06 May 2020 11:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=D2taJJRTg2UNCEqvPUHeisc7wYhhWEOMV6TUWaPz7kg=;
 b=JaXZicmLPCbQ1s4wEPLd+sV+a4q0wnzPoifqdGpBSL8D7Z8GrydmvQGqC8UT22nL2I
 WZa/znMpgXW+q41TZVo9zK6nCks5GJUhUduUAyuXBbeNVH+4lSu2c8TsdwQTipW46XE8
 2YvlAWllyGrBAxfyw+wCC3p4SEMWY6eYou+Co=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D2taJJRTg2UNCEqvPUHeisc7wYhhWEOMV6TUWaPz7kg=;
 b=Cf4QHDojhtc0BDe1owc3DjIjJp9EfSkl3ZbP4c/H+WES6WW23dbbsB3cx1Ku9DZPYO
 L75J6Aa6MrLjzNNO04Sh4tgRDyuwnsO4DJn/HDnHo38mwA2U4BsGsFtrZInpuY0Q8M+G
 9Ee97IIyHshUu7lgoID320qAPjHrHOn+vyrX13iniArzdw6ObQxSfJgFR//R+wxqbIwf
 IIsoBiOc1Z5S1BJnQ5vpS+m+eifbdXBjHphxNsH8JoYhIgnz8GooxvvW9FK+YGm5RJOG
 /uk3PoXj4CnWAALRLN+/3bHYDb7bvZiwdnRQcOOYBCffrobrRLxo7A2aELguMF/M5K+b
 dYQg==
X-Gm-Message-State: AGi0PubyB4fXstGnLkWz8xAR4wS0rn4e2XHYmF1RoP3aTy4QxgHgkSXb
 A2JMQtu9J4OVXIyjtdvCXfluGDJ2H2Kf7xoGqcr7wQ==
X-Google-Smtp-Source: APiQypInw39ygS3P/++U3PAE3LlMt925jYmNYdu8cvU7nnL+hmn3yH1R3d09MJ5VoLDPJl2XHnEM/8wYsJ8wMTKfCVI=
X-Received: by 2002:a9d:490d:: with SMTP id e13mr7509661otf.356.1588789271980; 
 Wed, 06 May 2020 11:21:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
 <CAKOOJTzcNr7mc9xusQm3nCzkq5P=ha-si3fizeEL2_KJUOC3-Q@mail.gmail.com>
 <CAMRc=Md7gLMThfGF-7YLqW17MpMhU=UFbdTvfjbr9fFHTLir8g@mail.gmail.com>
In-Reply-To: <CAMRc=Md7gLMThfGF-7YLqW17MpMhU=UFbdTvfjbr9fFHTLir8g@mail.gmail.com>
From: Edwin Peer <edwin.peer@broadcom.com>
Date: Wed, 6 May 2020 11:20:35 -0700
Message-ID: <CAKOOJTxkcaq0bF34bcz3HZzqsNgfmJH=Hd+odNNMX5gDq4to=w@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To: Bartosz Golaszewski <brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_112113_781091_439CA7E6 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
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
Cc: devicetree <devicetree@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Fabien Parent <fparent@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 11:46 PM Bartosz Golaszewski <brgl@bgdev.pl> wrote:

> Re the last bit in priv_flags: is this really a problem though? It's
> not like struct net_device must remain stable - e.g. we can make
> priv_flags a bitmap.

Fair enough.

Regards,
Edwin Peer

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
