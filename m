Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F6BB7318
	for <lists+linux-mediatek@lfdr.de>; Thu, 19 Sep 2019 08:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83HAeSgMmZFBZFhwi6wHcv6/lKggJAojVcQQHkdoIQk=; b=P3IRf0euT+ANam
	yQG9WsUcjSIHMbf8j7yu9QaEiCa0o41XG22ZCqHZw0cBiUcILaKQf2yr42wBXI+HCJvgKdGc3byBe
	A0irtPgjHX1N8Jix/A7UD1DnYXJFhzk8DnkCUEg+Dblt0Ldzstv5TpBlu4pekiC6ArY3IXNehktUg
	5xQDMq/kKhcNSagWbpwnPMxh13oCUyMTxKbSbPiNWGkO7x2/SuLO1NpzQ1neILso6Y4DBB1M2FF7V
	U3ojTfNJCK4x67d+aRIkTBc5xh/5aN0rAwWAAMMG6GzYytvl4UtNyFXQydEuUtnbCl4+MpztVULIa
	MiDCqiTE5pUOHqFLHvxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iApnh-0000rC-AI; Thu, 19 Sep 2019 06:20:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iApne-0000qX-9a
 for linux-mediatek@lists.infradead.org; Thu, 19 Sep 2019 06:20:19 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iApnJ-0002d9-8T; Thu, 19 Sep 2019 08:19:57 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iApn6-00018G-1u; Thu, 19 Sep 2019 08:19:44 +0200
Date: Thu, 19 Sep 2019 08:19:44 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] of: restore old handling of cells_name=NULL in
 of_*_phandle_with_args()
Message-ID: <20190919061943.ga7jwdn4ednulvgs@pengutronix.de>
References: <20190918063837.8196-1-u.kleine-koenig@pengutronix.de>
 <b00ca30f-2c06-7722-96b2-123d15751cb6@axentia.se>
 <20190918084748.hnjkiq7wc5b35wjh@pengutronix.de>
 <CAL_JsqJuJrOj+D4xkGACC1=zaB5OUkt=SNzCOiOiTVtM9E9z+A@mail.gmail.com>
 <20190918201954.2phyqxqhoj5jwklt@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918201954.2phyqxqhoj5jwklt@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_232018_339876_FDC81279 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Frank Rowand <frowand.list@gmail.com>, Peter Rosin <peda@axentia.se>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 10:19:54PM +0200, Uwe Kleine-K=F6nig wrote:
> On Wed, Sep 18, 2019 at 03:09:06PM -0500, Rob Herring wrote:
> > Can I get a proper patch please.
> =

> I don't understand what is wrong with my patch. Can you please expand
> what you are missing? I just tried to git-am it and the result looks
> fine.

I see that the commit this patch is fixing isn't in Linus' tree yet. Do
you want instead of this commit fixing the previous one a single good
patch that replaces e42ee61017f5 ("of: Let of_for_each_phandle fallback
to non-negative cell_count")?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
