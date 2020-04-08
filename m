Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4AD71A1990
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Apr 2020 03:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZvUlyKBtKQUMoPGP3uEWzwb8X+tz82tpxCqYB7LHsYM=; b=HtWyofd5XmQjPK
	U4tJKPaFRLHJn1N0Rjqkb33sZDK9/fORz7eswvlcDxC7ztVHT4GRVT1svUT41LbOcwsU48exKibL5
	DXdyW/zIziYa2BoKTcbVnzFBUVCrq8L/LEHW1Twrn8YvTqNvEHbW1Lwwelp2g60aNPy0JPvRVBMRZ
	oGoB+/5YfW2BwwJTcMZOWz3YDhLHDsyusZjcez7EPhd8HcTiTX6lV5aaTeHcSWDiNyAI5HjU8OOOQ
	AEqBAd4ROdD84Qd/UzV+WVEoJtOVqx8nbEtm/4Dob5ry+PFvkP7A6ILUg37qJjj95b3bZ5AcA6osw
	mODN6FwsZCsA3JK14fsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLzXA-00075r-9J; Wed, 08 Apr 2020 01:29:40 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLzX7-00074a-JJ
 for linux-mediatek@lists.infradead.org; Wed, 08 Apr 2020 01:29:38 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id CC4AA1210A3E5;
 Tue,  7 Apr 2020 18:29:36 -0700 (PDT)
Date: Tue, 07 Apr 2020 18:29:36 -0700 (PDT)
Message-Id: <20200407.182936.1103575868210940131.davem@davemloft.net>
To: sean.wang@mediatek.com
Subject: Re: [PATCH v2 net 2/2] net: ethernet: mediatek: move mt7623
 settings out off the mt7530
From: David Miller <davem@davemloft.net>
In-Reply-To: <1586122974-22125-2-git-send-email-sean.wang@mediatek.com>
References: <1586122974-22125-1-git-send-email-sean.wang@mediatek.com>
 <1586122974-22125-2-git-send-email-sean.wang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 Apr 2020 18:29:37 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_182937_643849_4A56D696 
X-CRM114-Status: UNSURE (   3.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: andrew@lunn.ch, Landen.Chao@mediatek.com, f.fainelli@gmail.com,
 steven.liu@mediatek.com, vivien.didelot@savoirfairelinux.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org, Mark-MC.Lee@mediatek.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: <sean.wang@mediatek.com>
Date: Mon, 6 Apr 2020 05:42:54 +0800

> From: Ren=E9 van Dorst <opensource@vdorst.com>
> =

> Moving mt7623 logic out off mt7530, is required to make hardware setting
> consistent after we introduce phylink to mtk driver.
> =

> Fixes: b8fc9f30821e ("net: ethernet: mediatek: Add basic PHYLINK support")
> Reviewed-by: Sean Wang <sean.wang@mediatek.com>
> Tested-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Ren=E9 van Dorst <opensource@vdorst.com>
> ---
> v1 -> v2: split out logic changing mtk_gmac0_rgmii_adjust that should be
> 	  refined further and actualy belonged to separate patch.

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
