Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAF81B5F4D
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 17:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+Bu/cdLjTs0FaGPWh/7IUTwGQtbfk2oJt+IZ8XdilU=; b=stH89HdzOKv4ra
	Qmn+X++Gquns0FZGbzChH/DZkX/NGJq7yqkzeY9kXtsZ9HaqOkqhvaoWmOPu1lOR3D4MTlt00iYLR
	bsm1ml74JCs8nQY8xtnq56S+RHketcdcg730nXiojmUAM1bAVwk3NEm/0kts0FsV29HD4aC402kjT
	1uFfwpYht5caxShtj3DfX32uKV3S/b4iXJYjao6CBw95HBP3HpWv2aDis1uYE+rqbV42dTd5/ezAH
	zjNnLku/DHNJuceZVYxVzr6x7DByA+w5ZQ6Nb7rS0sDNsU4f9OLlT6S6dTqOBaISoL6VbKyxrNT6e
	SyNbUGWDmAbFgbJN0uig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRdqz-0007V2-5m; Thu, 23 Apr 2020 15:33:29 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRdqn-00069d-2V; Thu, 23 Apr 2020 15:33:18 +0000
IronPort-SDR: 5RkV2OuEkDh6Yp7RLq0HzwZu9J+sJHPtYR08AnNM+MyII9HfATqfUsI0RcrraM8cNHPh430+k5
 lHA0ZIwUzbgw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 08:31:14 -0700
IronPort-SDR: /GFKe82XVmh4+0BRn8SZTtvwp+0urUa1LNzYA81wW4ZorQZKkqcLM/YAsj+z0JsywQAuhavM1S
 QNjLFpn+IVdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="457539017"
Received: from monjedli-mobl2.amr.corp.intel.com ([10.254.190.100])
 by fmsmga006.fm.intel.com with ESMTP; 23 Apr 2020 08:31:14 -0700
Message-ID: <6d04d1bdff164a31d41757948cb3dd76144c0b66.camel@linux.intel.com>
Subject: Re: [PATCH 0/4] ASoC:: don't use snd_soc_rtdcom_lookup()
From: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
To: Mark Brown <broonie@kernel.org>
Date: Thu, 23 Apr 2020 08:31:14 -0700
In-Reply-To: <20200423105317.GE4808@sirena.org.uk>
References: <87d080unyx.wl-kuninori.morimoto.gx@renesas.com>
 <d20cc18d0fa10b52437e0ac29ea98792e0a3d45d.camel@linux.intel.com>
 <874ktbuq4j.wl-kuninori.morimoto.gx@renesas.com>
 <ebe305743178c4548b779f25e6400863094ef5a9.camel@linux.intel.com>
 <20200423105317.GE4808@sirena.org.uk>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_083317_161109_3D977F4D 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Cezary Rojewski <cezary.rojewski@intel.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Jie Yang <yang.jie@linux.intel.com>, alsa-devel@alsa-project.org,
 Liam Girdwood <liam.r.girdwood@linux.intel.com>,
 Richard Fontana <rfontana@redhat.com>, Shunli Wang <shunli.wang@mediatek.com>,
 YueHaibing <yuehaibing@huawei.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Jiaxin Yu <jiaxin.yu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
 Stephen Boyd <swboyd@chromium.org>, linux-mediatek@lists.infradead.org,
 Eason Yen <eason.yen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Takashi Iwai <tiwai@suse.com>,
 Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2020-04-23 at 11:53 +0100, Mark Brown wrote:
> On Wed, Apr 22, 2020 at 03:39:58PM -0700, Ranjani Sridharan wrote:
> > On Thu, 2020-04-23 at 07:12 +0900, Kuninori Morimoto wrote:
> > > I'm thinking removing lookup function is nice idea,
> > > but don't feel pressure to it.
> > > "Now you know it" is very enough for me.
> > I am having a hard time visualizing a scenario where we would have
> > more
> > than one platform component. And even if we did, I'd think that the
> > driver registering these components would make sure to not
> > duplicate
> > the driver names. Of course, we dont really check if thats really
> > the
> > case. 
> 
> The only use case I can think of is a link where there's a CPU on
> both
> ends for some reason.
> 
> > Do you think it makes sense to add that check when registering a
> > component? If we do that, then keeping snd_soc_rtdcom_lookup()
> > might
> > not be such a bad idea. 
> 
> Yeah.
Thanks, Mark. Let me send a patch to handle this check in the core.

Thanks,
Ranjani


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
