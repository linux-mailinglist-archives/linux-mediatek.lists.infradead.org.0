Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1B716B3A
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 21:23:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CiDD0PIyG/1rLoiEyzdfoSPGiUdN3QPfHA2L5GHVAzQ=; b=PPxb/YvS6DB8UN
	bIFR1qhiuEb1dk5/8sCrin1EpOBZL7Ocw9B7U2ZWceGEROEpRJjDuPrmX7Q/1srIMBzw9vmloODH6
	Fcaf7axt8+gTn+7xuUy+nupYqZYZvzYpn8AKmSo8FKCMchDCo0awnootzPgkM8QCLnkEKz+NCC7YG
	pEenAYH46T9OGCpaTicE3z5sRCvVdWJXUsPPHG/kh40dGRSZt4X+LTr+EFrS2kZCDOcJoxqYQMiPz
	5rlX1DA0pSORsjgpAM9/BMI/ci4nNPQhEz0pcPP0A6tQqY30Qsh2G3w2Pdp3iKemetuJVe1KnlA1k
	PGPnS6IuNToROknoYgYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5gT-000886-RG; Tue, 07 May 2019 19:23:25 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5gK-00080U-1I; Tue, 07 May 2019 19:23:17 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 3092614B7666B;
 Tue,  7 May 2019 12:23:07 -0700 (PDT)
Date: Tue, 07 May 2019 12:23:06 -0700 (PDT)
Message-Id: <20190507.122306.163240491107984253.davem@davemloft.net>
To: ynezz@true.cz
Subject: Re: [PATCH net-next v2 0/4] of_get_mac_address ERR_PTR fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <1557177887-30446-1-git-send-email-ynezz@true.cz>
References: <1557177887-30446-1-git-send-email-ynezz@true.cz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 07 May 2019 12:23:07 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_122316_084405_E971B576 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 maxime.ripard@bootlin.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 gregkh@linuxfoundation.org, matthias.bgg@gmail.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Petr =A6tetiar <ynezz@true.cz>
Date: Mon,  6 May 2019 23:24:43 +0200

> this patch series is an attempt to fix the mess, I've somehow managed to
> introduce.
> =

> First patch in this series is defacto v5 of the previous 05/10 patch in t=
he
> series, but since the v4 of this 05/10 patch wasn't picked up by the
> patchwork for some unknown reason, this patch wasn't applied with the oth=
er
> 9 patches in the series, so I'm resending it as a separate patch of this
> fixup series again.
> =

> Second patch is a result of this rebase against net-next tree, where I was
> checking again all current users of of_get_mac_address and found out, that
> there's new one in DSA, so I've converted this user to the new ERR_PTR
> encoded error value as well.
> =

> Third patch which was sent as v5 wasn't considered for merge, but I still
> think, that we need to check for possible NULL value, thus current IS_ERR
> check isn't sufficient and we need to use IS_ERR_OR_NULL instead.
> =

> Fourth patch fixes warning reported by kbuild test robot.

Series applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
