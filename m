Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F41DA1DC90B
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 May 2020 10:53:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:References:
	In-Reply-To:Date:Message-ID:Subject:Reply-To:To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2BWQt1dbyFcB3zXyWA92vT/Kh2lrFiz1lPXaS5c1ZUk=; b=GU/ZvmZDtPH5ysIgGJzQnoMrIY
	73KHz77Lm35jHPhldiYTT1OHypX856IcJUn3vbLO/PaYktkOUGJ+RlooG8FtI4cZ4b/LLC+mli1Y5
	DM/O2iWv/Pyzc/xUXnXjEg0Ercd5HZ531GmoWC4stEMuQpbHjtP2X/7IHtE25LVUmd9OAH/94fl/3
	sJJVC90kBpprDuXsR2b1MgRHP/X50ch/x4ui47MJ+C9iTVOhAbljE7YiD4tBoV0ZPIsDi5w6PuezN
	z9jcnCl4oO3FIVmQVE990Eg8YOUpQkTj2byntzxcXMvj9+1YQ5sD6RpZE5RXUrRAcCHA1+MnILRj/
	vMTKrmXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbgwm-0000gA-VZ; Thu, 21 May 2020 08:53:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbgwj-0000eO-Hs; Thu, 21 May 2020 08:52:58 +0000
X-UUID: 126a4a26ffaf491c9a87184c3e6004df-20200521
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:From:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:Message-ID:Subject;
 bh=Ntq+xnZqQIn/7PE5MMeGwbIxDp+MLU6cQe0dH7iWCZU=; 
 b=U+FaTvltahZ7khZZtzciTGjMw2cZP8cOg2BL98HP1W7g5hyOid75Bmg0LrszMbJtAAxkfHtinTC2SXMb5srzC76X1Z7gdg9IzMdrRlqsl9tS5oBEWIwCw4A6ypqd2JE4FA2ICmwR3itSyFk8/m9lRlcMk+gnZ8c9+Y+p97FVTFs=;
X-UUID: 126a4a26ffaf491c9a87184c3e6004df-20200521
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <andrew-sh.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2091865296; Thu, 21 May 2020 00:52:38 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 01:52:37 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 21 May 2020 16:52:34 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 21 May 2020 16:52:34 +0800
Subject: Re: [PATCH 09/12] devfreq: add mediatek cci devfreq
Message-ID: <1590051155.14062.3.camel@mtksdaap41>
SubjeTo: Mark Brown <broonie@kernel.org>
Date: Thu, 21 May 2020 16:52:35 +0800
In-Reply-To: <20200520123135.GD4823@sirena.org.uk>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
 <20200520034307.20435-10-andrew-sh.cheng@mediatek.com>
 <20200520123135.GD4823@sirena.org.uk>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
From: <andrew-sh.cheng@mediatek.com>
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_015257_594285_99545AA5 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org, Stephen
 Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Matthias
 Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


On Wed, 2020-05-20 at 13:31 +0100, Mark Brown wrote:
> On Wed, May 20, 2020 at 11:43:04AM +0800, Andrew-sh.Cheng wrote:
> 
> > +	cci_df->proc_reg = devm_regulator_get_optional(cci_dev, "proc");
> > +	ret = PTR_ERR_OR_ZERO(cci_df->proc_reg);
> > +	if (ret) {
> > +		if (ret != -EPROBE_DEFER)
> > +			dev_err(cci_dev, "failed to get regulator for CCI: %d\n",
> > +				ret);
> > +		return ret;
> > +	}
> > +	ret = regulator_enable(cci_df->proc_reg);
> 
> The code appears to require a regulator (and I'm guessing the device
> needs power) so why is this using regulator_get_optional()?

Hi Mark,

Do you mean, why not use regulator_get_exclusive() or regulator_get()?
Because cci and cpu litter core shared buck, it cannot use
regulator_get_exclusive().
Because both cci and cpu want to tune voltage, it cannot use
regulator_get(), otherwise it will get dummy regulator even this buck
doesn't register.as regulator.

BR,
Andrew-sh.Cheng
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
