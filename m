Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602FA1A524
	for <lists+linux-mediatek@lfdr.de>; Sat, 11 May 2019 00:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niOryUZudS1p3LeqzE3uT0lRTP2n6GmfVaqqdFmRxYQ=; b=CpTyxrv/gwMRiP
	ffJrGSk18MVzhSmFZBu81MVOLCVXsnSqs6X9rxfZDBEoETIiCWhwzBLd2Mzde1EKHvXGFuz2fBXaq
	Yh7rG5c5jiFBcAXZCtJGIIsRRLgx34ejGiRFHt3My1SH4S1uY/Bgf4uJH5MHexUILze6+0LQorIBD
	C65bGqXIvKQDlPPpqwIvRWgtyR0JyLueWUmOZvSUe1CQzaaZognSUpC4Ou2gh9dKo50jEaBFvRW/S
	Don4mxAUkbIuwDxtFCtHmGnz6myuFYpr61YE2/mBykpPQjqytHfpPAoYHGjmQ+NcAlvqArMLJ5vpP
	d+IfZ9kFgBC//RgEJd/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDnO-00085R-2d; Fri, 10 May 2019 22:15:14 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDnD-0006kJ-AB; Fri, 10 May 2019 22:15:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d8])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 1963A133E9747;
 Fri, 10 May 2019 15:15:02 -0700 (PDT)
Date: Fri, 10 May 2019 15:15:01 -0700 (PDT)
Message-Id: <20190510.151501.1636787564971451909.davem@davemloft.net>
To: ynezz@true.cz
Subject: Re: [PATCH net 0/5] of_get_mac_address fixes
From: David Miller <davem@davemloft.net>
In-Reply-To: <1557480918-9627-1-git-send-email-ynezz@true.cz>
References: <1557480918-9627-1-git-send-email-ynezz@true.cz>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 10 May 2019 15:15:02 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_151503_358245_879F5CA4 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
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
Cc: robh@kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Petr =A6tetiar <ynezz@true.cz>
Date: Fri, 10 May 2019 11:35:13 +0200

> this patch series is hopefuly the last series of the fixes which are rela=
ted
> to the introduction of NVMEM support into of_get_mac_address.
> =

> First patch is removing `nvmem-mac-address` property which was wrong idea=
 as
> I've allocated the property with devm_kzalloc and then added it to DT, so=
 then
> 2 entities would be refcounting the allocation.  So if the driver unbinds=
, the
> buffer is freed, but DT code would be still referencing that memory.
> =

> Second patch fixes some unwanted references to the Linux API in the DT
> bindings documentation.
> =

> Patches 3-5 should hopefully make compilers and thus kbuild test robot ha=
ppy.

Series applied, thanks.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
