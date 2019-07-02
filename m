Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFB95D7BE
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 23:06:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGBg92Xghy90+N7VitRxjflxTEuCm8OcNJBmbOD/T7k=; b=d1UbztWn8x5IN0
	SxYzhc61nW5ZX0DV9W8wl8Kd2r/yR0QVp0d8C/8nAVdaFQSH+Rs/9Fsq1GRyTP1FCZc9vTk3+/fAc
	6vB+dM1nhT4j0/o4KpYqHaXVl4ypSdsPcL1/F1MqSzrupNTKLQqB3wHuWkBvzJWBuREcHhpR7SU55
	DT+w3Qb3Gk01+C96XEgU1e1k6AlF3rdJGMD12ihb8yjoeel4N9jAn51jdQG52MAfZEQVV8f/7YGhe
	Jrx3fmUh09T8mFO/DVroS/yGIMI2YM+2GZlJPxshctle/wQkX71PXBgGbBsGNbFYhcg+LBqequ2mh
	t62PJWjTRyiZQlEMe6aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiPyc-0002Qf-H2; Tue, 02 Jul 2019 21:06:10 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiPyZ-0002QC-6t
 for linux-mediatek@lists.infradead.org; Tue, 02 Jul 2019 21:06:08 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id C0FD613EABC39;
 Tue,  2 Jul 2019 14:06:03 -0700 (PDT)
Date: Tue, 02 Jul 2019 14:06:03 -0700 (PDT)
Message-Id: <20190702.140603.579018215880523684.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH] net: ethernet: mediatek: Allow non TRGMII mode with
 MT7621 DDR2 devices
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190629122451.19578-1-opensource@vdorst.com>
References: <20190629122451.19578-1-opensource@vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 02 Jul 2019 14:06:04 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_140607_254760_0BC70FCC 
X-CRM114-Status: UNSURE (   4.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 linux-mips@vger.kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Sat, 29 Jun 2019 14:24:51 +0200

> No reason to error out on a MT7621 device with DDR2 memory when non
> TRGMII mode is selected.
> Only MT7621 DDR2 clock setup is not supported for TRGMII mode.
> But non TRGMII mode doesn't need any special clock setup.
> =

> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>

Applied to net-next, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
